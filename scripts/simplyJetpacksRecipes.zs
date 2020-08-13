// Simply Jetpacks Recipes

val alloySmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val fluidCanner = mods.gregtech.recipe.RecipeMap.getByName("fluid_canner");

//Gregtech machine Recipes

// Alloy Smelter
    alloySmelter.recipeBuilder().inputs(<ore:ingotBronze>*10, <simplyjetpacks:metaitemmods:22>).outputs(<simplyjetpacks:metaitemmods:23>).duration(100).EUt(30).buildAndRegister();
    alloySmelter.recipeBuilder().inputs(<ore:ingotInvar>*10, <simplyjetpacks:metaitemmods:23>).outputs(<simplyjetpacks:metaitemmods:24>).duration(100).EUt(120).buildAndRegister();
    alloySmelter.recipeBuilder().inputs(<thermalfoundation:material:167>*10, <simplyjetpacks:metaitemmods:24>).outputs(<simplyjetpacks:metaitemmods:25>).duration(100).EUt(480).buildAndRegister();

// Fluid Canner
    fluidCanner.recipeBuilder().inputs(<simplyjetpacks:metaitemmods:20>).fluidInputs(<liquid:cryotheum>*4000).outputs(<simplyjetpacks:metaitemmods:21>).duration(160).EUt(120).buildAndRegister();
    fluidCanner.recipeBuilder().inputs(<simplyjetpacks:metaitemmods:18>).fluidInputs(<liquid:glowstone>*4000).outputs(<simplyjetpacks:metaitemmods:19>).duration(160).EUt(120).buildAndRegister();
