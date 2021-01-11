﻿local txsys = Game.GetTransactionSystem();
local player = Game.GetPlayer();
local gameItemID = GetSingleton("gameItemID")
function fromTDBID(tdbid)
  return gameItemID:FromTDBID(tdbid)
end
local recipeIds =
{
  TweakDBID.new('Items.BaseHandgunRecipe'),
  TweakDBID.new('Items.BaseMeleeWeaponRecipe'),
  TweakDBID.new('Items.BaseRevolverRecipe'),
  TweakDBID.new('Items.BaseRifleRecipe'),
  TweakDBID.new('Items.BaseShotgunRecipe'),
  TweakDBID.new('Items.BaseSMGRecipe'),
  TweakDBID.new('Items.BaseSniperRecipe'),
  TweakDBID.new('Items.CommonAchillesRecipe'),
  TweakDBID.new('Items.CommonAjaxRecipe'),
  TweakDBID.new('Items.CommonAshuraRecipe'),
  TweakDBID.new('Items.CommonBatRecipe'),
  TweakDBID.new('Items.CommonBuryaRecipe'),
  TweakDBID.new('Items.CommonCarnageRecipe'),
  TweakDBID.new('Items.CommonChaoRecipe'),
  TweakDBID.new('Items.CommonCopperheadRecipe'),
  TweakDBID.new('Items.CommonCrusherRecipe'),
  TweakDBID.new('Items.CommonDianRecipe'),
  TweakDBID.new('Items.CommonGradRecipe'),
  TweakDBID.new('Items.CommonIglaRecipe'),
  TweakDBID.new('Items.CommonKenshinRecipe'),
  TweakDBID.new('Items.CommonKnifeRecipe'),
  TweakDBID.new('Items.CommonLexingtonRecipe'),
  TweakDBID.new('Items.CommonLibertyRecipe'),
  TweakDBID.new('Items.CommonMasamuneRecipe'),
  TweakDBID.new('Items.CommonNekomataRecipe'),
  TweakDBID.new('Items.CommonNovaRecipe'),
  TweakDBID.new('Items.CommonNueRecipe'),
  TweakDBID.new('Items.CommonOmahaRecipe'),
  TweakDBID.new('Items.CommonOvertureRecipe'),
  TweakDBID.new('Items.CommonPalicaRecipe'),
  TweakDBID.new('Items.CommonPulsarRecipe'),
  TweakDBID.new('Items.CommonQuasarRecipe'),
  TweakDBID.new('Items.CommonSaratogaRecipe'),
  TweakDBID.new('Items.CommonSataraRecipe'),
  TweakDBID.new('Items.CommonShingenRecipe'),
  TweakDBID.new('Items.CommonSidewinderRecipe'),
  TweakDBID.new('Items.CommonSor22Recipe'),
  TweakDBID.new('Items.CommonTacticianRecipe'),
  TweakDBID.new('Items.CommonTesteraRecipe'),
  TweakDBID.new('Items.CommonUnityRecipe'),
  TweakDBID.new('Items.CommonYukimuraRecipe'),
  TweakDBID.new('Items.CommonZhuoRecipe'),
  TweakDBID.new('Items.EpicAchillesRecipe'),
  TweakDBID.new('Items.EpicAjaxRecipe'),
  TweakDBID.new('Items.EpicAshuraRecipe'),
  TweakDBID.new('Items.EpicBatRecipe'),
  TweakDBID.new('Items.EpicBuryaRecipe'),
  TweakDBID.new('Items.EpicCarnageRecipe'),
  TweakDBID.new('Items.EpicChaoRecipe'),
  TweakDBID.new('Items.EpicCopperheadRecipe'),
  TweakDBID.new('Items.EpicCrusherRecipe'),
  TweakDBID.new('Items.EpicDianRecipe'),
  TweakDBID.new('Items.EpicGradRecipe'),
  TweakDBID.new('Items.EpicIglaRecipe'),
  TweakDBID.new('Items.EpicKenshinRecipe'),
  TweakDBID.new('Items.EpicKnifeRecipe'),
  TweakDBID.new('Items.EpicLexingtonRecipe'),
  TweakDBID.new('Items.EpicLibertyRecipe'),
  TweakDBID.new('Items.EpicMasamuneRecipe'),
  TweakDBID.new('Items.EpicNekomataRecipe'),
  TweakDBID.new('Items.EpicNovaRecipe'),
  TweakDBID.new('Items.EpicNueRecipe'),
  TweakDBID.new('Items.EpicOmahaRecipe'),
  TweakDBID.new('Items.EpicOvertureRecipe'),
  TweakDBID.new('Items.EpicPalicaRecipe'),
  TweakDBID.new('Items.EpicPulsarRecipe'),
  TweakDBID.new('Items.EpicQuasarRecipe'),
  TweakDBID.new('Items.EpicSaratogaRecipe'),
  TweakDBID.new('Items.EpicSataraRecipe'),
  TweakDBID.new('Items.EpicShingenRecipe'),
  TweakDBID.new('Items.EpicSidewinderRecipe'),
  TweakDBID.new('Items.EpicSor22Recipe'),
  TweakDBID.new('Items.EpicTacticianRecipe'),
  TweakDBID.new('Items.EpicTesteraRecipe'),
  TweakDBID.new('Items.EpicUnityRecipe'),
  TweakDBID.new('Items.EpicYukimuraRecipe'),
  TweakDBID.new('Items.EpicZhuoRecipe'),
  TweakDBID.new('Items.LegendaryAchillesRecipe'),
  TweakDBID.new('Items.LegendaryAjaxRecipe'),
  TweakDBID.new('Items.LegendaryAshuraRecipe'),
  TweakDBID.new('Items.LegendaryBatRecipe'),
  TweakDBID.new('Items.LegendaryBuryaRecipe'),
  TweakDBID.new('Items.LegendaryCarnageRecipe'),
  TweakDBID.new('Items.LegendaryChaoRecipe'),
  TweakDBID.new('Items.LegendaryCopperheadRecipe'),
  TweakDBID.new('Items.LegendaryCrusherRecipe'),
  TweakDBID.new('Items.LegendaryDianRecipe'),
  TweakDBID.new('Items.LegendaryGradRecipe'),
  TweakDBID.new('Items.LegendaryIglaRecipe'),
  TweakDBID.new('Items.LegendaryKenshinRecipe'),
  TweakDBID.new('Items.LegendaryKnifeRecipe'),
  TweakDBID.new('Items.LegendaryLexingtonRecipe'),
  TweakDBID.new('Items.LegendaryLibertyRecipe'),
  TweakDBID.new('Items.LegendaryMasamuneRecipe'),
  TweakDBID.new('Items.LegendaryNekomataRecipe'),
  TweakDBID.new('Items.LegendaryNovaRecipe'),
  TweakDBID.new('Items.LegendaryNueRecipe'),
  TweakDBID.new('Items.LegendaryOmahaRecipe'),
  TweakDBID.new('Items.LegendaryOvertureRecipe'),
  TweakDBID.new('Items.LegendaryPalicaRecipe'),
  TweakDBID.new('Items.LegendaryPulsarRecipe'),
  TweakDBID.new('Items.LegendaryQuasarRecipe'),
  TweakDBID.new('Items.LegendarySaratogaRecipe'),
  TweakDBID.new('Items.LegendarySataraRecipe'),
  TweakDBID.new('Items.LegendaryShingenRecipe'),
  TweakDBID.new('Items.LegendarySidewinderRecipe'),
  TweakDBID.new('Items.LegendarySor22Recipe'),
  TweakDBID.new('Items.LegendaryTacticianRecipe'),
  TweakDBID.new('Items.LegendaryTesteraRecipe'),
  TweakDBID.new('Items.LegendaryUnityRecipe'),
  TweakDBID.new('Items.LegendaryYukimuraRecipe'),
  TweakDBID.new('Items.LegendaryZhuoRecipe'),
  TweakDBID.new('Items.RareAchillesRecipe'),
  TweakDBID.new('Items.RareAjaxRecipe'),
  TweakDBID.new('Items.RareAshuraRecipe'),
  TweakDBID.new('Items.RareBatRecipe'),
  TweakDBID.new('Items.RareBuryaRecipe'),
  TweakDBID.new('Items.RareCarnageRecipe'),
  TweakDBID.new('Items.RareChaoRecipe'),
  TweakDBID.new('Items.RareCopperheadRecipe'),
  TweakDBID.new('Items.RareCrusherRecipe'),
  TweakDBID.new('Items.RareDianRecipe'),
  TweakDBID.new('Items.RareGradRecipe'),
  TweakDBID.new('Items.RareIglaRecipe'),
  TweakDBID.new('Items.RareKenshinRecipe'),
  TweakDBID.new('Items.RareKnifeRecipe'),
  TweakDBID.new('Items.RareLexingtonRecipe'),
  TweakDBID.new('Items.RareLibertyRecipe'),
  TweakDBID.new('Items.RareMasamuneRecipe'),
  TweakDBID.new('Items.RareNekomataRecipe'),
  TweakDBID.new('Items.RareNovaRecipe'),
  TweakDBID.new('Items.RareNueRecipe'),
  TweakDBID.new('Items.RareOmahaRecipe'),
  TweakDBID.new('Items.RareOvertureRecipe'),
  TweakDBID.new('Items.RarePalicaRecipe'),
  TweakDBID.new('Items.RarePulsarRecipe'),
  TweakDBID.new('Items.RareQuasarRecipe'),
  TweakDBID.new('Items.RareSaratogaRecipe'),
  TweakDBID.new('Items.RareSataraRecipe'),
  TweakDBID.new('Items.RareShingenRecipe'),
  TweakDBID.new('Items.RareSidewinderRecipe'),
  TweakDBID.new('Items.RareSor22Recipe'),
  TweakDBID.new('Items.RareTacticianRecipe'),
  TweakDBID.new('Items.RareTesteraRecipe'),
  TweakDBID.new('Items.RareUnityRecipe'),
  TweakDBID.new('Items.RareYukimuraRecipe'),
  TweakDBID.new('Items.RareZhuoRecipe'),
  TweakDBID.new('Items.Recipe_AnimalsBerserkFragment1'),
  TweakDBID.new('Items.Recipe_ArasakaSandevistanFragment1'),
  TweakDBID.new('Items.Recipe_ArmsCyberwareSharedFragment1'),
  TweakDBID.new('Items.Recipe_ArmsCyberwareSharedFragment2'),
  TweakDBID.new('Items.Recipe_ArmsCyberwareSharedFragment3'),
  TweakDBID.new('Items.Recipe_ArmsCyberwareSharedFragment4'),
  TweakDBID.new('Items.Recipe_BlindProgram'),
  TweakDBID.new('Items.Recipe_ChemicalDamageCable'),
  TweakDBID.new('Items.Recipe_ChemicalDamageEdge'),
  TweakDBID.new('Items.Recipe_ChemicalDamageKnuckles'),
  TweakDBID.new('Items.Recipe_ChemicalDamageRound'),
  TweakDBID.new('Items.Recipe_CommsCallInProgram'),
  TweakDBID.new('Items.Recipe_CommsNoiseProgram'),
  TweakDBID.new('Items.Recipe_DisableCyberwareProgram'),
  TweakDBID.new('Items.Recipe_ElectricDamageCable'),
  TweakDBID.new('Items.Recipe_ElectricDamageEdge'),
  TweakDBID.new('Items.Recipe_ElectricDamageKnuckles'),
  TweakDBID.new('Items.Recipe_ElectricDamageRound'),
  TweakDBID.new('Items.Recipe_EMPOverloadProgram'),
  TweakDBID.new('Items.Recipe_ExplosiveDamageRound'),
  TweakDBID.new('Items.Recipe_FastRotor'),
  TweakDBID.new('Items.Recipe_GrenadeExplodeLvl3Program'),
  TweakDBID.new('Items.Recipe_HighChargedBattery'),
  TweakDBID.new('Items.Recipe_HighChargedWiresBattery'),
  TweakDBID.new('Items.Recipe_KiroshiOpticsFragment1'),
  TweakDBID.new('Items.Recipe_KiroshiOpticsFragment2'),
  TweakDBID.new('Items.Recipe_KiroshiOpticsFragment3'),
  TweakDBID.new('Items.Recipe_KiroshiOpticsFragment4'),
  TweakDBID.new('Items.Recipe_KiroshiOpticsFragment5'),
  TweakDBID.new('Items.Recipe_LocomotionMalfunctionProgram'),
  TweakDBID.new('Items.Recipe_LowChargedBattery'),
  TweakDBID.new('Items.Recipe_LowChargedWiresBattery'),
  TweakDBID.new('Items.Recipe_MadnessLvl3Program'),
  TweakDBID.new('Items.Recipe_MediumChargedBattery'),
  TweakDBID.new('Items.Recipe_MediumChargedWiresBattery'),
  TweakDBID.new('Items.Recipe_MetalPlating'),
  TweakDBID.new('Items.Recipe_NeoplasticPlating'),
  TweakDBID.new('Items.Recipe_OverheatProgram'),
  TweakDBID.new('Items.Recipe_PhysicalDamageCable'),
  TweakDBID.new('Items.Recipe_PhysicalDamageEdge'),
  TweakDBID.new('Items.Recipe_PhysicalDamageKnuckles'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer01'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer02'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer03'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer04'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer05'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer06'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer07'),
  TweakDBID.new('Items.Recipe_PowerfulFabricEnhancer08'),
  TweakDBID.new('Items.Recipe_PowerWeaponMod01'),
  TweakDBID.new('Items.Recipe_PowerWeaponMod02'),
  TweakDBID.new('Items.Recipe_PowerWeaponMod03'),
  TweakDBID.new('Items.Recipe_PowerWeaponMod04'),
  TweakDBID.new('Items.Recipe_PowerWeaponMod05'),
  TweakDBID.new('Items.Recipe_PowerWeaponMod06'),
  TweakDBID.new('Items.Recipe_Preset_Ajax_Moron'),
  TweakDBID.new('Items.Recipe_Preset_Burya_Comrade'),
  TweakDBID.new('Items.Recipe_Preset_Copperhead_Genesis'),
  TweakDBID.new('Items.Recipe_Preset_Dian_Yinglong'),
  TweakDBID.new('Items.Recipe_Preset_Igla_Sovereign'),
  TweakDBID.new('Items.Recipe_Preset_Nekomata_Breakthrough'),
  TweakDBID.new('Items.Recipe_Preset_Pulsar_Buzzsaw'),
  TweakDBID.new('Items.Recipe_Preset_Tactician_Headsman'),
  TweakDBID.new('Items.Recipe_Preset_Zhuo_Eight_Star'),
  TweakDBID.new('Items.Recipe_SandevistanFragment1'),
  TweakDBID.new('Items.Recipe_SandevistanFragment2'),
  TweakDBID.new('Items.Recipe_SandevistanFragment3'),
  TweakDBID.new('Items.Recipe_SandevistanFragment4'),
  TweakDBID.new('Items.Recipe_SimpleFabricEnhancer01'),
  TweakDBID.new('Items.Recipe_SimpleFabricEnhancer02'),
  TweakDBID.new('Items.Recipe_SimpleFabricEnhancer03'),
  TweakDBID.new('Items.Recipe_SimpleFabricEnhancer04'),
  TweakDBID.new('Items.Recipe_SimpleFabricEnhancer05'),
  TweakDBID.new('Items.Recipe_SimpleWeaponMod01'),
  TweakDBID.new('Items.Recipe_SimpleWeaponMod02'),
  TweakDBID.new('Items.Recipe_SimpleWeaponMod03'),
  TweakDBID.new('Items.Recipe_SimpleWeaponMod04'),
  TweakDBID.new('Items.Recipe_SlowRotor'),
  TweakDBID.new('Items.Recipe_SuicideLvl3Program'),
  TweakDBID.new('Items.Recipe_SystemCollapseLvl3Program'),
  TweakDBID.new('Items.Recipe_SystemCollapseLvl4Program'),
  TweakDBID.new('Items.Recipe_TechWeaponMod01'),
  TweakDBID.new('Items.Recipe_TechWeaponMod02'),
  TweakDBID.new('Items.Recipe_TechWeaponMod04'),
  TweakDBID.new('Items.Recipe_ThermalDamageCable'),
  TweakDBID.new('Items.Recipe_ThermalDamageEdge'),
  TweakDBID.new('Items.Recipe_ThermalDamageKnuckles'),
  TweakDBID.new('Items.Recipe_ThermalDamageRound'),
  TweakDBID.new('Items.Recipe_TitaniumPlating'),
  TweakDBID.new('Items.Recipe_TygerClawsSandevistanFragment1'),
  TweakDBID.new('Items.Recipe_ValentinosSandevistanFragment1'),
  TweakDBID.new('Items.Recipe_WeaponMalfunctionProgram'),
  TweakDBID.new('Items.RecipeBonesMcCoy70V0'),
  TweakDBID.new('Items.RecipeBonesMcCoy70V1'),
  TweakDBID.new('Items.RecipeBonesMcCoy70V2'),
  TweakDBID.new('Items.RecipeConsumableBase'),
  TweakDBID.new('Items.RecipeConsumableCommonBase'),
  TweakDBID.new('Items.RecipeConsumableEpicBase'),
  TweakDBID.new('Items.RecipeConsumableRareBase'),
  TweakDBID.new('Items.RecipeConsumableUncommonBase'),
  TweakDBID.new('Items.RecipeFirstAidWhiffV0'),
  TweakDBID.new('Items.RecipeFirstAidWhiffV1'),
  TweakDBID.new('Items.RecipeFirstAidWhiffV2'),
  TweakDBID.new('Items.RecipeGrenadeBase'),
  TweakDBID.new('Items.RecipeGrenadeFlashHoming'),
  TweakDBID.new('Items.RecipeGrenadeFlashRegular'),
  TweakDBID.new('Items.RecipeGrenadeFragHoming'),
  TweakDBID.new('Items.RecipeGrenadeFragRegular'),
  TweakDBID.new('Items.RecipeGrenadeFragSticky'),
  TweakDBID.new('Items.RecipePowerfulFabricEnhancerBase'),
  TweakDBID.new('Items.RecipeSimpleFabricEnhancerBase'),
  TweakDBID.new('Items.RecipeSimpleWeaponModBase'),
  TweakDBID.new('Items.UncommonAchillesRecipe'),
  TweakDBID.new('Items.UncommonAjaxRecipe'),
  TweakDBID.new('Items.UncommonAshuraRecipe'),
  TweakDBID.new('Items.UncommonBatonRecipe'),
  TweakDBID.new('Items.UncommonBatRecipe'),
  TweakDBID.new('Items.UncommonBuryaRecipe'),
  TweakDBID.new('Items.UncommonCarnageRecipe'),
  TweakDBID.new('Items.UncommonChaoRecipe'),
  TweakDBID.new('Items.UncommonCopperheadRecipe'),
  TweakDBID.new('Items.UncommonCrusherRecipe'),
  TweakDBID.new('Items.UncommonDianRecipe'),
  TweakDBID.new('Items.UncommonGradRecipe'),
  TweakDBID.new('Items.UncommonIglaRecipe'),
  TweakDBID.new('Items.UncommonKenshinRecipe'),
  TweakDBID.new('Items.UncommonKnifeRecipe'),
  TweakDBID.new('Items.UncommonLexingtonRecipe'),
  TweakDBID.new('Items.UncommonLibertyRecipe'),
  TweakDBID.new('Items.UncommonMasamuneRecipe'),
  TweakDBID.new('Items.UncommonNekomataRecipe'),
  TweakDBID.new('Items.UncommonNovaRecipe'),
  TweakDBID.new('Items.UncommonNueRecipe'),
  TweakDBID.new('Items.UncommonOmahaRecipe'),
  TweakDBID.new('Items.UncommonOvertureRecipe'),
  TweakDBID.new('Items.UncommonPalicaRecipe'),
  TweakDBID.new('Items.UncommonPulsarRecipe'),
  TweakDBID.new('Items.UncommonQuasarRecipe'),
  TweakDBID.new('Items.UncommonSaratogaRecipe'),
  TweakDBID.new('Items.UncommonSataraRecipe'),
  TweakDBID.new('Items.UncommonShingenRecipe'),
  TweakDBID.new('Items.UncommonSidewinderRecipe'),
  TweakDBID.new('Items.UncommonSor22Recipe'),
  TweakDBID.new('Items.UncommonTacticianRecipe'),
  TweakDBID.new('Items.UncommonTesteraRecipe'),
  TweakDBID.new('Items.UncommonUnityRecipe'),
  TweakDBID.new('Items.UncommonYukimuraRecipe'),
  TweakDBID.new('Items.UncommonZhuoRecipe'),
  TweakDBID.new(0x016A53A9, 34),
  TweakDBID.new(0x028366E7, 31),
  TweakDBID.new(0x02BB2BFC, 28),
  TweakDBID.new(0x0360E426, 28),
  TweakDBID.new(0x04BF4475, 26),
  TweakDBID.new(0x0582821C, 31),
  TweakDBID.new(0x0A4E99CF, 38),
  TweakDBID.new(0x0A5AFD43, 37),
  TweakDBID.new(0x0ACCEA78, 36),
  TweakDBID.new(0x0B3A097E, 39),
  TweakDBID.new(0x0C3E2D4D, 25),
  TweakDBID.new(0x0D739449, 27),
  TweakDBID.new(0x0DBB9351, 22),
  TweakDBID.new(0x0E8399DC, 48),
  TweakDBID.new(0x0E92E268, 48),
  TweakDBID.new(0x0EA0C2B8, 44),
  TweakDBID.new(0x1148BDD0, 26),
  TweakDBID.new(0x117F3854, 43),
  TweakDBID.new(0x11D11897, 24),
  TweakDBID.new(0x12C378E0, 34),
  TweakDBID.new(0x130ECC8D, 31),
  TweakDBID.new(0x1321881D, 29),
  TweakDBID.new(0x150BCCA0, 23),
  TweakDBID.new(0x1708D4F7, 26),
  TweakDBID.new(0x170B3406, 33),
  TweakDBID.new(0x1735D668, 35),
  TweakDBID.new(0x19D776FC, 36),
  TweakDBID.new(0x19E48104, 29),
  TweakDBID.new(0x1B2A263C, 31),
  TweakDBID.new(0x1CAC02D1, 25),
  TweakDBID.new(0x1CD9A5AE, 43),
  TweakDBID.new(0x1DF0DF71, 35),
  TweakDBID.new(0x1EB5263D, 41),
  TweakDBID.new(0x1ED143D6, 34),
  TweakDBID.new(0x1F8D1011, 28),
  TweakDBID.new(0x1FDEDC7C, 39),
  TweakDBID.new(0x207DA82C, 26),
  TweakDBID.new(0x22366CE1, 38),
  TweakDBID.new(0x22773B21, 31),
  TweakDBID.new(0x22CF0E78, 22),
  TweakDBID.new(0x24174AD6, 24),
  TweakDBID.new(0x26EDA21C, 21),
  TweakDBID.new(0x282C1B2F, 27),
  TweakDBID.new(0x2A48243C, 45),
  TweakDBID.new(0x2D123DA5, 30),
  TweakDBID.new(0x2EE36532, 28),
  TweakDBID.new(0x2F61F7EA, 28),
  TweakDBID.new(0x2F9EBF79, 32),
  TweakDBID.new(0x30C50679, 45),
  TweakDBID.new(0x3108E9F6, 48),
  TweakDBID.new(0x3219138A, 28),
  TweakDBID.new(0x32F4FCC7, 28),
  TweakDBID.new(0x33E044C5, 33),
  TweakDBID.new(0x350116B3, 21),
  TweakDBID.new(0x3525F027, 35),
  TweakDBID.new(0x35C6B3D9, 26),
  TweakDBID.new(0x38BE161B, 27),
  TweakDBID.new(0x38CD4355, 22),
  TweakDBID.new(0x38D62E7A, 34),
  TweakDBID.new(0x38FCB42D, 22),
  TweakDBID.new(0x39254DDC, 33),
  TweakDBID.new(0x3A191450, 27),
  TweakDBID.new(0x3A3DF93B, 28),
  TweakDBID.new(0x3CEAE96E, 23),
  TweakDBID.new(0x3D18E865, 43),
  TweakDBID.new(0x3DE25968, 26),
  TweakDBID.new(0x3DF16BD4, 39),
  TweakDBID.new(0x3E56A15E, 33),
  TweakDBID.new(0x3E6C0FEC, 41),
  TweakDBID.new(0x3E804BA7, 29),
  TweakDBID.new(0x3F1E5A05, 26),
  TweakDBID.new(0x3FB1F6C1, 20),
  TweakDBID.new(0x3FCC6DCA, 28),
  TweakDBID.new(0x40246709, 40),
  TweakDBID.new(0x418678D0, 29),
  TweakDBID.new(0x41E80A30, 21),
  TweakDBID.new(0x427ADF1A, 31),
  TweakDBID.new(0x42E7CB0D, 27),
  TweakDBID.new(0x441CBAA3, 42),
  TweakDBID.new(0x44D40FBC, 25),
  TweakDBID.new(0x468A18B7, 25),
  TweakDBID.new(0x46B2C791, 20),
  TweakDBID.new(0x46C63B98, 44),
  TweakDBID.new(0x46D52E14, 36),
  TweakDBID.new(0x47AE4939, 40),
  TweakDBID.new(0x495873AB, 28),
  TweakDBID.new(0x49645995, 24),
  TweakDBID.new(0x4AD0BE06, 29),
  TweakDBID.new(0x4BF3DBDC, 28),
  TweakDBID.new(0x4C366B58, 35),
  TweakDBID.new(0x4C3E858A, 27),
  TweakDBID.new(0x4E23B79D, 32),
  TweakDBID.new(0x4E5AE6DE, 32),
  TweakDBID.new(0x4F13417C, 31),
  TweakDBID.new(0x4F415AD9, 28),
  TweakDBID.new(0x4F589A8E, 27),
  TweakDBID.new(0x4F63BFEA, 20),
  TweakDBID.new(0x4FDED26D, 44),
  TweakDBID.new(0x5116C292, 43),
  TweakDBID.new(0x514F8F08, 21),
  TweakDBID.new(0x51D48230, 37),
  TweakDBID.new(0x5232E378, 43),
  TweakDBID.new(0x52462426, 24),
  TweakDBID.new(0x54675EC9, 32),
  TweakDBID.new(0x54F97ABE, 40),
  TweakDBID.new(0x562D9D8F, 25),
  TweakDBID.new(0x57219FFA, 33),
  TweakDBID.new(0x57D4EE3D, 22),
  TweakDBID.new(0x594E1E29, 45),
  TweakDBID.new(0x5A509EA1, 24),
  TweakDBID.new(0x5BB466FD, 29),
  TweakDBID.new(0x5CDB66DC, 31),
  TweakDBID.new(0x5E0F9FC4, 40),
  TweakDBID.new(0x5ECE6191, 39),
  TweakDBID.new(0x5F22744C, 29),
  TweakDBID.new(0x5F5587C1, 25),
  TweakDBID.new(0x5FC1FFEC, 25),
  TweakDBID.new(0x605E4730, 24),
  TweakDBID.new(0x60A30368, 21),
  TweakDBID.new(0x613C6012, 35),
  TweakDBID.new(0x61B46920, 26),
  TweakDBID.new(0x637D4D2F, 37),
  TweakDBID.new(0x63EAADBA, 29),
  TweakDBID.new(0x64C13324, 24),
  TweakDBID.new(0x655A5B15, 24),
  TweakDBID.new(0x65F99376, 25),
  TweakDBID.new(0x667BBFB3, 41),
  TweakDBID.new(0x67BF69F0, 23),
  TweakDBID.new(0x67C111EF, 25),
  TweakDBID.new(0x68E238E5, 21),
  TweakDBID.new(0x6A5E84A2, 27),
  TweakDBID.new(0x6B2F7FFF, 27),
  TweakDBID.new(0x6B7674FE, 19),
  TweakDBID.new(0x6E7232D5, 26),
  TweakDBID.new(0x6E94F99F, 26),
  TweakDBID.new(0x6EE8FF4E, 34),
  TweakDBID.new(0x7073277C, 24),
  TweakDBID.new(0x70E9FE9E, 40),
  TweakDBID.new(0x72677D4B, 20),
  TweakDBID.new(0x73B80E80, 30),
  TweakDBID.new(0x7454381F, 34),
  TweakDBID.new(0x74B66B46, 30),
  TweakDBID.new(0x750D95BD, 40),
  TweakDBID.new(0x76A910B5, 24),
  TweakDBID.new(0x76E6E2D3, 38),
  TweakDBID.new(0x7721FC42, 40),
  TweakDBID.new(0x772FA2E9, 31),
  TweakDBID.new(0x77DB6A66, 28),
  TweakDBID.new(0x78888255, 28),
  TweakDBID.new(0x796DE377, 34),
  TweakDBID.new(0x7A6751CE, 23),
  TweakDBID.new(0x7AFB30ED, 51),
  TweakDBID.new(0x7B22FAB9, 27),
  TweakDBID.new(0x7BA619D7, 40),
  TweakDBID.new(0x7D9E867A, 26),
  TweakDBID.new(0x7FB26A9B, 35),
  TweakDBID.new(0x8034E584, 23),
  TweakDBID.new(0x80AB2BDD, 22),
  TweakDBID.new(0x81FDEE17, 26),
  TweakDBID.new(0x8260890D, 24),
  TweakDBID.new(0x82E03A04, 47),
  TweakDBID.new(0x82F0E640, 32),
  TweakDBID.new(0x84A49D43, 26),
  TweakDBID.new(0x84EA42EC, 36),
  TweakDBID.new(0x852131BC, 26),
  TweakDBID.new(0x857A6E76, 46),
  TweakDBID.new(0x87F1E840, 25),
  TweakDBID.new(0x8835EF59, 32),
  TweakDBID.new(0x88AE6126, 22),
  TweakDBID.new(0x88E7A883, 28),
  TweakDBID.new(0x8A076B41, 35),
  TweakDBID.new(0x8A591E6F, 22),
  TweakDBID.new(0x8A963764, 43),
  TweakDBID.new(0x8C8077F2, 26),
  TweakDBID.new(0x8C8E6797, 40),
  TweakDBID.new(0x8E7C749F, 26),
  TweakDBID.new(0x9050E612, 28),
  TweakDBID.new(0x907522D8, 33),
  TweakDBID.new(0x90B9D71E, 26),
  TweakDBID.new(0x914E967D, 33),
  TweakDBID.new(0x915A6B2F, 26),
  TweakDBID.new(0x9175C2CB, 39),
  TweakDBID.new(0x923AFA1C, 38),
  TweakDBID.new(0x93047C24, 26),
  TweakDBID.new(0x9479C61C, 25),
  TweakDBID.new(0x94EB3C58, 29),
  TweakDBID.new(0x95E41EB7, 45),
  TweakDBID.new(0x961D1F8F, 37),
  TweakDBID.new(0x96F3D150, 28),
  TweakDBID.new(0x96FA36F4, 32),
  TweakDBID.new(0x97753675, 46),
  TweakDBID.new(0x9786F072, 35),
  TweakDBID.new(0x98D73EA6, 28),
  TweakDBID.new(0x99CBC8AD, 43),
  TweakDBID.new(0x99D21F3D, 22),
  TweakDBID.new(0x99F8CA72, 24),
  TweakDBID.new(0x9B8B9F64, 33),
  TweakDBID.new(0x9CDD6F37, 34),
  TweakDBID.new(0x9DECDDBA, 23),
  TweakDBID.new(0x9ED1952C, 24),
  TweakDBID.new(0x9F2117AE, 45),
  TweakDBID.new(0xA1703CDA, 26),
  TweakDBID.new(0xA1B3F838, 36),
  TweakDBID.new(0xA4B4DF22, 31),
  TweakDBID.new(0xA509363A, 43),
  TweakDBID.new(0xA91A5B6B, 28),
  TweakDBID.new(0xA91D5679, 26),
  TweakDBID.new(0xA9320BC5, 26),
  TweakDBID.new(0xAA4EF5E2, 25),
  TweakDBID.new(0xAA576AE7, 20),
  TweakDBID.new(0xAB0F72EB, 40),
  TweakDBID.new(0xAB7014F4, 25),
  TweakDBID.new(0xAB85BD15, 35),
  TweakDBID.new(0xAD2CE765, 21),
  TweakDBID.new(0xAEC6D561, 32),
  TweakDBID.new(0xAECE600E, 22),
  TweakDBID.new(0xAF5151E9, 40),
  TweakDBID.new(0xB0116277, 26),
  TweakDBID.new(0xB10FE2EF, 24),
  TweakDBID.new(0xB23D4E8F, 26),
  TweakDBID.new(0xB4378C62, 30),
  TweakDBID.new(0xB47AD03D, 31),
  TweakDBID.new(0xB5764627, 19),
  TweakDBID.new(0xB5B2CAD4, 31),
  TweakDBID.new(0xB5BFABFC, 35),
  TweakDBID.new(0xB5C7E3E9, 34),
  TweakDBID.new(0xB5DD6AEF, 26),
  TweakDBID.new(0xB7D5D526, 24),
  TweakDBID.new(0xB7ECDDDF, 31),
  TweakDBID.new(0xB88ADE98, 28),
  TweakDBID.new(0xB901E4CF, 24),
  TweakDBID.new(0xB963ADD3, 20),
  TweakDBID.new(0xB9A2414D, 25),
  TweakDBID.new(0xBB4BE9B5, 41),
  TweakDBID.new(0xBC60065B, 22),
  TweakDBID.new(0xBD0EF2C1, 32),
  TweakDBID.new(0xBEC053CA, 21),
  TweakDBID.new(0xBEC2DFBE, 43),
  TweakDBID.new(0xBEE49F43, 34),
  TweakDBID.new(0xBF02EAF0, 34),
  TweakDBID.new(0xC001DE26, 35),
  TweakDBID.new(0xC0262377, 30),
  TweakDBID.new(0xC0609C83, 20),
  TweakDBID.new(0xC0898103, 23),
  TweakDBID.new(0xC12125BC, 34),
  TweakDBID.new(0xC1E63A1E, 22),
  TweakDBID.new(0xC24695A9, 34),
  TweakDBID.new(0xC249D4F3, 48),
  TweakDBID.new(0xC2E688F3, 27),
  TweakDBID.new(0xC36CFCE9, 19),
  TweakDBID.new(0xC37AF66C, 29),
  TweakDBID.new(0xC3F884B3, 46),
  TweakDBID.new(0xC547EE6E, 27),
  TweakDBID.new(0xC6CCC1A5, 37),
  TweakDBID.new(0xC6DD9463, 44),
  TweakDBID.new(0xC6E18C58, 32),
  TweakDBID.new(0xC823E228, 23),
  TweakDBID.new(0xC890342E, 26),
  TweakDBID.new(0xC9288282, 31),
  TweakDBID.new(0xC9627EDE, 21),
  TweakDBID.new(0xCA484F3D, 33),
  TweakDBID.new(0xCB5AF5A8, 43),
  TweakDBID.new(0xCC2322C1, 44),
  TweakDBID.new(0xCCD40897, 29),
  TweakDBID.new(0xCDC05337, 34),
  TweakDBID.new(0xCDC7DFD6, 38),
  TweakDBID.new(0xCE22785F, 32),
  TweakDBID.new(0xCF17CEFC, 30),
  TweakDBID.new(0xCF1B5E01, 24),
  TweakDBID.new(0xCFBB72CA, 26),
  TweakDBID.new(0xCFD3CADD, 41),
  TweakDBID.new(0xD0ADDD04, 24),
  TweakDBID.new(0xD0D647BA, 26),
  TweakDBID.new(0xD0DE8142, 39),
  TweakDBID.new(0xD10F4DFB, 43),
  TweakDBID.new(0xD12EAF53, 27),
  TweakDBID.new(0xD15ADFEF, 35),
  TweakDBID.new(0xD21F26A3, 41),
  TweakDBID.new(0xD28D9087, 27),
  TweakDBID.new(0xD2C53247, 35),
  TweakDBID.new(0xD3485C4B, 22),
  TweakDBID.new(0xD5FBDA16, 23),
  TweakDBID.new(0xD709E7E9, 28),
  TweakDBID.new(0xD79DD972, 27),
  TweakDBID.new(0xD8DA2FBA, 41),
  TweakDBID.new(0xD8E3BAA6, 40),
  TweakDBID.new(0xD92E3F86, 41),
  TweakDBID.new(0xD93A7800, 18),
  TweakDBID.new(0xD9C5FBE6, 21),
  TweakDBID.new(0xDA0C51A9, 27),
  TweakDBID.new(0xDB9BECED, 21),
  TweakDBID.new(0xDD113951, 32),
  TweakDBID.new(0xDD43EEB9, 43),
  TweakDBID.new(0xDDFADDEC, 42),
  TweakDBID.new(0xDF8B8883, 29),
  TweakDBID.new(0xDFFF1769, 35),
  TweakDBID.new(0xE0003547, 30),
  TweakDBID.new(0xE0C41156, 27),
  TweakDBID.new(0xE3CBF774, 28),
  TweakDBID.new(0xE4AB845E, 38),
  TweakDBID.new(0xE5771B24, 38),
  TweakDBID.new(0xE62682A3, 41),
  TweakDBID.new(0xE769F47B, 41),
  TweakDBID.new(0xE7863B36, 22),
  TweakDBID.new(0xE7CA699C, 44),
  TweakDBID.new(0xE90EFE6D, 28),
  TweakDBID.new(0xE9C9596A, 34),
  TweakDBID.new(0xE9F3E22D, 40),
  TweakDBID.new(0xEAB17312, 27),
  TweakDBID.new(0xEF4B76D5, 27),
  TweakDBID.new(0xEF8371CD, 22),
  TweakDBID.new(0xEFF200A5, 28),
  TweakDBID.new(0xF0C90C19, 25),
  TweakDBID.new(0xF0CFC933, 21),
  TweakDBID.new(0xF10FBB01, 38),
  TweakDBID.new(0xF1ABE42D, 35),
  TweakDBID.new(0xF23DE4BA, 36),
  TweakDBID.new(0xF2DA6E05, 48),
  TweakDBID.new(0xF3705F4C, 26),
  TweakDBID.new(0xF58F4D42, 33),
  TweakDBID.new(0xF604777D, 41),
  TweakDBID.new(0xF61E38EE, 31),
  TweakDBID.new(0xF6D11CEC, 43),
  TweakDBID.new(0xF6FA452D, 22),
  TweakDBID.new(0xF7B5CFF3, 27),
  TweakDBID.new(0xF81A740D, 36),
  TweakDBID.new(0xF86E0B05, 42),
  TweakDBID.new(0xF8881A48, 45),
  TweakDBID.new(0xF926B9FD, 29),
  TweakDBID.new(0xF97B3E6A, 30),
  TweakDBID.new(0xFADA6B66, 27),
  TweakDBID.new(0xFB26B410, 31),
  TweakDBID.new(0xFF419907, 32),
};
for index, recipeId in ipairs(recipeIds) do
  local result = txsys:GiveItem(player, fromTDBID(recipeId), 1);
  if result == false then
    print('Failed to add ' .. recipeId)
  end
end
