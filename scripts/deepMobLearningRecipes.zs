// Deep Mob Learning Recipes

val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val blastFurnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val alloySmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");

// Gregtech Machines

    // Autoclave
    autoclave.recipeBuilder()
        .fluidInputs(<liquid:essence>*500)
        .inputs(<gregtech:meta_item_1:2011>)
        .outputs(<minecraft:bone>)
        .duration(40).EUt(30).buildAndRegister();
    autoclave.recipeBuilder()
        .fluidInputs(<liquid:experience>*500)
        .inputs(<gregtech:meta_item_1:2011>)
        .outputs(<minecraft:bone>)
        .duration(40).EUt(30).buildAndRegister();

    // Blast Furnace
    recipes.remove(<deepmoblearning:polymer_clay>);
    blastFurnace.recipeBuilder()
        .inputs([<ore:ingotSteel>, <ore:ingotClay>*4, <ore:ingotGold>])
        .outputs(<deepmoblearning:polymer_clay>*2)
        .property("temperature", 1000)
        .duration(80).EUt(480).buildAndRegister();

    // Alloy Smelter
    recipes.remove(<deepmoblearning:soot_covered_plate>);
    alloySmelter.recipeBuilder()
        .inputs([<ore:plateObsidian>*3, <deepmoblearning:soot_covered_redstone>])
        .outputs(<deepmoblearning:soot_covered_plate>)
        .duration(80).EUt(480).buildAndRegister();

    // Fluid Extractor
    fluidExtractor.recipeBuilder()
        .inputs(<deepmoblearning:living_matter_overworldian>)
        .fluidOutputs(<liquid:experience>*200)
        .duration(10).EUt(8).buildAndRegister();

    fluidExtractor.recipeBuilder()
        .inputs(<deepmoblearning:living_matter_hellish>)
        .fluidOutputs(<liquid:experience>*280)
        .duration(10).EUt(8).buildAndRegister();

    fluidExtractor.recipeBuilder()
        .inputs(<deepmoblearning:living_matter_extraterrestrial>)
        .fluidOutputs(<liquid:experience>*400)
        .duration(10).EUt(8).buildAndRegister();

// Crafting Recipes

val model = <deepmoblearning:data_model_blank>;
val plateSteel = <ore:plateSteel>;
val plateGold = <ore:plateGold>;
val plateEnder = <ore:plateEnderPearl>;
val plateLapis = <ore:plateLapis>;
val plateDiamond = <ore:plateDiamond>;
val circuitHV = <ore:circuitAdvanced>;

recipes.remove(<deepmoblearning:machine_casing>);
recipes.addShaped(<deepmoblearning:machine_casing>,
[[<deepmoblearning:soot_covered_plate>,plateSteel,<deepmoblearning:soot_covered_plate>]
,[plateSteel,<thermalexpansion:frame>,plateSteel]
,[<deepmoblearning:soot_covered_plate>,plateSteel,<deepmoblearning:soot_covered_plate>]]);

recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.addShaped(<deepmoblearning:simulation_chamber>,
[[circuitHV,<ore:paneGlass>,circuitHV]
,[plateEnder,<deepmoblearning:machine_casing>,plateEnder]
,[plateLapis,circuitHV,plateLapis]]);

recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.addShaped(<deepmoblearning:extraction_chamber>,
[[<gregtech:meta_item_1:32652>,<ore:plateGold>,<gregtech:meta_item_1:32632>]
,[plateDiamond,<deepmoblearning:machine_casing>,plateDiamond]
,[<ore:dyeYellow>,circuitHV,<ore:dyeYellow>]]);

recipes.remove(<deepmoblearning:trial_keystone>);
recipes.addShaped(<deepmoblearning:trial_keystone>,
[[plateDiamond,<deepmoblearning:trial_key>,plateDiamond]
,[plateSteel,<deepmoblearning:machine_casing>,plateSteel]
,[plateSteel,plateSteel,plateSteel]]);

recipes.remove(<deepmoblearning:deep_learner>);
recipes.addShaped(<deepmoblearning:deep_learner>,
[[<deepmoblearning:soot_covered_plate>,circuitHV,<deepmoblearning:soot_covered_plate>]
,[circuitHV,<ore:paneGlass>,circuitHV]
,[<deepmoblearning:soot_covered_plate>,<deepmoblearning:soot_covered_redstone>,<deepmoblearning:soot_covered_plate>]]);

recipes.remove(model);
recipes.addShaped(model,
[[plateLapis,plateSteel,plateLapis]
,[<deepmoblearning:soot_covered_redstone>,circuitHV,<deepmoblearning:soot_covered_redstone>]
,[plateLapis,plateGold,plateLapis]]);

recipes.remove(<deepmoblearning:trial_key>);
recipes.addShaped(<deepmoblearning:trial_key>,
[[null,null,null]
,[plateEnder,plateDiamond,plateDiamond]
,[null,<ore:nuggetSteel>,<ore:nuggetSteel>]]);

recipes.remove(<deepmoblearning:glitch_infused_sword>);
recipes.addShaped(<deepmoblearning:glitch_infused_sword>,
[[null,null,<deepmoblearning:glitch_infused_ingot>]
,[<ore:nuggetSteel>,<deepmoblearning:glitch_infused_ingot>,null]
,[<ore:stickSteel>,<ore:nuggetSteel>,null]]);

recipes.remove(<deepmoblearning:data_model_zombie>);
recipes.addShapeless("zombieModule",<deepmoblearning:data_model_zombie>.withTag({tier:1}), [model, <minecraft:rotten_flesh>]);

recipes.remove(<deepmoblearning:data_model_skeleton>);
recipes.addShapeless("skeletonModule",<deepmoblearning:data_model_skeleton>.withTag({tier:1}), [model, <minecraft:bone>]);

recipes.remove(<deepmoblearning:data_model_creeper>);
recipes.addShapeless("creeperModule",<deepmoblearning:data_model_creeper>.withTag({tier:1}), [model, <minecraft:gunpowder>]);

recipes.remove(<deepmoblearning:data_model_spider>);
recipes.addShapeless("spiderModule",<deepmoblearning:data_model_spider>.withTag({tier:1}), [model, <minecraft:spider_eye>]);

recipes.remove(<deepmoblearning:data_model_slime>);
recipes.addShapeless("slimeModule",<deepmoblearning:data_model_slime>.withTag({tier:1}), [model, <minecraft:slime_ball>]);

recipes.remove(<deepmoblearning:data_model_witch>);
recipes.addShapeless("witchModule",<deepmoblearning:data_model_witch>.withTag({tier:1}), [model, <minecraft:glass_bottle>]);

recipes.remove(<deepmoblearning:data_model_blaze>);
recipes.addShapeless("blazeModule",<deepmoblearning:data_model_blaze>.withTag({tier:1}), [model, <minecraft:blaze_powder>]);

recipes.remove(<deepmoblearning:data_model_ghast>);
recipes.addShapeless("ghastModule",<deepmoblearning:data_model_ghast>.withTag({tier:1}), [model, <minecraft:ghast_tear>]);

recipes.remove(<deepmoblearning:data_model_wither_skeleton>);
recipes.addShapeless("witherSkeletonModule",<deepmoblearning:data_model_wither_skeleton>.withTag({tier:1}), [model, <minecraft:skull:1>]);
recipes.addShapeless(<minecraft:skull:1>,[<minecraft:skull:0>, <deepmoblearning:living_matter_hellish>, <gregtech:meta_item_1:10069>]);

recipes.remove(<deepmoblearning:data_model_enderman>);
recipes.addShapeless("endermanModule",<deepmoblearning:data_model_enderman>.withTag({tier:1}), [model, <minecraft:ender_pearl>]);

recipes.remove(<deepmoblearning:data_model_wither>);
recipes.addShapeless("witherModule",<deepmoblearning:data_model_wither>.withTag({tier:1}), [model, <minecraft:nether_star>]);

recipes.remove(<deepmoblearning:data_model_dragon>);
recipes.addShapeless("dragonModule",<deepmoblearning:data_model_dragon>.withTag({tier:1}), [model, <minecraft:dragon_egg>]);

recipes.remove(<deepmoblearning:data_model_shulker>);
recipes.addShapeless("shulkerModule",<deepmoblearning:data_model_shulker>.withTag({tier:1}), [model, <minecraft:shulker_shell>]);
recipes.addShaped(<minecraft:shulker_shell>, 
[[null,null,null]
,[<gregtech:meta_item_1:12111>,<gregtech:meta_item_1:12111>,<gregtech:meta_item_1:12111>]
,[<gregtech:meta_item_1:12111>,<deepmoblearning:living_matter_extraterrestrial>,<gregtech:meta_item_1:12111>]]);

recipes.remove(<deepmoblearning:data_model_guardian>);
recipes.addShapeless("guardianModule",<deepmoblearning:data_model_guardian>.withTag({tier:1}), [model, <minecraft:prismarine_shard>]);

recipes.remove(<deepmoblearning:data_model_thermal_elemental>);
recipes.addShapeless("thermalElementalModule",<deepmoblearning:data_model_thermal_elemental>.withTag({tier:1}), [model, <thermalfoundation:material:1025> | <thermalfoundation:material:1026> | <thermalfoundation:material:1027>]);
