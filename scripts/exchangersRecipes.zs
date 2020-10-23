// Exchangers Recipes

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

// Gregtech Machine Recipes

val lvCircuit = <ore:circuitBasic>;
val mvCircuit = <ore:circuitGood>;
val hvCircuit = <ore:circuitAdvanced>;
val evCircuit = <ore:circuitExtreme>;
val ivCircuit = <ore:circuitElite>;
val plateGold = <ore:plateGold>;
val plateLead = <ore:plateLead>;
val plateInvar = <ore:plateInvar>;
val plateElectrum = <ore:plateElectrum>;
val plateSignalum = <ore:plateSignalum>;
val plateEnderium = <ore:plateEnderium>;
val gearCopper = <ore:gearCopper>;
val gearBronze = <ore:gearBronze>;
val gearLumium = <ore:gearLumium>;

recipes.remove(<exchangers:te_exchanger_core_tier1>);
assembler.recipeBuilder()
    .inputs([gearCopper * 4, plateLead * 4])
    .fluidInputs(<liquid:ender> * 1000)
    .outputs(<exchangers:te_exchanger_core_tier1>)
    .duration(100)
    .EUt(30)
    .buildAndRegister();
recipes.remove(<exchangers:te_exchanger_core_tier2>);
assembler.recipeBuilder()
    .inputs([gearBronze * 4, plateElectrum * 4, <exchangers:te_exchanger_core_tier1> * 2])
    .fluidInputs(<liquid:glowstone> * 1000)
    .outputs(<exchangers:te_exchanger_core_tier2>)
    .duration(100)
    .EUt(480)
    .buildAndRegister();
recipes.remove(<exchangers:te_exchanger_core_tier3>);
assembler.recipeBuilder()
    .inputs([gearLumium * 4, plateEnderium * 4, <exchangers:te_exchanger_core_tier2> * 4])
    .fluidInputs(<liquid:cryotheum> * 1000)
    .outputs(<exchangers:te_exchanger_core_tier3>)
    .duration(100)
    .EUt(7680)
    .buildAndRegister();


// Crafting Table Recipes

recipes.remove(<exchangers:tuberous_exchanger>);
recipes.addShaped(<exchangers:tuberous_exchanger>,
[[<minecraft:potato>,plateGold,<minecraft:potato>]
,[<minecraft:potato>,<minecraft:ender_pearl>,<minecraft:potato>]
,[<minecraft:potato>,lvCircuit,<minecraft:potato>]]);

recipes.remove(<exchangers:leadstone_exchanger>);
recipes.addShaped(<exchangers:leadstone_exchanger>,
[[plateLead,lvCircuit,plateLead]
,[plateLead,<exchangers:te_exchanger_core_tier1>,plateLead]
,[plateLead,<thermalexpansion:capacitor:0>,plateLead]]);

recipes.remove(<exchangers:hardened_exchanger>);
recipes.addShaped(<exchangers:hardened_exchanger>,
[[plateInvar,mvCircuit,plateInvar]
,[<exchangers:te_exchanger_core_tier1>,<exchangers:leadstone_exchanger>,<exchangers:te_exchanger_core_tier1>]
,[plateInvar,<thermalexpansion:capacitor:1>,plateInvar]]);

recipes.remove(<exchangers:reinforced_exchanger>);
recipes.addShaped(<exchangers:reinforced_exchanger>,
[[plateElectrum,hvCircuit,plateElectrum]
,[<exchangers:te_exchanger_core_tier2>,<exchangers:hardened_exchanger>,<exchangers:te_exchanger_core_tier2>]
,[plateElectrum,<thermalexpansion:capacitor:2>,plateElectrum]]);

recipes.remove(<exchangers:signalum_exchanger>);
recipes.addShaped(<exchangers:signalum_exchanger>,
[[plateSignalum,evCircuit,plateSignalum]
,[<exchangers:te_exchanger_core_tier3>,<exchangers:reinforced_exchanger>,<exchangers:te_exchanger_core_tier3>]
,[plateSignalum,<thermalexpansion:capacitor:3>,plateSignalum]]);

recipes.remove(<exchangers:resonant_exchanger>);
recipes.addShaped(<exchangers:resonant_exchanger>,
[[plateEnderium,ivCircuit,plateEnderium]
,[<exchangers:te_exchanger_core_tier3>,<exchangers:signalum_exchanger>,<exchangers:te_exchanger_core_tier3>]
,[plateEnderium,<thermalexpansion:capacitor:4>,plateEnderium]]);
