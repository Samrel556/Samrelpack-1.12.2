// Nuclearcraft Recipes

val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val thermalCentrifuge = mods.gregtech.recipe.RecipeMap.getByName("thermal_centrifuge");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val alloySmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val boron = <nuclearcraft:ingot:5>;
mods.jei.JEI.addItem(<nuclearcraft:ingot:5>);
// Gregtech machine Recipes

    // Macerator
    macerator.recipeBuilder().inputs(<ore:stoneGranite>).chancedOutput(<nuclearcraft:gem_dust:1>, 8000, 50).chancedOutput(<gregtech:meta_item_1:2065>, 6000, 50).chancedOutput(<nuclearcraft:gem_dust:8>, 3500, 50).duration(400).EUt(30).buildAndRegister();
    macerator.recipeBuilder().inputs(<ore:stoneDiorite>).chancedOutput(<nuclearcraft:gem_dust:5>, 8000, 50).chancedOutput(<nuclearcraft:gem_dust:0>, 6000, 50).chancedOutput(<nuclearcraft:dust:10>, 3500, 50).duration(400).EUt(30).buildAndRegister();
    macerator.recipeBuilder().inputs(<nuclearcraft:ingot:5>).outputs(<gregtech:meta_item_1:2009>).duration(30).EUt(8).buildAndRegister();
    // Thermal Centrifuge
    thermalCentrifuge.recipeBuilder().inputs(<nuclearcraft:ingot:5>).outputs([<nuclearcraft:boron:2>, <nuclearcraft:boron:1>*3]).duration(3200).EUt(48).buildAndRegister();
    // Fluid Extractor
    fluidExtractor.recipeBuilder().inputs(<nuclearcraft:ingot:5>).fluidOutputs(<liquid:boron>*144).duration(320).EUt(32).buildAndRegister();
    // Alloy Smelter
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:10184>,<nuclearcraft:ingot:5>]).outputs(<nuclearcraft:alloy:6>*2).duration(200).EUt(24).buildAndRegister();
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:10184>,<gregtech:meta_item_1:2009>]).outputs(<nuclearcraft:alloy:6>*2).duration(200).EUt(24).buildAndRegister();
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:10038>,<nuclearcraft:ingot:5>*2]).outputs(<nuclearcraft:alloy:3>*3).duration(200).EUt(24).buildAndRegister();
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:10038>,<gregtech:meta_item_1:2009>*2]).outputs(<nuclearcraft:alloy:3>*3).duration(200).EUt(24).buildAndRegister();

// Fixing Boron
val stick = <minecraft:stick>;
furnace.addRecipe(<nuclearcraft:ingot:5>, <gregtech:meta_item_1:2009>);
recipes.addShaped(<nuclearcraft:part:3>,
[[<nuclearcraft:compound:1>,<nuclearcraft:ingot:5>,<nuclearcraft:compound:1>]
,[<nuclearcraft:ingot:5>,<nuclearcraft:part:2>,<nuclearcraft:ingot:5>]
,[<nuclearcraft:compound:1>,<nuclearcraft:ingot:5>,<nuclearcraft:compound:1>]]);
recipes.addShaped(<nuclearcraft:sword_boron>,
[[null,<nuclearcraft:ingot:5>,null]
,[null,<nuclearcraft:ingot:5>,null]
,[null,stick,null]]);
recipes.addShaped(<nuclearcraft:pickaxe_boron>,
[[<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>]
,[null,stick,null]
,[null,stick,null]]);
recipes.addShaped(<nuclearcraft:shovel_boron>,
[[null,<nuclearcraft:ingot:5>,null]
,[null,stick,null]
,[null,stick,null]]);
recipes.addShapedMirrored(<nuclearcraft:axe_boron>,
[[<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>,null]
,[<nuclearcraft:ingot:5>,stick,null]
,[null,stick,null]]);
recipes.addShapedMirrored(<nuclearcraft:hoe_boron>,
[[<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>,null]
,[null,stick,null]
,[null,stick,null]]);
recipes.addShaped(<nuclearcraft:helm_boron>,
[[<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>]
,[<nuclearcraft:ingot:5>,null,<nuclearcraft:ingot:5>]]);
recipes.addShaped(<nuclearcraft:boots_boron>,
[[<nuclearcraft:ingot:5>,null,<nuclearcraft:ingot:5>]
,[<nuclearcraft:ingot:5>,null,<nuclearcraft:ingot:5>]]);
recipes.addShaped(<nuclearcraft:legs_boron>,
[[<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>]
,[<nuclearcraft:ingot:5>,null,<nuclearcraft:ingot:5>]
,[<nuclearcraft:ingot:5>,null,<nuclearcraft:ingot:5>]]);
recipes.addShaped(<nuclearcraft:chest_boron>,
[[<nuclearcraft:ingot:5>,null,<nuclearcraft:ingot:5>]
,[<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>]
,[<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>,<nuclearcraft:ingot:5>]]);
