player = Game.GetPlayer()
ssc = Game.GetScriptableSystemsContainer()
ts = Game.GetTransactionSystem()
ss = Game.GetStatsSystem()
es = ssc:Get(CName.new('EquipmentSystem'))

espd = es:GetPlayerData(player)
espd['GetItemInEquipSlot2'] = espd['GetItemInEquipSlot;gamedataEquipmentAreaInt32']
playerPLValue = ss:GetStatValue(player:GetEntityID(), 'PowerLevel')

local slots = {
	Face = 1,
	Feet = 1,
	Head = 1,
	InnerChest = 1,
	Legs = 1,
	OuterChest = 1,
	Outfit =1,
	Weapon = 3
}

for k,v in pairs(slots) do
	for i=1,v do
		itemid = espd:GetItemInEquipSlot2(k, i - 1)
		if itemid.tdbid.hash ~= 0 then 
			itemdata = ts:GetItemData(player, itemid)
			statObj = itemdata:GetStatsObjectID()

			-- The item level is lower than our multiplied power level, rescale it
			local itemLevel = ss:GetStatValue(statObj, 'ItemLevel')
			local newItemLevel = itemLevel
			if itemLevel < playerPLValue * 10 then
				newItemLevel = playerPLValue * 10

				ss:RemoveAllModifiers(statObj, 'ItemLevel', true)
				levelMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('ItemLevel', 'Additive', newItemLevel)
				ss:AddSavedModifier(statObj, levelMod)
			end

			-- Only change quality, even if the item is at legendary
			local itemQuality = ss:GetStatValue(statObj, 'Quality')
			local newItemQuality = itemQuality
			if itemQuality <= 4 then
				newItemQuality = 4
				ss:RemoveAllModifiers(statObj, 'Quality', true)
				local qualityMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('Quality', 'Additive', newItemQuality)
				ss:AddSavedModifier(statObj, qualityMod)
			end
			
			-- This stat should not really affect stats, this is effectively "Required Level"
			local powerLevel = ss:GetStatValue(statObj, 'PowerLevel')
			local newPowerLevel = powerLevel
			if powerLevel < playerPLValue - 1 then
				newPowerLevel = playerPLValue - 1

				ss:RemoveAllModifiers(statObj, 'PowerLevel', true)
				local powerMod = Game['gameRPGManager::CreateStatModifier;gamedataStatTypegameStatModifierTypeFloat']('PowerLevel', 'Additive', newPowerLevel)
				ss:AddSavedModifier(statObj, powerMod)
			end

			--Game['gameRPGManager::ForceItemQuality;GameObjectgameItemDataCName'](player, itemdata, CName.new('Legendary'))

			print('Upgrading item in ' .. k .. ' slot ' .. (i - 1) .. ' from Quality ' .. itemQuality .. '->' .. newItemQuality .. ' ItemLevel ' .. itemLevel .. '->' .. newItemLevel .. ' PowerLevel ' .. powerLevel .. '->' .. newPowerLevel)
		end
	end
end
