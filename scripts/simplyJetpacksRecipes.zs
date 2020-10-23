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


// Crafting Table Recipes

val plateLead = <ore:plateLead>;
val plateInvar = <ore:plateInvar>;
val plateElectrum = <ore:plateElectrum>;
val plateEnderium = <ore:plateEnderium>;
val lvCircuit = <ore:circuitBasic>;
val mvCircuit = <ore:circuitGood>;
val hvCircuit = <ore:circuitAdvanced>;
val evCircuit = <ore:circuitExtreme>;
val ivCircuit = <ore:circuitElite>;

recipes.removeByRecipeName("simplyjetpacks:upgraderecipe1");
recipes.addShaped(<simplyjetpacks:itemjetpack:10>,
[[plateLead,<thermalexpansion:capacitor:0>,plateLead]
,[plateLead,<simplyjetpacks:metaitem:4>,plateLead]
,[<simplyjetpacks:metaitemmods:26>,lvCircuit,<simplyjetpacks:metaitemmods:26>]]);

recipes.removeByRecipeName("simplyjetpacks:upgraderecipe2");
recipes.addShaped(<simplyjetpacks:itemjetpack:11>,
[[plateInvar,<thermalexpansion:capacitor:1>,plateInvar]
,[plateInvar,<simplyjetpacks:itemjetpack:10>,plateInvar]
,[<simplyjetpacks:metaitemmods:27>,mvCircuit,<simplyjetpacks:metaitemmods:27>]]);

recipes.removeByRecipeName("simplyjetpacks:upgraderecipe3");
recipes.addShaped(<simplyjetpacks:itemjetpack:12>,
[[plateElectrum,<thermalexpansion:capacitor:2>,plateElectrum]
,[plateElectrum,<simplyjetpacks:itemjetpack:11>,plateElectrum]
,[<simplyjetpacks:metaitemmods:28>,hvCircuit,<simplyjetpacks:metaitemmods:28>]]);

recipes.removeByRecipeName("simplyjetpacks:upgraderecipe4");
recipes.addShaped(<simplyjetpacks:itemjetpack:13>,
[[plateEnderium,<thermalexpansion:capacitor:3>,plateEnderium]
,[plateEnderium,<simplyjetpacks:itemjetpack:12>,plateEnderium]
,[<simplyjetpacks:metaitemmods:29>,evCircuit,<simplyjetpacks:metaitemmods:29>]]);
