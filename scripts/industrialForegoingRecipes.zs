// Industrial Foregoing Recipes
import mods.gregtech.recipe.RecipeMap;
val extruder = RecipeMap.getByName("extruder");
val chemReactor = RecipeMap.getByName("chemical_reactor");

val oreConveyor = <ore:conveyor>;
for i in 0 to 16{
    oreConveyor.add(<industrialforegoing:conveyor>.definition.makeStack(i));
}

// Gregtech Machine Recipes

// Extruder
    recipes.remove(<industrialforegoing:straw>);
    extruder.recipeBuilder()
        .inputs(<ore:stickPlastic>)
        .notConsumable(<gregtech:meta_item_1:32658>)
        .outputs(<industrialforegoing:straw>)
        .duration(20).EUt(4).buildAndRegister();

// Chemical Reactor
    chemReactor.recipeBuilder()
        .inputs(<ore:ingotSteel>*1)
        .fluidInputs(<liquid:if.pink_slime>*2000)
        .outputs(<industrialforegoing:pink_slime_ingot>)
        .duration(1200).EUt(480).buildAndRegister();

// Crafting Table Recipes
val platePlastic = <ore:platePlastic>;
val plateSteel = <ore:plateSteel>;
val frameThermal = <thermalexpansion:frame>;
val motorMV = <gregtech:meta_item_1:32601>;
val armMV = <gregtech:meta_item_1:32651>;
val circuitMV = <ore:circuitGood>;

recipes.remove(<industrialforegoing:enchantment_refiner>);
recipes.addShaped(<industrialforegoing:enchantment_refiner>,
[[platePlastic,circuitMV,platePlastic]
,[<minecraft:book>,frameThermal,<ore:bookEnchanted>]
,[platePlastic,armMV,platePlastic]]);

recipes.remove(<industrialforegoing:enchantment_extractor>);
recipes.addShaped(<industrialforegoing:enchantment_extractor>,
[[platePlastic,<minecraft:nether_brick>,platePlastic]
,[<minecraft:book>,frameThermal,<minecraft:book>]
,[circuitMV,armMV,circuitMV]]);

recipes.remove(<industrialforegoing:enchantment_aplicator>);
recipes.addShaped(<industrialforegoing:enchantment_aplicator>,
[[platePlastic,platePlastic,platePlastic]
,[<minecraft:anvil>,frameThermal,<minecraft:anvil>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:mob_relocator>);
recipes.addShaped(<industrialforegoing:mob_relocator>,
[[platePlastic,<minecraft:iron_sword>,platePlastic]
,[<minecraft:book>,frameThermal,<minecraft:book>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:animal_independence_selector>);
recipes.addShaped(<industrialforegoing:animal_independence_selector>,
[[platePlastic,<gregtech:meta_item_1:12113>,platePlastic]
,[<ore:dyePurple>,frameThermal,<ore:dyePurple>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:animal_stock_increaser>);
recipes.addShaped(<industrialforegoing:animal_stock_increaser>,
[[platePlastic,<minecraft:golden_apple>,platePlastic]
,[<minecraft:golden_carrot>,frameThermal,<ore:dyePurple>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:crop_sower>);
recipes.addShaped(<industrialforegoing:crop_sower>,
[[platePlastic,<minecraft:flower_pot>,platePlastic]
,[<minecraft:piston>,frameThermal,<minecraft:piston>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:crop_enrich_material_injector>);
recipes.addShaped(<industrialforegoing:crop_enrich_material_injector>,
[[platePlastic,<minecraft:glass_bottle>,platePlastic]
,[<minecraft:leather>,frameThermal,<minecraft:leather>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:crop_recolector>);
recipes.addShaped(<industrialforegoing:crop_recolector>,
[[platePlastic,<minecraft:iron_hoe>,platePlastic]
,[<minecraft:iron_axe>,frameThermal,<minecraft:iron_axe>]
,[armMV,circuitMV,armMV]]);

recipes.removeByRecipeName("industrialforegoing:black_hole_unit_thermal");
recipes.addShaped(<industrialforegoing:black_hole_unit>,
[[platePlastic,platePlastic,platePlastic]
,[<ore:circuitElite>,<ore:plateEnderium>,<ore:circuitElite>]
,[<gregtech:machine:1013>,frameThermal,<gregtech:machine:1013>]]);

recipes.remove(<industrialforegoing:animal_resource_harvester>);
recipes.addShaped(<industrialforegoing:animal_resource_harvester>,
[[platePlastic,<minecraft:bucket>,platePlastic]
,[<minecraft:shears>,frameThermal,<minecraft:shears>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:mob_slaughter_factory>);
recipes.addShaped(<industrialforegoing:mob_slaughter_factory>,
[[platePlastic,<minecraft:iron_axe>,platePlastic]
,[<minecraft:iron_sword>,frameThermal,<minecraft:iron_sword>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:mob_duplicator>);
recipes.addShaped(<industrialforegoing:mob_duplicator>,
[[platePlastic,<gregtech:meta_item_1:12113>,platePlastic]
,[<minecraft:nether_wart>,frameThermal,<minecraft:magma_cream>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:sewage_composter_solidifier>);
recipes.addShaped(<industrialforegoing:sewage_composter_solidifier>,
[[platePlastic,<minecraft:furnace>,platePlastic]
,[<minecraft:brick>,frameThermal,<minecraft:brick>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:animal_byproduct_recolector>);
recipes.addShaped(<industrialforegoing:animal_byproduct_recolector>,
[[platePlastic,<minecraft:bucket>,platePlastic]
,[<minecraft:brick>,frameThermal,<minecraft:brick>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:sludge_refiner>);
recipes.addShaped(<industrialforegoing:sludge_refiner>,
[[platePlastic,<minecraft:bucket>,platePlastic]
,[<minecraft:furnace>,frameThermal,<minecraft:furnace>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:mob_detector>);
recipes.addShaped(<industrialforegoing:mob_detector>,
[[platePlastic,<minecraft:observer>,platePlastic]
,[<minecraft:repeater>,frameThermal,<minecraft:comparator>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:bioreactor>);
recipes.addShaped(<industrialforegoing:bioreactor>,
[[platePlastic,<minecraft:fermented_spider_eye>,platePlastic]
,[<ore:dustSugar>,frameThermal,<minecraft:slime_ball>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:biofuel_generator>);
recipes.addShaped(<industrialforegoing:biofuel_generator>,
[[platePlastic,<minecraft:furnace>,platePlastic]
,[<ore:stickBlaze>,frameThermal,<ore:stickBlaze>]
,[<thermalfoundation:material:514>,circuitMV,<thermalfoundation:material:514>]]);

recipes.remove(<industrialforegoing:laser_base>);
recipes.addShaped(<industrialforegoing:laser_base>,
[[platePlastic,<ore:craftingLensWhite>,platePlastic]
,[<minecraft:glowstone>,frameThermal,<minecraft:glowstone>]
,[<gregtech:meta_item_1:32682>,circuitMV,<gregtech:meta_item_1:32682>]]);

recipes.remove(<industrialforegoing:laser_drill>);
recipes.addShaped(<industrialforegoing:laser_drill>,
[[platePlastic,<ore:craftingLensWhite>,platePlastic]
,[<gtadditions:ga_transparent_casing>,frameThermal,<gtadditions:ga_transparent_casing>]
,[<gregtech:meta_item_1:32692>,circuitMV,<gregtech:meta_item_1:32692>]]);

recipes.remove(<industrialforegoing:black_hole_controller_reworked>);
recipes.addShaped(<industrialforegoing:black_hole_controller_reworked>,
[[platePlastic,<enderstorage:ender_storage>,platePlastic]
,[<industrialforegoing:pink_slime_ingot>,frameThermal,<industrialforegoing:pink_slime_ingot>]
,[<gregtech:meta_item_1:32682>,<ore:circuitElite>,<gregtech:meta_item_1:32692>]]);

recipes.remove(<industrialforegoing:dye_mixer>);
recipes.addShaped(<industrialforegoing:dye_mixer>,
[[platePlastic,<ore:dyeGreen>,platePlastic]
,[<ore:dyeRed>,frameThermal,<ore:dyeBlue>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:enchantment_invoker>);
recipes.addShaped(<industrialforegoing:enchantment_invoker>,
[[platePlastic,<minecraft:book>,platePlastic]
,[<ore:gemDiamond>,frameThermal,<ore:gemDiamond>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:animal_growth_increaser>);
recipes.addShaped(<industrialforegoing:animal_growth_increaser>,
[[platePlastic,<minecraft:wheat>,platePlastic]
,[<minecraft:carrot>,frameThermal,<minecraft:carrot>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:material_stonework_factory>);
recipes.addShaped(<industrialforegoing:material_stonework_factory>,
[[platePlastic,<nuclearcraft:cobblestone_generator_dense>,platePlastic]
,[<industrialforegoing:pink_slime_ingot>,frameThermal,<industrialforegoing:pink_slime_ingot>]
,[armMV,circuitMV,armMV]]);

recipes.removeByRecipeName("industrialforegoing:black_hole_tank_thermal");
recipes.addShaped(<industrialforegoing:black_hole_tank>,
[[platePlastic,platePlastic,platePlastic]
,[<ore:circuitElite>,<ore:plateEnderium>,<ore:circuitElite>]
,[<gregtech:machine:1023>,frameThermal,<gregtech:machine:1023>]]);

recipes.remove(<industrialforegoing:villager_trade_exchanger>);
recipes.addShaped(<industrialforegoing:villager_trade_exchanger>,
[[platePlastic,<ore:plateGold>,platePlastic]
,[<ore:gemEmerald>,frameThermal,<ore:gemEmerald>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:energy_field_provider>);
recipes.addShaped(<industrialforegoing:energy_field_provider>,
[[platePlastic,<industrialforegoing:energy_field_addon>,platePlastic]
,[<minecraft:repeater>,frameThermal,<minecraft:repeater>]
,[<gregtech:meta_item_1:32682>,circuitMV,<gregtech:meta_item_1:32692>]]);

recipes.remove(<industrialforegoing:protein_reactor>);
recipes.addShaped(<industrialforegoing:protein_reactor>,
[[platePlastic,<minecraft:rabbit_foot>,platePlastic]
,[<minecraft:porkchop>,frameThermal,<minecraft:egg>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:protein_generator>);
recipes.addShaped(<industrialforegoing:protein_generator>,
[[platePlastic,<minecraft:furnace>,platePlastic]
,[<minecraft:spider_eye>,frameThermal,<minecraft:spider_eye>]
,[<thermalfoundation:material:514>,circuitMV,<thermalfoundation:material:514>]]);

recipes.remove(<industrialforegoing:hydrator>);
recipes.addShaped(<industrialforegoing:hydrator>,
[[platePlastic,<nuclearcraft:water_source_dense>,platePlastic]
,[<industrialforegoing:fertilizer>,frameThermal,<industrialforegoing:fertilizer>]
,[<gregtech:meta_item_1:32611>,circuitMV,<gregtech:meta_item_1:32611>]]);

recipes.remove(<industrialforegoing:wither_builder>);
recipes.addShaped(<industrialforegoing:wither_builder>,
[[platePlastic,<minecraft:nether_star>,platePlastic]
,[<minecraft:skull:1>,frameThermal,<minecraft:skull:1>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:fluid_crafter>);
recipes.addShaped(<industrialforegoing:fluid_crafter>,
[[platePlastic,<minecraft:crafting_table>,platePlastic]
,[<minecraft:bucket>,frameThermal,<minecraft:bucket>]
,[<gregtech:meta_item_1:32611>,circuitMV,<gregtech:meta_item_1:32611>]]);

recipes.remove(<industrialforegoing:plant_interactor>);
recipes.addShaped(<industrialforegoing:plant_interactor>,
[[platePlastic,<minecraft:iron_hoe>,platePlastic]
,[<minecraft:iron_hoe>,frameThermal,<minecraft:iron_hoe>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:item_splitter>);
recipes.addShaped(<industrialforegoing:item_splitter>,
[[platePlastic,<minecraft:chest>,platePlastic]
,[<minecraft:hopper>,frameThermal,<minecraft:hopper>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:block_placer>);
recipes.addShaped(<industrialforegoing:block_placer>,
[[platePlastic,<minecraft:dropper>,platePlastic]
,[<minecraft:dropper>,frameThermal,<minecraft:dropper>]
,[armMV,circuitMV,armMV]]);

recipes.remove(<industrialforegoing:meat_feeder>);
recipes.addShaped(<industrialforegoing:meat_feeder>,
[[<gregtech:meta_item_1:18141>,<ore:plateStainlessSteel>,<gregtech:meta_item_1:18141>]
,[<minecraft:glass_bottle>,<ore:plateStainlessSteel>,<minecraft:glass_bottle>]
,[null,<ore:stickStainlessSteel>,null]]);

recipes.remove(<industrialforegoing:mob_imprisonment_tool>);
recipes.addShaped(<industrialforegoing:mob_imprisonment_tool>,
[[null,platePlastic,null]
,[platePlastic,<gregtech:meta_item_1:32671>,platePlastic]
,[null,platePlastic,null]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:0>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:0>,
[[plateSteel,platePlastic,plateSteel]
,[platePlastic,armMV,platePlastic]
,[plateSteel,oreConveyor,plateSteel]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:1>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:1>,
[[plateSteel,oreConveyor,plateSteel]
,[platePlastic,armMV,platePlastic]
,[plateSteel,platePlastic,plateSteel]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:2>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:2>,
[[plateSteel,<minecraft:comparator>,plateSteel]
,[platePlastic,<gregtech:meta_item_1:32691>,platePlastic]
,[plateSteel,oreConveyor,plateSteel]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:3>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:3>,
[[plateSteel,<minecraft:slime>,plateSteel]
,[platePlastic,<gregtech:meta_item_1:32641>,platePlastic]
,[plateSteel,oreConveyor,plateSteel]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:4>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:4>,
[[plateSteel,<minecraft:iron_bars>,plateSteel]
,[platePlastic,<minecraft:dropper>,platePlastic]
,[plateSteel,oreConveyor,plateSteel]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:5>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:5>,
[[plateSteel,<minecraft:chorus_fruit>,plateSteel]
,[platePlastic,<gregtech:meta_item_1:32641>,platePlastic]
,[plateSteel,oreConveyor,plateSteel]]);

recipes.remove(<industrialforegoing:conveyor_upgrade:6>);
recipes.addShaped(<industrialforegoing:conveyor_upgrade:6>,
[[plateSteel,oreConveyor,plateSteel]
,[platePlastic,armMV,platePlastic]
,[plateSteel,oreConveyor,plateSteel]]);

recipes.removeByRecipeName("industrialforegoing:infinity_drill_0");
recipes.addShaped(<industrialforegoing:infinity_drill>,
[[<gregtech:meta_item_1:32604>,<ore:plateNeutronium>,<ore:toolHeadDrillNeutronium>]
,[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:laser_drill>,<ore:plateNeutronium>]
,[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:black_hole_tank>,<gregtech:meta_item_1:32604>]]);

recipes.remove(<industrialforegoing:adult_filter>);
recipes.addShaped(<industrialforegoing:adult_filter>,
[[<ore:nuggetGold>,platePlastic,<ore:nuggetGold>]
,[<ore:nuggetGold>,<ore:egg>,<ore:nuggetGold>]
,[<ore:nuggetGold>,platePlastic,<ore:nuggetGold>]]);

recipes.remove(<industrialforegoing:range_addon:0>);
recipes.addShaped(<industrialforegoing:range_addon:0>,
[[<ore:plateStone>,platePlastic,<ore:plateStone>]
,[<ore:plateStone>,<ore:paneGlass>,<ore:plateStone>]
,[<ore:plateStone>,platePlastic,<ore:plateStone>]]);

recipes.remove(<industrialforegoing:range_addon:1>);
recipes.addShaped(<industrialforegoing:range_addon:1>,
[[<ore:plateLapis>,platePlastic,<ore:plateLapis>]
,[<ore:plateLapis>,<ore:paneGlass>,<ore:plateLapis>]
,[<ore:plateLapis>,platePlastic,<ore:plateLapis>]]);

recipes.remove(<industrialforegoing:range_addon:2>);
recipes.addShaped(<industrialforegoing:range_addon:2>,
[[<ore:plateIron>,platePlastic,<ore:plateIron>]
,[<ore:plateIron>,<ore:paneGlass>,<ore:plateIron>]
,[<ore:plateIron>,platePlastic,<ore:plateIron>]]);

recipes.remove(<industrialforegoing:range_addon:3>);
recipes.addShaped(<industrialforegoing:range_addon:3>,
[[<ore:plateTin>,platePlastic,<ore:plateTin>]
,[<ore:plateTin>,<ore:paneGlass>,<ore:plateTin>]
,[<ore:plateTin>,platePlastic,<ore:plateTin>]]);

recipes.remove(<industrialforegoing:range_addon:4>);
recipes.addShaped(<industrialforegoing:range_addon:4>,
[[<ore:plateCopper>,platePlastic,<ore:plateCopper>]
,[<ore:plateCopper>,<ore:paneGlass>,<ore:plateCopper>]
,[<ore:plateCopper>,platePlastic,<ore:plateCopper>]]);

recipes.remove(<industrialforegoing:range_addon:5>);
recipes.addShaped(<industrialforegoing:range_addon:5>,
[[<ore:plateBronze>,platePlastic,<ore:plateBronze>]
,[<ore:plateBronze>,<ore:paneGlass>,<ore:plateBronze>]
,[<ore:plateBronze>,platePlastic,<ore:plateBronze>]]);

recipes.remove(<industrialforegoing:range_addon:6>);
recipes.addShaped(<industrialforegoing:range_addon:6>,
[[<ore:plateSilver>,platePlastic,<ore:plateSilver>]
,[<ore:plateSilver>,<ore:paneGlass>,<ore:plateSilver>]
,[<ore:plateSilver>,platePlastic,<ore:plateSilver>]]);

recipes.remove(<industrialforegoing:range_addon:7>);
recipes.addShaped(<industrialforegoing:range_addon:7>,
[[<ore:plateGold>,platePlastic,<ore:plateGold>]
,[<ore:plateGold>,<ore:paneGlass>,<ore:plateGold>]
,[<ore:plateGold>,platePlastic,<ore:plateGold>]]);

recipes.remove(<industrialforegoing:range_addon:8>);
recipes.addShaped(<industrialforegoing:range_addon:8>,
[[<ore:plateNetherQuartz>,platePlastic,<ore:plateNetherQuartz>]
,[<ore:plateNetherQuartz>,<ore:paneGlass>,<ore:plateNetherQuartz>]
,[<ore:plateNetherQuartz>,platePlastic,<ore:plateNetherQuartz>]]);

recipes.remove(<industrialforegoing:range_addon:9>);
recipes.addShaped(<industrialforegoing:range_addon:9>,
[[<ore:plateDiamond>,platePlastic,<ore:plateDiamond>]
,[<ore:plateDiamond>,<ore:paneGlass>,<ore:plateDiamond>]
,[<ore:plateDiamond>,platePlastic,<ore:plateDiamond>]]);

recipes.remove(<industrialforegoing:range_addon:10>);
recipes.addShaped(<industrialforegoing:range_addon:10>,
[[<ore:platePlatinum>,platePlastic,<ore:platePlatinum>]
,[<ore:platePlatinum>,<ore:paneGlass>,<ore:platePlatinum>]
,[<ore:platePlatinum>,platePlastic,<ore:platePlatinum>]]);

recipes.remove(<industrialforegoing:range_addon:11>);
recipes.addShaped(<industrialforegoing:range_addon:11>,
[[<ore:plateEmerald>,platePlastic,<ore:plateEmerald>]
,[<ore:plateEmerald>,<ore:paneGlass>,<ore:plateEmerald>]
,[<ore:plateEmerald>,platePlastic,<ore:plateEmerald>]]);

recipes.remove(<industrialforegoing:energy_field_addon>);
recipes.addShaped(<industrialforegoing:energy_field_addon>,
[[<gregtech:meta_item_1:32671>,<industrialforegoing:pink_slime_ingot>,<gregtech:meta_item_1:32681>]
,[<industrialforegoing:pink_slime_ingot>,<industrialforegoing:range_addon:9>,<industrialforegoing:pink_slime_ingot>]
,[<gregtech:meta_item_1:32681>,<industrialforegoing:pink_slime_ingot>,<gregtech:meta_item_1:32671>]]);

recipes.remove(<industrialforegoing:leaf_shearing>);
recipes.addShaped(<industrialforegoing:leaf_shearing>,
[[<ore:nuggetGold>,platePlastic,<ore:nuggetGold>]
,[<ore:nuggetGold>,<minecraft:shears>,<ore:nuggetGold>]
,[<ore:nuggetGold>,platePlastic,<ore:nuggetGold>]]);

recipes.remove(<industrialforegoing:itemstack_transfer_addon_pull>);
recipes.addShaped(<industrialforegoing:itemstack_transfer_addon_pull>,
[[platePlastic,<minecraft:chest>,platePlastic]
,[<ore:dyeMagenta>,armMV,<ore:dyeMagenta>]
,[platePlastic,<minecraft:chest>,platePlastic]]);

recipes.remove(<industrialforegoing:itemstack_transfer_addon_push>);
recipes.addShaped(<industrialforegoing:itemstack_transfer_addon_push>,
[[platePlastic,<ore:dyeMagenta>,platePlastic]
,[<minecraft:chest>,armMV,<minecraft:chest>]
,[platePlastic,<ore:dyeMagenta>,platePlastic]]);

recipes.remove(<industrialforegoing:fluid_transfer_addon_pull>);
recipes.addShaped(<industrialforegoing:fluid_transfer_addon_pull>,
[[platePlastic,<minecraft:bucket>,platePlastic]
,[<ore:dyeLightBlue>,<gregtech:meta_item_1:32611>,<ore:dyeLightBlue>]
,[platePlastic,<minecraft:bucket>,platePlastic]]);

recipes.remove(<industrialforegoing:fluid_transfer_addon_push>);
recipes.addShaped(<industrialforegoing:fluid_transfer_addon_push>,
[[platePlastic,<ore:dyeLightBlue>,platePlastic]
,[<minecraft:bucket>,<gregtech:meta_item_1:32611>,<minecraft:bucket>]
,[platePlastic,<ore:dyeLightBlue>,platePlastic]]);

recipes.remove(<industrialforegoing:fortune_addon>);
recipes.addShaped(<industrialforegoing:fortune_addon>,
[[<ore:plateEmerald>,platePlastic,<ore:plateEmerald>]
,[<ore:plateEmerald>,<industrialforegoing:pink_slime_ingot>,<ore:plateEmerald>]
,[<ore:plateEmerald>,platePlastic,<ore:plateEmerald>]]);

recipes.removeShaped(<industrialforegoing:conveyor>);
recipes.addShaped(<industrialforegoing:conveyor>*4,
[[platePlastic,platePlastic,platePlastic]
,[<ore:plateSteel>,motorMV,<ore:plateSteel>]
,[platePlastic,platePlastic,platePlastic]]);
recipes.addShaped(<industrialforegoing:conveyor>*8,
[[oreConveyor,oreConveyor,oreConveyor]
,[oreConveyor,<ore:dyeWhite>,oreConveyor]
,[oreConveyor,oreConveyor,oreConveyor]]);

recipes.remove(<industrialforegoing:black_hole_label>);
recipes.addShaped(<industrialforegoing:black_hole_label>*4,
[[platePlastic,platePlastic,platePlastic]
,[<ore:paper>,<ore:dustGlowstone>,<ore:paper>]
,[platePlastic,platePlastic,platePlastic]]);

recipes.remove(<teslacorelib:base_addon>);
recipes.addShaped(<teslacorelib:base_addon>,
[[platePlastic,plateSteel,platePlastic]
,[plateSteel,circuitMV,plateSteel]
,[platePlastic,plateSteel,platePlastic]]);

recipes.remove(<teslacorelib:energy_tier1>);
recipes.addShaped(<teslacorelib:energy_tier1>,
[[<ore:dustEnergetic>,<ore:gearGold>,<ore:dustEnergetic>]
,[<ore:dustNetherQuartz>,<teslacorelib:base_addon>,<ore:dustNetherQuartz>]
,[<ore:dustEnergetic>,<ore:dustNetherQuartz>,<ore:dustEnergetic>]]);

recipes.remove(<teslacorelib:energy_tier2>);
recipes.remove(<teslacorelib:energy_tier2>);
recipes.addShaped(<teslacorelib:energy_tier2>,
[[<ore:dustEnergetic>,<ore:plateDiamond>,<ore:dustEnergetic>]
,[<ore:plateDiamond>,<teslacorelib:energy_tier1>,<ore:plateDiamond>]
,[<ore:dustEnergetic>,<ore:plateDiamond>,<ore:dustEnergetic>]]);
recipes.addShaped(<teslacorelib:energy_tier2>,
[[<ore:dustEnergetic>,<ore:gearDiamond>,<ore:dustEnergetic>]
,[<ore:dustNetherQuartz>,<teslacorelib:energy_tier2>,<ore:dustNetherQuartz>]
,[<ore:dustEnergetic>,<ore:dustNetherQuartz>,<ore:dustEnergetic>]]);

recipes.remove(<teslacorelib:speed_tier1>);
recipes.addShaped(<teslacorelib:speed_tier1>,
[[<ore:dustRedstone>,<ore:gearGold>,<ore:dustRedstone>]
,[motorMV,<teslacorelib:base_addon>,motorMV]
,[<ore:dustRedstone>,<ore:gearGold>,<ore:dustRedstone>]]);

recipes.remove(<teslacorelib:speed_tier2>);
recipes.remove(<teslacorelib:speed_tier2>);
recipes.addShaped(<teslacorelib:speed_tier2>,
[[<ore:dustRedstone>,<ore:plateDiamond>,<ore:dustRedstone>]
,[<ore:plateDiamond>,<teslacorelib:speed_tier1>,<ore:plateDiamond>]
,[<ore:dustRedstone>,<ore:plateDiamond>,<ore:dustRedstone>]]);
recipes.addShaped(<teslacorelib:speed_tier2>,
[[<ore:dustRedstone>,<ore:gearDiamond>,<ore:dustRedstone>]
,[motorMV,<teslacorelib:speed_tier1>,motorMV]
,[<ore:dustRedstone>,<ore:gearDiamond>,<ore:dustRedstone>]]);
