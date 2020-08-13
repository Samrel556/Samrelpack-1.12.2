// Deep Mob Learning Recipes

val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");

// Gregtech Machines

    // Autoclave
    autoclave.recipeBuilder().fluidInputs(<liquid:essence>*500).inputs(<gregtech:meta_item_1:2011>).outputs(<minecraft:bone>).duration(40).EUt(30).buildAndRegister();
    autoclave.recipeBuilder().fluidInputs(<liquid:experience>*500).inputs(<gregtech:meta_item_1:2011>).outputs(<minecraft:bone>).duration(40).EUt(30).buildAndRegister();

// Crafting Recipes
var model = <deepmoblearning:data_model_blank>;

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
