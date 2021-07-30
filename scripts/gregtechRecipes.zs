// Gregtech Recipes
val macerator = mods.gregtech.recipe.RecipeMap.getByName("macerator");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");


// Gregtech machines

//Macerator
    macerator.findRecipe(6, [<minecraft:log:0>], null).remove();

//Mixer
    recipes.remove(<snad:snad>);
    mixer.recipeBuilder()
        .inputs(<minecraft:sand:0>*16, <thermalfoundation:fertilizer:1>*8)
        .outputs(<snad:snad:0>*3)
        .duration(40).EUt(30)
        .buildAndRegister();
    recipes.remove(<snad:snad:1>);
    mixer.recipeBuilder()
        .inputs(<minecraft:sand:1>*16, <thermalfoundation:fertilizer:1>*8)
        .outputs(<snad:snad:1>*3)
        .duration(40).EUt(30)
        .buildAndRegister();

// Crafting Recipes

// Compressed Fireclay

recipes.addShaped(<gregtech:meta_item_2:32014>*4,
[[<gregtech:meta_item_1:2105>,<gregtech:meta_item_1:2105>,<gregtech:meta_item_1:2105>]
,[<gregtech:meta_item_1:2105>,<gregtech:meta_item_2:32012>,<gregtech:meta_item_1:2355>]
,[<gregtech:meta_item_1:2355>,<gregtech:meta_item_1:2355>,<gregtech:meta_item_1:2355>]]);



// Smelting Recipes


