// Thermal Recipes

val alloySmelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val centrifuge = mods.gregtech.recipe.RecipeMap.getByName("centrifuge");
val fluidCanner = mods.gregtech.recipe.RecipeMap.getByName("fluid_canner");
val chemBath = mods.gregtech.recipe.RecipeMap.getByName("chemical_bath");
val blastFurnace = mods.gregtech.recipe.RecipeMap.getByName("blast_furnace");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");

// Gregtech Machine Recipes

// Alloy Smelter
    alloySmelter.recipeBuilder().inputs(<ore:dustLead>,<ore:dustObsidian>*4).outputs(<thermalfoundation:glass:3>*2).duration(40).EUt(120).buildAndRegister();
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:2018>*2, <gregtech:meta_item_1:2044>]).outputs(<gregtech:meta_item_1:10500>*3).duration(200).EUt(16).buildAndRegister();
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:2018>*2, <gregtech:meta_item_1:10044>]).outputs(<gregtech:meta_item_1:10500>*3).duration(200).EUt(16).buildAndRegister();
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:10018>*2, <gregtech:meta_item_1:2044>]).outputs(<gregtech:meta_item_1:10500>*3).duration(200).EUt(16).buildAndRegister();
    alloySmelter.recipeBuilder().inputs([<gregtech:meta_item_1:10018>*2, <gregtech:meta_item_1:10044>]).outputs(<gregtech:meta_item_1:10500>*3).duration(200).EUt(16).buildAndRegister();

// Compressor
    compressor.recipeBuilder().inputs(<minecraft:blaze_powder>*5).outputs(<minecraft:blaze_rod>).duration(100).EUt(30).buildAndRegister();
    compressor.recipeBuilder().inputs(<thermalfoundation:material:2049>*5).outputs(<thermalfoundation:material:2048>).duration(100).EUt(30).buildAndRegister();
    compressor.recipeBuilder().inputs(<thermalfoundation:material:2053>*5).outputs(<thermalfoundation:material:2052>).duration(100).EUt(30).buildAndRegister();
    compressor.recipeBuilder().inputs(<thermalfoundation:material:2051>*5).outputs(<thermalfoundation:material:2050>).duration(100).EUt(30).buildAndRegister();
    
// Fluid Extractor
    fluidExtractor.recipeBuilder().inputs(<thermalfoundation:material:1027>).fluidOutputs(<liquid:petrotheum>*250).duration(20).EUt(120).buildAndRegister();
    fluidExtractor.recipeBuilder().inputs(<thermalfoundation:material:1026>).fluidOutputs(<liquid:aerotheum>*250).duration(20).EUt(120).buildAndRegister();
    fluidExtractor.recipeBuilder().inputs(<thermalfoundation:material:1024>).fluidOutputs(<liquid:pyrotheum>*250).duration(20).EUt(120).buildAndRegister();
    fluidExtractor.recipeBuilder().inputs(<thermalfoundation:material:1025>).fluidOutputs(<liquid:cryotheum>*250).duration(20).EUt(120).buildAndRegister();
    fluidExtractor.recipeBuilder().inputs(<integrateddynamics:crystalized_menril_block>).fluidOutputs(<liquid:menrilresin>*1000).duration(100).EUt(30).buildAndRegister();
    fluidExtractor.recipeBuilder().inputs(<integrateddynamics:crystalized_chorus_block>).fluidOutputs(<liquid:liquidchorus>*1000).duration(100).EUt(30).buildAndRegister();

// Chemcial Reactor
    chemReactor.recipeBuilder().inputs(<thermalfoundation:fertilizer:1>).fluidInputs(<liquid:redstone>*250).outputs(<thermalfoundation:fertilizer:2>).duration(40).EUt(30).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<thermalfoundation:fertilizer:0>).fluidInputs(<liquid:honey>*200).outputs(<thermalfoundation:fertilizer:1>).duration(40).EUt(30).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<ore:dustSulfur>*2).fluidInputs(<liquid:experience>*200).outputs(<minecraft:blaze_powder>).duration(400).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<ore:dustSulfur>*2).fluidInputs(<liquid:essence>*200).outputs(<minecraft:blaze_powder>).duration(400).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<gregtech:meta_item_1:2156>*2).fluidInputs(<liquid:experience>*200).outputs(<thermalfoundation:material:2051>).duration(400).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<gregtech:meta_item_1:2156>*2).fluidInputs(<liquid:essence>*200).outputs(<thermalfoundation:material:2051>).duration(400).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<ore:dustObsidian>*2).fluidInputs(<liquid:experience>*200).outputs(<thermalfoundation:material:2053>).duration(400).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<ore:dustObsidian>*2).fluidInputs(<liquid:essence>*200).outputs(<thermalfoundation:material:2053>).duration(400).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<minecraft:snowball>*2).fluidInputs(<liquid:experience>*200).outputs(<thermalfoundation:material:2049>).duration(400).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder().inputs(<minecraft:snowball>*2).fluidInputs(<liquid:essence>*200).outputs(<thermalfoundation:material:2049>).duration(400).EUt(120).buildAndRegister();

// Centrifuge
    centrifuge.recipeBuilder().inputs(<rustic:wildberries>).fluidOutputs(<liquid:wildberryjuice>*250).duration(50).EUt(30).buildAndRegister();
    centrifuge.recipeBuilder().inputs(<rustic:olives>).fluidOutputs(<liquid:oliveoil>*250).duration(50).EUt(30).buildAndRegister();
    centrifuge.recipeBuilder().inputs(<rustic:ironberries>).fluidOutputs(<liquid:ironberryjuice>*250).duration(50).EUt(30).buildAndRegister();
    centrifuge.recipeBuilder().inputs(<rustic:grapes>).fluidOutputs(<liquid:grapejuice>*250).duration(50).EUt(30).buildAndRegister();
    centrifuge.recipeBuilder().inputs(<minecraft:apple>).fluidOutputs(<liquid:applejuice>*250).duration(50).EUt(30).buildAndRegister();
    centrifuge.recipeBuilder().inputs(<rustic:honeycomb>).fluidOutputs(<liquid:honey>*250).duration(50).EUt(30).buildAndRegister();

// Fluid Canner
    fluidCanner.recipeBuilder().inputs(<minecraft:glass_bottle>).fluidInputs(<liquid:essence>*250).outputs(<minecraft:experience_bottle>).duration(10).EUt(30).buildAndRegister();
    fluidCanner.recipeBuilder().inputs(<minecraft:glass_bottle>).fluidInputs(<liquid:experience>*250).outputs(<minecraft:experience_bottle>).duration(10).EUt(30).buildAndRegister();

// Chemical Bath
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_0:9>).fluidInputs(<liquid:cryotheum>*500).outputs(<thermaldynamics:duct_0:5>).duration(100).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_0:6>).fluidInputs(<liquid:redstone>*200).outputs(<thermaldynamics:duct_0:2>).duration(20).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_0:7>).fluidInputs(<liquid:redstone>*200).outputs(<thermaldynamics:duct_0:3>).duration(20).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_0:8>).fluidInputs(<liquid:redstone>*200).outputs(<thermaldynamics:duct_0:4>).duration(20).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_32:0>).fluidInputs(<liquid:glowstone>*200).outputs(<thermaldynamics:duct_32:2>).duration(20).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_32:1>).fluidInputs(<liquid:glowstone>*200).outputs(<thermaldynamics:duct_32:3>).duration(20).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_32:4>).fluidInputs(<liquid:glowstone>*200).outputs(<thermaldynamics:duct_32:6>).duration(20).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_32:5>).fluidInputs(<liquid:glowstone>*200).outputs(<thermaldynamics:duct_32:7>).duration(20).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_64:0>).fluidInputs(<liquid:ender>*1000).outputs(<thermaldynamics:duct_64:2>).duration(200).EUt(30).buildAndRegister();
    chemBath.recipeBuilder().inputs(<thermaldynamics:duct_64:3>).fluidInputs(<liquid:aerotheum>*100).outputs(<thermaldynamics:duct_64:0>).duration(20).EUt(30).buildAndRegister();

// Blast Furnace
    blastFurnace.recipeBuilder()
        .inputs(<nuclearcraft:alloy:8>)
        .fluidInputs(<liquid:glowstone>*250)
        .outputs(<gregtech:meta_item_1:11501>)
        .duration(4500).EUt(120)
        .property("temperature", 5400).buildAndRegister();
    blastFurnace.recipeBuilder()
        .inputs(<nuclearcraft:alloy:7>)
        .fluidInputs(<liquid:redstone>*250)
        .outputs(<gregtech:meta_item_1:11502>)
        .duration(8820).EUt(120).property("temperature", 4500).buildAndRegister();

// Mixer 
    mixer.recipeBuilder().inputs([<gregtech:meta_item_1:2018>*2, <gregtech:meta_item_1:2044>]).outputs(<gregtech:meta_item_1:2705>*3).duration(400).EUt(8).buildAndRegister();
    mixer.recipeBuilder().inputs([<gregtech:meta_item_1:18>*2, <gregtech:meta_item_1:44>]).outputs(<gregtech:meta_item_1:705>*3).duration(44).EUt(8).buildAndRegister();



// Crafting Table Recipes

val hammer = <gregtech:meta_tool:6>;
val wireCutter = <gregtech:meta_tool:13>;
val screwdriver = <gregtech:meta_tool:11>;
val file = <gregtech:meta_tool:9>;
val wrench = <gregtech:meta_tool:8>;

val fluxLeadstone = <thermaldynamics:duct_0:0>;
val fluxHardened = <thermaldynamics:duct_0:1>;
val fluxRedstoneEmpty = <thermaldynamics:duct_0:6>;
val fluxRedstone = <thermaldynamics:duct_0:2>;
val fluxSignalumEmpty = <thermaldynamics:duct_0:7>;
val fluxSignalum = <thermaldynamics:duct_0:3>;
val fluxResonantEmpty = <thermaldynamics:duct_0:8>;
val fluxResonant = <thermaldynamics:duct_0:4>;
val fluxCryostabilizedEmpty = <thermaldynamics:duct_0:9>;
val fluxCryostabilized = <thermaldynamics:duct_0:5>;
val coilReception = <thermalfoundation:material:513>;
val coilTransmission = <thermalfoundation:material:514>;
val coilConduction = <thermalfoundation:material:515>;
val redstone = <minecraft:redstone>;
val glass = <ore:blockGlass>;
val glassHard = <thermalfoundation:glass:3>;
val circuitLV = <ore:circuitBasic>;
val circuitMV = <ore:circuitGood>;
val circuitHV = <ore:circuitAdvanced>;
val circuitEV = <ore:circuitExtreme>;
val circuitIV = <ore:circuitElite>;
val circuitLUV = <ore:circuitMaster>;
val circuitZPM = <ore:circuitUltimate>;
val circuitUV = <ore:circuitSuperconductor>;
val motorLV = <gregtech:meta_item_1:32600>;
val motorMV = <gregtech:meta_item_1:32601>;
val motorHV = <gregtech:meta_item_1:32602>;
val motorEV = <gregtech:meta_item_1:32603>;
val motorIV = <gregtech:meta_item_1:32604>;
val conveyorLV = <gregtech:meta_item_1:32630>;
val conveyorMV = <gregtech:meta_item_1:32631>;
val conveyorHV = <gregtech:meta_item_1:32632>;
val conveyorEV = <gregtech:meta_item_1:32633>;
val conveyorIV = <gregtech:meta_item_1:32634>;
val pumpLV = <gregtech:meta_item_1:32610>;
val pumpMV = <gregtech:meta_item_1:32611>;
val pumpHV = <gregtech:meta_item_1:32612>;
val pumpEV = <gregtech:meta_item_1:32613>;
val pumpIV = <gregtech:meta_item_1:32614>;
val plateElectrum = <ore:plateElectrum>;
val plateLumium = <ore:plateLumium>;
val plateSignalum = <ore:plateSignalum>;
val plateEnderium = <ore:plateEnderium>;
val plateBronze = <ore:plateBronze>;
val plateLead = <ore:plateLead>;
val plateCopper = <ore:plateCopper>;
val plateInvar = <ore:plateInvar>;
val plateTin = <ore:plateTin>;
val plateIron = <ore:plateIron>;
val plateQuartz = <ore:plateQuartz>;
val plateSilver = <ore:plateSilver>;
val plateNickel = <ore:plateNickel>;
val plateSteel = <ore:plateSteel>;
val plateConstantan = <ore:plateConstantan>;
val platePlatinum = <ore:platePlatinum>;
val plateAluminium = <ore:plateAluminium>;
val plateCurvedCopper = <ore:plateCurvedCopper>;
val plateCurvedTin = <ore:plateCurvedTin>;
val plateCurvedLead = <ore:plateCurvedLead>;
val plateCurvedAluminium = <ore:plateCurvedAluminium>;
val plateCurvedNickel = <ore:plateCurvedNickel>;
val plateCurvedSilver = <ore:plateCurvedSilver>;
val plateCurvedPlatinum = <ore:plateCurvedPlatinum>;
val plateCurvedSteel = <ore:plateCurvedSteel>;
val plateCurvedElectrum = <ore:plateCurvedElectrum>;
val plateCurvedInvar = <ore:plateCurvedInvar>;
val plateCurvedBronze = <ore:plateCurvedBronze>;
val plateCurvedConstantan = <ore:plateCurvedConstantan>;
val gearCopper = <ore:gearCopper>;
val rodGold = <ore:stcikGold>;
val rodSilver = <ore:stickSilver>;
val rodElectrum = <ore:stickelectrum>;
val wireRedalloy = <ore:wireGtSingleRedAlloy>;

// Leadstone Fluxduct
recipes.remove(fluxLeadstone);
recipes.addShaped(fluxLeadstone*3, 
[[plateLead,redstone,plateLead]
,[<gregtech:cable:35>,<gregtech:cable:35>,<gregtech:cable:35>]
,[plateLead,redstone,plateLead]]);

// Hardened Fluxduct
recipes.remove(fluxHardened);
recipes.addShaped(fluxHardened*3,
[[plateInvar,redstone,plateInvar]
,[fluxLeadstone,fluxLeadstone,fluxLeadstone]
,[plateInvar,redstone,plateInvar]]);

// Redstone Energy Fluxduct (Empty)
recipes.remove(fluxRedstoneEmpty);
recipes.addShaped(fluxRedstoneEmpty*3,
[[plateElectrum,glassHard,plateElectrum]
,[null,null,null]
,[plateElectrum,glassHard,plateElectrum]]);

// Signalum Fluxduct (Empty)
recipes.remove(fluxSignalumEmpty);
recipes.addShaped(fluxSignalumEmpty*3,
[[plateSignalum,redstone,plateSignalum]
,[fluxRedstoneEmpty,fluxRedstoneEmpty,fluxRedstoneEmpty]
,[plateSignalum,redstone,plateSignalum]]);

// Signalum Fluxduct (Filled)
recipes.remove(<thermaldynamics:duct_0:3>);
recipes.addShaped(<thermaldynamics:duct_0:3>*3,
[[plateSignalum,redstone,plateSignalum]
,[<thermaldynamics:duct_0:2>,<thermaldynamics:duct_0:2>,<thermaldynamics:duct_0:2>]
,[plateSignalum,redstone,plateSignalum]]);

// Resonant Fluxduct (Empty)
recipes.remove(fluxResonantEmpty);
recipes.addShaped(fluxResonantEmpty*3,
[[plateEnderium,redstone,plateEnderium]
,[fluxSignalumEmpty,fluxSignalumEmpty,fluxSignalumEmpty]
,[plateEnderium,redstone,plateEnderium]]);

// Resonant Fluxduct (Filled)
recipes.remove(<thermaldynamics:duct_0:4>);
recipes.addShaped(<thermaldynamics:duct_0:4>,
[[plateEnderium,redstone,plateEnderium]
,[<thermaldynamics:duct_0:3>,<thermaldynamics:duct_0:3>,<thermaldynamics:duct_0:3>]
,[plateEnderium,redstone,plateEnderium]]);

// Cryostabilized (Empty)
recipes.remove(fluxCryostabilizedEmpty);
recipes.addShaped(fluxCryostabilizedEmpty,
[[plateElectrum,glassHard,plateElectrum]
,[glassHard,<thermaldynamics:duct_0:4>,glassHard]
,[plateElectrum,glassHard,plateElectrum]]);

// Fluiduct (Transparent)
recipes.remove(<thermaldynamics:duct_16:0>);
recipes.addShapeless(<thermaldynamics:duct_16:0>*3, [<thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:1>, <thermaldynamics:duct_16:1>, glass]);
recipes.addShaped(<thermaldynamics:duct_16:0>*3,
[[plateCopper,plateCopper,plateCopper]
,[hammer,glass,file]
,[plateCopper,plateCopper,plateCopper]]);

// Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:1>);
recipes.addShapeless(<thermaldynamics:duct_16:1>*3, [<thermaldynamics:duct_16:0>, <thermaldynamics:duct_16:0>, <thermaldynamics:duct_16:0>, plateLead]);
recipes.addShaped(<thermaldynamics:duct_16:1>*3,
[[plateCopper,plateLead,plateCopper]
,[hammer,null,file]
,[plateCopper,plateLead,plateCopper]]);

// Hardened Fluiduct (Transparent)
recipes.remove(<thermaldynamics:duct_16:2>);
recipes.addShapeless(<thermaldynamics:duct_16:2>*3, [<thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, <thermaldynamics:duct_16:3>, glass]);
recipes.addShaped(<thermaldynamics:duct_16:2>*3,
[[plateInvar,plateInvar,plateInvar]
,[hammer,glassHard,file]
,[plateInvar,plateInvar,plateInvar]]);

// Hardened Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:3>);
recipes.addShapeless(<thermaldynamics:duct_16:3>*3, [<thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, <thermaldynamics:duct_16:2>, plateLead]);
recipes.addShaped(<thermaldynamics:duct_16:3>*3,
[[plateInvar,plateLead,plateInvar]
,[hammer,null,file]
,[plateInvar,plateLead,plateInvar]]);

// Signalum-Plated Fluiduct (Transparent)
recipes.remove(<thermaldynamics:duct_16:4>);
recipes.addShapeless(<thermaldynamics:duct_16:4>*3, [<thermaldynamics:duct_16:5>, <thermaldynamics:duct_16:5>, <thermaldynamics:duct_16:5>, glassHard]);
recipes.addShaped(<thermaldynamics:duct_16:4>*3,
[[plateSignalum,plateElectrum,plateSignalum]
,[<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>,<thermaldynamics:duct_16:2>]
,[plateSignalum,plateElectrum,plateSignalum]]);

// Signalum-Plated Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:5>);
recipes.addShapeless(<thermaldynamics:duct_16:5>*3, [<thermaldynamics:duct_16:4>, <thermaldynamics:duct_16:4>, <thermaldynamics:duct_16:4>, plateLead]);
recipes.addShaped(<thermaldynamics:duct_16:5>*3,
[[plateSignalum,plateElectrum,plateSignalum]
,[<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>]
,[plateSignalum,plateElectrum,plateSignalum]]);

// Super-Laminar Fluiduct (Transparent)
recipes.remove(<thermaldynamics:duct_16:6>);
recipes.addShapeless(<thermaldynamics:duct_16:6>*3, [<thermaldynamics:duct_16:7>, <thermaldynamics:duct_16:7>, <thermaldynamics:duct_16:7>, glassHard]);
recipes.addShaped(<thermaldynamics:duct_16:6>,
[[plateEnderium,glassHard,plateEnderium]
,[glassHard,<thermaldynamics:duct_16:2>,glassHard]
,[plateEnderium,glassHard,plateEnderium]]);

// Super-Laminar Fluiduct (Opaque)
recipes.remove(<thermaldynamics:duct_16:7>);
recipes.addShapeless(<thermaldynamics:duct_16:7>*3, [<thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, <thermaldynamics:duct_16:6>, plateLead]);
recipes.addShaped(<thermaldynamics:duct_16:7>,
[[plateEnderium,glassHard,plateEnderium]
,[glassHard,<thermaldynamics:duct_16:3>,glassHard]
,[plateEnderium,glassHard,plateEnderium]]);

// Item Duct (Transparent)
recipes.removeByRecipeName("thermaldynamics:duct_32");
recipes.removeByRecipeName("thermaldynamics:duct_32_10");
recipes.addShapeless(<thermaldynamics:duct_32:0>*3,[<thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>, <thermaldynamics:duct_32:1>, glassHard]);
recipes.addShaped(<thermaldynamics:duct_32:0>*3,
[[plateTin,plateTin,plateTin]
,[file,glassHard,hammer]
,[plateTin,plateTin,plateTin]]);

// Item Duct (Opaque)
recipes.removeByRecipeName("thermaldynamics:duct_32_1");
recipes.removeByRecipeName("thermaldynamics:duct_32_11");
recipes.addShapeless(<thermaldynamics:duct_32:1>*3,[<thermaldynamics:duct_32:0>, <thermaldynamics:duct_32:0>, <thermaldynamics:duct_32:0>, plateLead]);
recipes.addShaped(<thermaldynamics:duct_32:1>*3,
[[plateTin,plateLead,plateTin]
,[file,null,hammer]
,[plateTin,plateLead,plateTin]]); 

// Impulse Itemduct (Transparent)
recipes.removeByRecipeName("thermaldynamics:duct_32_12");
recipes.addShapeless(<thermaldynamics:duct_32:2>*3,[<thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, <thermaldynamics:duct_32:3>, glassHard]);

// Impulse Itemduct (Opaque)
recipes.removeByRecipeName("thermaldynamics:duct_32_13");
recipes.addShapeless(<thermaldynamics:duct_32:3>*3,[<thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:2>, <thermaldynamics:duct_32:2>, glassHard]);

// Signalum-Plated Itemduct (Transparent)
recipes.removeByRecipeName("thermaldynamics:duct_32_2");
recipes.removeByRecipeName("thermaldynamics:duct_32_4");
recipes.removeByRecipeName("thermaldynamics:duct_32_14");
recipes.addShapeless(<thermaldynamics:duct_32:4>*3, [<thermaldynamics:duct_32:5>, <thermaldynamics:duct_32:5>, <thermaldynamics:duct_32:5>, glassHard]);
recipes.addShaped(<thermaldynamics:duct_32:4>*3,
[[plateSignalum,plateElectrum,plateSignalum]
,[<thermaldynamics:duct_32:0>,<thermaldynamics:duct_32:0>,<thermaldynamics:duct_32:0>]
,[plateSignalum,plateElectrum,plateSignalum]]);

// Signalum-Plated Itemduct (Opaque)
recipes.removeByRecipeName("thermaldynamics:duct_32_3");
recipes.removeByRecipeName("thermaldynamics:duct_32_5");
recipes.removeByRecipeName("thermaldynamics:duct_32_15");
recipes.addShapeless(<thermaldynamics:duct_32:5>*3, [<thermaldynamics:duct_32:4>, <thermaldynamics:duct_32:4>, <thermaldynamics:duct_32:4>, plateLead]);
recipes.addShaped(<thermaldynamics:duct_32:5>*3,
[[plateSignalum,plateElectrum,plateSignalum]
,[<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>,<thermaldynamics:duct_16:1>]
,[plateSignalum,plateElectrum,plateSignalum]]);

// Signalum-Plated Impulse Itemduct (Transparent)
recipes.removeByRecipeName("thermaldynamics:duct_32_6");
recipes.removeByRecipeName("thermaldynamics:duct_32_8");
recipes.removeByRecipeName("thermaldynamics:duct_32_16");
recipes.addShapeless(<thermaldynamics:duct_32:6>*3, [<thermaldynamics:duct_32:7>, <thermaldynamics:duct_32:7>, <thermaldynamics:duct_32:7>, glassHard]);
recipes.addShaped(<thermaldynamics:duct_32:6>*3,
[[plateSignalum,plateElectrum,plateSignalum]
,[<thermaldynamics:duct_32:2>,<thermaldynamics:duct_32:2>,<thermaldynamics:duct_32:2>]
,[plateSignalum,plateElectrum,plateSignalum]]);

// Signalum-Plated Impulse Itemduct (Opaque)
recipes.removeByRecipeName("thermaldynamics:duct_32_7");
recipes.removeByRecipeName("thermaldynamics:duct_32_9");
recipes.removeByRecipeName("thermaldynamics:duct_32_17");
recipes.addShapeless(<thermaldynamics:duct_32:7>*3, [<thermaldynamics:duct_32:6>, <thermaldynamics:duct_32:6>, <thermaldynamics:duct_32:6>, plateLead]);
recipes.addShaped(<thermaldynamics:duct_32:7>*3,
[[plateSignalum,plateElectrum,plateSignalum]
,[<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>,<thermaldynamics:duct_16:3>]
,[plateSignalum,plateElectrum,plateSignalum]]);

// Viaduct (Untreated)
recipes.remove(<thermaldynamics:duct_64:3>);
recipes.addShaped(<thermaldynamics:duct_64:3>*2,
[[plateBronze,glassHard,plateBronze]
,[glassHard,null,glassHard]
,[plateBronze,glassHard,plateBronze]]);

// Viaduct Long-range
recipes.remove(<thermaldynamics:duct_64:1>);
recipes.addShaped(<thermaldynamics:duct_64:1>*4,
[[plateLead,glassHard,plateLead]
,[glassHard,null,glassHard]
,[plateLead,glassHard,plateLead]]);

// Pipe Servo
recipes.remove(<thermaldynamics:servo:0>);
recipes.addShaped(<thermaldynamics:servo:0>,
[[wrench,<gregtech:meta_item_1:32630>,screwdriver]
,[plateIron,redstone,plateIron]]);

// Pipe Hardened Servo
recipes.remove(<thermaldynamics:servo:1>);
recipes.addShaped(<thermaldynamics:servo:1>,
[[wrench,<gregtech:meta_item_1:32631>,screwdriver]
,[plateInvar,redstone,plateInvar]]);
recipes.addShaped(<thermaldynamics:servo:1>,
[[wrench,<gregtech:meta_item_1:32631>,screwdriver]
,[plateInvar,<thermaldynamics:servo:0>,plateInvar]]);

// Pipe Reinforced Servo
recipes.remove(<thermaldynamics:servo:2>);
recipes.addShaped(<thermaldynamics:servo:2>,
[[wrench,conveyorHV,screwdriver]
,[plateElectrum,redstone,plateElectrum]]);
recipes.addShaped(<thermaldynamics:servo:2>,
[[wrench,conveyorHV,screwdriver]
,[plateElectrum,<thermaldynamics:servo:1>,plateElectrum]]);

// Pipe Signalum Servo
recipes.remove(<thermaldynamics:servo:3>);
recipes.addShaped(<thermaldynamics:servo:3>,
[[wrench,<gregtech:meta_item_1:32633>,screwdriver]
,[plateSignalum,redstone,plateSignalum]]);
recipes.addShaped(<thermaldynamics:servo:3>,
[[wrench,<gregtech:meta_item_1:32633>,screwdriver]
,[plateSignalum,<thermaldynamics:servo:2>,plateSignalum]]);

// Pipe Enderium Servo
recipes.remove(<thermaldynamics:servo:4>);
recipes.addShaped(<thermaldynamics:servo:4>,
[[wrench,<gregtech:meta_item_1:32634>,screwdriver]
,[plateEnderium,redstone,plateEnderium]]);
recipes.addShaped(<thermaldynamics:servo:4>,
[[wrench,<gregtech:meta_item_1:32634>,screwdriver]
,[plateEnderium,<thermaldynamics:servo:3>,plateEnderium]]);

// Filter
recipes.remove(<thermaldynamics:filter:0>);
recipes.addShapeless(<thermaldynamics:filter:0>, [<thermaldynamics:servo:0>, <gregtech:meta_item_1:32103>]);

// Hardened Filter
recipes.remove(<thermaldynamics:filter:1>);
recipes.addShapeless(<thermaldynamics:filter:1>, [<thermaldynamics:servo:1>, <gregtech:meta_item_1:32103>]);

// Reinforced Filter
recipes.remove(<thermaldynamics:filter:2>);
recipes.addShapeless(<thermaldynamics:filter:2>, [<thermaldynamics:servo:2>, <gregtech:meta_item_1:32103>]);

// Signalum Filter
recipes.remove(<thermaldynamics:filter:3>);
recipes.addShapeless(<thermaldynamics:filter:3>, [<thermaldynamics:servo:3>, <gregtech:meta_item_1:32103>]);

// Enderium Filter
recipes.remove(<thermaldynamics:filter:4>);
recipes.addShapeless(<thermaldynamics:filter:4>, [<thermaldynamics:servo:4>, <gregtech:meta_item_1:32103>]);

// Retriever
recipes.remove(<thermaldynamics:retriever:0>);
recipes.addShaped(<thermaldynamics:retriever:0>,
[[wrench,<gregtech:meta_item_1:32650>,screwdriver]
,[plateIron,<minecraft:ender_eye>,plateIron]]);

// Hardened Retriever
recipes.remove(<thermaldynamics:retriever:1>);
recipes.addShaped(<thermaldynamics:retriever:1>,
[[wrench,<gregtech:meta_item_1:32651>,screwdriver]
,[plateInvar,<minecraft:ender_eye>,plateInvar]]);
recipes.addShaped(<thermaldynamics:retriever:1>,
[[wrench,<gregtech:meta_item_1:32651>,screwdriver]
,[plateInvar,<thermaldynamics:retriever:0>,plateInvar]]);

// Reinforced Retriever
recipes.remove(<thermaldynamics:retriever:2>);
recipes.addShaped(<thermaldynamics:retriever:2>,
[[wrench,<gregtech:meta_item_1:32652>,screwdriver]
,[plateElectrum,<minecraft:ender_eye>,plateElectrum]]);
recipes.addShaped(<thermaldynamics:retriever:2>,
[[wrench,<gregtech:meta_item_1:32652>,screwdriver]
,[plateElectrum,<thermaldynamics:retriever:2>,plateElectrum]]);

// Signalum Retriever
recipes.remove(<thermaldynamics:retriever:3>);
recipes.addShaped(<thermaldynamics:retriever:3>,
[[wrench,<gregtech:meta_item_1:32653>,screwdriver]
,[plateSignalum,<minecraft:ender_eye>,plateSignalum]]);
recipes.addShaped(<thermaldynamics:retriever:3>,
[[wrench,<gregtech:meta_item_1:32653>,screwdriver]
,[plateSignalum,<thermaldynamics:retriever:2>,plateSignalum]]);

// Enderium Retriever
recipes.remove(<thermaldynamics:retriever:4>);
recipes.addShaped(<thermaldynamics:retriever:4>,
[[wrench,<gregtech:meta_item_1:32654>,screwdriver]
,[plateEnderium,<minecraft:ender_eye>,plateEnderium]]);
recipes.addShaped(<thermaldynamics:retriever:4>,
[[wrench,<gregtech:meta_item_1:32654>,screwdriver]
,[plateEnderium,<thermaldynamics:retriever:3>,plateEnderium]]);

// Redstone Relay
recipes.remove(<thermaldynamics:relay>);
recipes.addShaped(<thermaldynamics:relay>,
[[plateQuartz,plateSignalum,plateQuartz]
,[plateLead,redstone,plateLead]]);

// Machine Frame
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>,
[[plateIron,glassHard,plateIron]
,[fluxLeadstone,<gregtech:machine_casing:3>,fluxLeadstone]
,[plateIron,glassHard,plateIron]]);

// Device Frame
recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>,
[[plateTin,glass,plateTin]
,[glass,<gregtech:machine_casing:3>,glass]
,[plateTin,glass,plateTin]]);

// Phytogenic Insolator
recipes.remove(<thermalexpansion:machine:4>);
recipes.addShaped(<thermalexpansion:machine:4>,
[[circuitHV,<ore:gearLumium>,circuitHV]
,[<ore:dirt>,<thermalexpansion:frame>,<ore:dirt>]
,[motorHV,coilReception,conveyorHV]]);

// Magma Crucible
recipes.remove(<thermalexpansion:machine:6>);
recipes.addShaped(<thermalexpansion:machine:6>,
[[circuitHV,glassHard,circuitHV]
,[<gregtech:metal_casing:1>,<thermalexpansion:frame>,<gregtech:metal_casing:1>]
,[motorHV,coilReception,conveyorHV]]);

// Arcane Ensorcellator
recipes.remove(<thermalexpansion:machine:13>);
recipes.addShaped(<thermalexpansion:machine:13>,
[[circuitHV,<minecraft:enchanting_table>,circuitHV]
,[<ore:blockLapis>,<thermalexpansion:frame>,<ore:blockLapis>]
,[motorHV,coilReception,conveyorHV]]);

// Igneous Extruder
recipes.remove(<thermalexpansion:machine:15>);
recipes.addShaped(<thermalexpansion:machine:15>,
[[circuitHV,glassHard,circuitHV]
,[plateInvar,<thermalexpansion:frame>,plateInvar]
,[motorHV,coilReception,conveyorHV]]);

// Aqueous Accumulator
recipes.remove(<thermalexpansion:device:0>);
recipes.addShaped(<thermalexpansion:device:0>,
[[circuitHV,<minecraft:bucket>,circuitHV]
,[glassHard,<thermalexpansion:frame:64>,glassHard]
,[motorHV,screwdriver,pumpHV]]);

// Thermal Mediator
recipes.remove(<thermalexpansion:device:2>);
recipes.addShaped(<thermalexpansion:device:2>,
[[circuitHV,plateCopper,circuitHV]
,[plateInvar,<thermalexpansion:frame:64>,plateInvar]
,[motorHV,screwdriver,pumpHV]]);

// Steam Dynamo
recipes.remove(<thermalexpansion:dynamo:0>);
recipes.addShaped(<thermalexpansion:dynamo:0>,
[[circuitLV,coilTransmission,circuitLV]
,[plateIron,gearCopper,plateIron]
,[plateCopper,motorLV,plateCopper]]);

// Portable tank
recipes.remove(<thermalexpansion:tank>);
recipes.addShaped(<thermalexpansion:tank>,
[[plateCopper,glass,plateCopper]
,[glass,pumpLV,glass]
,[plateCopper,glass,plateCopper]]);

// Flux Capacitor (Basic)
recipes.removeByRecipeName("thermalexpansion:capacitor");
recipes.addShaped(<thermalexpansion:capacitor:0>,
[[circuitLV,redstone,circuitLV]
,[plateLead,plateCopper,plateLead]
,[redstone,<ore:dustSulfur>,redstone]]);

// Flux Capacitor (Hardened)
recipes.removeByRecipeName("thermalexpansion:capacitor_1");
recipes.addShaped(<thermalexpansion:capacitor:1>,
[[circuitMV,redstone,circuitMV]
,[plateInvar,<thermalexpansion:capacitor:0>,plateInvar]
,[redstone,plateTin,redstone]]);

// Flux Capacitor (Reinforced)
recipes.removeByRecipeName("thermalexpansion:capacitor_2");
recipes.addShaped(<thermalexpansion:capacitor:2>,
[[circuitHV,redstone,circuitHV]
,[plateElectrum,<thermalexpansion:capacitor:1>,plateElectrum]
,[redstone,glassHard,redstone]]);

// Flux Capacitor (Signalum)
recipes.removeByRecipeName("thermalexpansion:capacitor_3");
recipes.addShaped(<thermalexpansion:capacitor:3>,
[[circuitEV,redstone,circuitEV]
,[plateSignalum,<thermalexpansion:capacitor:2>,plateSignalum]
,[redstone,<ore:dustCryotheum>,redstone]]);

// Flux Capacitor (Enderium)
recipes.removeByRecipeName("thermalexpansion:capacitor_4");
recipes.addShaped(<thermalexpansion:capacitor:4>,
[[circuitIV,redstone,circuitIV]
,[plateEnderium,<thermalexpansion:capacitor:3>,plateEnderium]
,[redstone,<ore:dustPyrotheum>,redstone]]);

// Reservoir (Basic)
recipes.removeByRecipeName("thermalexpansion:reservoir");
recipes.addShaped(<thermalexpansion:reservoir>,
[[plateCopper,plateTin,plateCopper]
,[glass,<minecraft:bucket>,glass]
,[plateCopper,pumpLV,plateCopper]]);

// Reservoir (Hardened)
recipes.removeByRecipeName("thermalexpansion:reservoir_1");
recipes.addShaped(<thermalexpansion:reservoir:1>,
[[plateInvar,plateCopper,plateInvar]
,[glass,<thermalexpansion:reservoir>,glass]
,[plateInvar,pumpMV,plateInvar]]);

// Reservoir (Reinforced)
recipes.removeByRecipeName("thermalexpansion:reservoir_2");
recipes.addShaped(<thermalexpansion:reservoir:2>,
[[plateElectrum,plateInvar,plateElectrum]
,[glassHard,<thermalexpansion:reservoir:1>,glassHard]
,[plateElectrum,pumpHV,plateElectrum]]);

// Reservoir (Signalum)
recipes.removeByRecipeName("thermalexpansion:reservoir_3");
recipes.addShaped(<thermalexpansion:reservoir:3>,
[[plateSignalum,<ore:dustCryotheum>,plateSignalum]
,[glassHard,<thermalexpansion:reservoir:2>,glassHard]
,[plateSignalum,pumpEV,plateSignalum]]);

// Reservoir (Enderium)
recipes.removeByRecipeName("thermalexpansion:reservoir_4");
recipes.addShaped(<thermalexpansion:reservoir:4>,
[[plateEnderium,<ore:dustPyrotheum>,plateEnderium]
,[glassHard,<thermalexpansion:reservoir:3>,glassHard]
,[plateEnderium,pumpIV,plateEnderium]]);

// Augment Auxillary Reception coil
recipes.remove(<thermalexpansion:augment:128>);
recipes.addShaped(<thermalexpansion:augment:128>,
[[plateElectrum,circuitHV,plateElectrum]
,[fluxRedstone,coilReception,fluxRedstone]
,[plateElectrum,circuitHV,plateElectrum]]);

// Augment Nutrient Recovery
recipes.remove(<thermalexpansion:augment:320>);
recipes.addShaped(<thermalexpansion:augment:320>,
[[plateSilver,circuitHV,plateSilver]
,[<thermalfoundation:fertilizer:2>,motorHV,<thermalfoundation:fertilizer:2>]
,[plateSilver,glassHard,plateSilver]]);

// Augment Sapling infuser
recipes.remove(<thermalexpansion:augment:323>);
recipes.addShaped(<thermalexpansion:augment:323>,
[[plateInvar,circuitHV,plateInvar]
,[plateLumium,motorHV,plateLumium]
,[plateInvar,<minecraft:piston>,plateInvar]]);

// Augment Monoculture Cycle
recipes.remove(<thermalexpansion:augment:324>);
recipes.addShaped(<thermalexpansion:augment:324>,
[[plateSignalum,circuitHV,plateSignalum]
,[plateNickel,coilConduction,plateNickel]
,[plateSignalum,<thermalfoundation:fertilizer:2>,plateSignalum]]);

// Augment Pyroconvective Loop
recipes.remove(<thermalexpansion:augment:352>);
recipes.addShaped(<thermalexpansion:augment:352>,
[[plateInvar,circuitHV,plateInvar]
,[<minecraft:piston>,coilConduction,<minecraft:piston>]
,[plateInvar,<gregtech:metal_casing:1>,plateInvar]]);

// Augment Auxilary transmission Coil
recipes.remove(<thermalexpansion:augment:512>);
recipes.addShaped(<thermalexpansion:augment:512>,
[[plateSilver,circuitHV,plateSilver]
,[fluxRedstone,coilTransmission,fluxRedstone]
,[plateSilver,circuitHV,plateSilver]]);

// Augment Fuel Catalyzer
recipes.remove(<thermalexpansion:augment:513>);
recipes.addShaped(<thermalexpansion:augment:513>,
[[plateLead,circuitHV,plateLead]
,[motorHV,coilConduction,motorHV]
,[plateLead,circuitHV,plateLead]]);

// Augment Transmission Coil Ducting
recipes.remove(<thermalexpansion:augment:514>);
recipes.addShaped(<thermalexpansion:augment:514>,
[[plateLead,circuitHV,plateLead]
,[<thermaldynamics:duct_32:5>,coilConduction,<thermaldynamics:duct_16:5>]
,[plateLead,circuitHV,plateLead]]);

// Augment Excitation Filed Limiter
recipes.remove(<thermalexpansion:augment:515>);
recipes.addShaped(<thermalexpansion:augment:515>,
[[plateLead,circuitHV,plateLead]
,[plateElectrum,coilConduction,plateElectrum]
,[plateLead,circuitHV,plateLead]]);

// Augment Excitation Filed Limiter
recipes.remove(<thermalexpansion:augment:515>);
recipes.addShaped(<thermalexpansion:augment:515>,
[[plateLead,circuitHV,plateLead]
,[plateElectrum,coilConduction,plateElectrum]
,[plateLead,circuitHV,plateLead]]);

// Augment Boiler Conversion
recipes.remove(<thermalexpansion:augment:576>);
recipes.addShaped(<thermalexpansion:augment:576>,
[[plateBronze,circuitHV,plateBronze]
,[glassHard,<minecraft:bucket>,glassHard]
,[plateBronze,circuitHV,plateBronze]]);

// Augment Trubine Conversion
recipes.remove(<thermalexpansion:augment:640>);
recipes.addShaped(<thermalexpansion:augment:640>,
[[plateBronze,circuitHV,plateBronze]
,[motorHV,<gregtech:meta_item_2:1818>,motorHV]
,[plateBronze,circuitHV,plateBronze]]);

// Crescent Hammer
recipes.remove(<thermalfoundation:wrench>);
recipes.addShaped(<thermalfoundation:wrench>,
[[plateIron,hammer,plateIron]
,[plateIron,plateTin,plateIron]
,[null,plateIron,null]]);

// Multimeter
recipes.remove(<thermalfoundation:meter>);
recipes.addShaped(<thermalfoundation:meter>,
[[plateCopper,circuitHV,plateCopper]
,[plateLead,coilConduction,plateLead]
,[fluxLeadstone,plateLumium,fluxLeadstone]]);

// Hardened Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:0>);
recipes.addShaped(<thermalfoundation:upgrade:0>,
[[circuitEV,plateInvar,circuitEV]
,[plateInvar,null,plateInvar]
,[fluxHardened,plateInvar,fluxHardened]]);

// Reinforced Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:1>);
recipes.addShaped(<thermalfoundation:upgrade:1>,
[[circuitIV,plateElectrum,circuitIV]
,[plateElectrum,null,plateElectrum]
,[fluxRedstone,plateElectrum,fluxRedstone]]);

// Signalum Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:2>);
recipes.addShaped(<thermalfoundation:upgrade:2>,
[[circuitLUV,plateSignalum,circuitLUV]
,[plateSignalum,null,plateSignalum]
,[fluxSignalum,plateSignalum,fluxSignalum]]);

// Enderium Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:3>);
recipes.addShaped(<thermalfoundation:upgrade:3>,
[[circuitZPM,plateEnderium,circuitZPM]
,[plateEnderium,null,plateEnderium]
,[fluxResonant,plateSignalum,fluxResonant]]);

// Phyto-grow
recipes.remove(<thermalfoundation:fertilizer:0>);
recipes.addShapeless(<thermalfoundation:fertilizer:0>*4, [<gregtech:meta_item_1:2196>, <gregtech:meta_item_1:2196>, <gregtech:meta_item_1:2156>, <gregtech:meta_item_1:2089>]);
recipes.addShapeless(<thermalfoundation:fertilizer:0>*16, [<ore:dustCharcoal>, <gregtech:meta_item_1:2156>, <gregtech:meta_item_1:2089>]);

// Rich Pyto-grow
recipes.remove(<thermalfoundation:fertilizer:1>);
recipes.addShapeless(<thermalfoundation:fertilizer:1>*4, [<gregtech:meta_item_1:2196>, <gregtech:meta_item_1:2196>, <gregtech:meta_item_1:2156>, <gregtech:meta_item_1:2402>]);
recipes.addShapeless(<thermalfoundation:fertilizer:1>*16, [<ore:dustCharcoal>, <gregtech:meta_item_1:2156>, <gregtech:meta_item_1:2402>]);

// Reception Coil
recipes.remove(coilReception);
recipes.addShaped(coilReception,
[[null,wireRedalloy,rodGold]
,[wireRedalloy,rodGold,wireRedalloy]
,[rodGold,wireRedalloy,null]]);

// Transmission Coil
recipes.remove(coilTransmission);
recipes.addShaped(coilTransmission,
[[null,wireRedalloy,rodSilver]
,[wireRedalloy,rodSilver,wireRedalloy]
,[rodSilver,wireRedalloy,]]);

// Conduction Coil
recipes.remove(coilConduction);
recipes.addShaped(coilConduction,
[[rodElectrum,wireRedalloy,null]
,[wireRedalloy,rodElectrum,wireRedalloy]
,[null,wireRedalloy,rodElectrum]]);

// Tool Casing
recipes.remove(<thermalfoundation:material:640>);
recipes.addShaped(<thermalfoundation:material:640>,
[[screwdriver,plateElectrum,fluxLeadstone]
,[plateElectrum,motorLV,plateElectrum]
,[fluxLeadstone,plateElectrum,<thermalexpansion:capacitor:0>]]);

// Fluxbore Basic
recipes.removeByRecipeName("thermalinnovation:drill");
recipes.addShaped(<thermalinnovation:drill:0>,
[[screwdriver,<gregtech:meta_item_2:8033>,wrench]
,[plateIron,<thermalfoundation:material:640>,plateIron]
,[plateTin,circuitLV,plateTin]]);

// Fluxbore Hardened
recipes.removeByRecipeName("thermalinnovation:drill_1");
recipes.addShaped(<thermalinnovation:drill:1>,
[[screwdriver,<gregtech:meta_item_2:8184>,wrench]
,[plateInvar,<thermalinnovation:drill:0>,plateInvar]
,[circuitMV,plateInvar,<thermalexpansion:capacitor:1>]]);

// Fluxbore Reinforced
recipes.removeByRecipeName("thermalinnovation:drill_2");
recipes.addShaped(<thermalinnovation:drill:2>,
[[screwdriver,<gregtech:meta_item_2:8001>,wrench]
,[plateElectrum,<thermalinnovation:drill:1>,plateElectrum]
,[circuitHV,plateElectrum,<thermalexpansion:capacitor:2>]]);

// Fluxbore Signalum
recipes.removeByRecipeName("thermalinnovation:drill_3");
recipes.addShaped(<thermalinnovation:drill:3>,
[[screwdriver,<gregtech:meta_item_2:8072>,wrench]
,[plateSignalum,<thermalinnovation:drill:2>,plateSignalum]
,[circuitEV,plateSignalum,<thermalexpansion:capacitor:3>]]);

// Fluxbore Enderium
recipes.removeByRecipeName("thermalinnovation:drill_4");
recipes.addShaped(<thermalinnovation:drill:4>,
[[screwdriver,<gregtech:meta_item_2:8235>,wrench]
,[plateEnderium,<thermalinnovation:drill:3>,plateEnderium]
,[circuitIV,plateEnderium,<thermalexpansion:capacitor:4>]]);

// Fluxsaw Basic
recipes.removeByRecipeName("thermalinnovation:saw");
recipes.addShaped(<thermalinnovation:saw:0>,
[[screwdriver,<gregtech:meta_item_2:14033>,wrench]
,[plateIron,<thermalfoundation:material:640>,plateIron]
,[plateTin,circuitLV,plateTin]]);

// Fluxsaw Hardened
recipes.removeByRecipeName("thermalinnovation:saw_1");
recipes.addShaped(<thermalinnovation:saw:1>,
[[screwdriver,<gregtech:meta_item_2:14184>,wrench]
,[plateInvar,<thermalinnovation:saw:0>,plateInvar]
,[circuitMV,plateInvar,<thermalexpansion:capacitor:1>]]);

// Fluxsaw Reinforced
recipes.removeByRecipeName("thermalinnovation:saw_2");
recipes.addShaped(<thermalinnovation:saw:2>,
[[screwdriver,<gregtech:meta_item_2:14001>,wrench]
,[plateElectrum,<thermalinnovation:saw:1>,plateElectrum]
,[circuitHV,plateElectrum,<thermalexpansion:capacitor:2>]]);

// Fluxsaw Signalum
recipes.removeByRecipeName("thermalinnovation:saw_3");
recipes.addShaped(<thermalinnovation:saw:3>,
[[screwdriver,<gregtech:meta_item_2:14072>,wrench]
,[plateSignalum,<thermalinnovation:saw:2>,plateSignalum]
,[circuitEV,plateSignalum,<thermalexpansion:capacitor:3>]]);

// Fluxsaw Enderium
recipes.removeByRecipeName("thermalinnovation:saw_4");
recipes.addShaped(<thermalinnovation:saw:4>,
[[screwdriver,<gregtech:meta_item_2:14235>,wrench]
,[plateEnderium,<thermalinnovation:saw:3>,plateEnderium]
,[circuitIV,plateEnderium,<thermalexpansion:capacitor:4>]]);

// Fluxomagnet Basic
recipes.removeByRecipeName("thermalinnovation:magnet");
recipes.addShaped(<thermalinnovation:magnet:0>,
[[<gregtech:meta_item_1:12297>,circuitLV,<gregtech:meta_item_1:12297>]
,[coilConduction,<gregtech:meta_item_1:12297>,coilConduction]
,[null,<thermalexpansion:capacitor:0>,null]]);

// Fluxomagnet Hardened
recipes.removeByRecipeName("thermalinnovation:magnet_1");
recipes.addShaped(<thermalinnovation:magnet:1>,
[[plateInvar,circuitMV,plateInvar]
,[coilConduction,<thermalinnovation:magnet:0>,coilConduction]
,[null,<thermalexpansion:capacitor:1>,null]]);

// Fluxomagnet Reinforced
recipes.removeByRecipeName("thermalinnovation:magnet_2");
recipes.addShaped(<thermalinnovation:magnet:2>,
[[plateElectrum,circuitHV,plateElectrum]
,[coilConduction,<thermalinnovation:magnet:1>,coilConduction]
,[null,<thermalexpansion:capacitor:2>,null]]);

// Fluxomagnet Signalum
recipes.removeByRecipeName("thermalinnovation:magnet_3");
recipes.addShaped(<thermalinnovation:magnet:3>,
[[plateSignalum,circuitEV,plateSignalum]
,[coilConduction,<thermalinnovation:magnet:2>,coilConduction]
,[null,<thermalexpansion:capacitor:3>,null]]);

// Fluxomagnet Enderium
recipes.removeByRecipeName("thermalinnovation:magnet_4");
recipes.addShaped(<thermalinnovation:magnet:4>,
[[plateEnderium,circuitIV,plateEnderium]
,[coilConduction,<thermalinnovation:magnet:3>,coilConduction]
,[null,<thermalexpansion:capacitor:4>,null]]);


// Armours

recipes.remove(<thermalfoundation:armor.helmet_copper>);
recipes.addShaped(<thermalfoundation:armor.helmet_copper>,
[[plateCopper,plateCopper,plateCopper]
,[plateCurvedCopper,hammer,plateCurvedCopper]]);

recipes.remove(<thermalfoundation:armor.plate_copper>);
recipes.addShaped(<thermalfoundation:armor.plate_copper>,
[[plateCopper,hammer,plateCopper]
,[plateCurvedCopper,plateCopper,plateCurvedCopper]
,[plateCurvedCopper,plateCopper,plateCurvedCopper]]);

recipes.remove(<thermalfoundation:armor.legs_copper>);
recipes.addShaped(<thermalfoundation:armor.legs_copper>,
[[plateCopper,plateCurvedCopper,plateCopper]
,[plateCurvedCopper,hammer,plateCurvedCopper]
,[plateCurvedCopper,null,plateCurvedCopper]]);

recipes.remove(<thermalfoundation:armor.boots_copper>);
recipes.addShaped(<thermalfoundation:armor.boots_copper>,
[[plateCopper,null,plateCopper]
,[plateCurvedCopper,hammer,plateCurvedCopper]]);

recipes.remove(<thermalfoundation:armor.helmet_tin>);
recipes.addShaped(<thermalfoundation:armor.helmet_tin>,
[[plateTin,plateTin,plateTin]
,[plateCurvedTin,hammer,plateCurvedTin]]);

recipes.remove(<thermalfoundation:armor.plate_tin>);
recipes.addShaped(<thermalfoundation:armor.plate_tin>,
[[plateTin,hammer,plateTin]
,[plateCurvedTin,plateTin,plateCurvedTin]
,[plateCurvedTin,plateTin,plateCurvedTin]]);

recipes.remove(<thermalfoundation:armor.legs_tin>);
recipes.addShaped(<thermalfoundation:armor.legs_tin>,
[[plateTin,plateCurvedTin,plateTin]
,[plateCurvedTin,hammer,plateCurvedTin]
,[plateCurvedTin,null,plateCurvedTin]]);

recipes.remove(<thermalfoundation:armor.boots_tin>);
recipes.addShaped(<thermalfoundation:armor.boots_tin>,
[[plateTin,null,plateTin]
,[plateCurvedTin,hammer,plateCurvedTin]]);

recipes.remove(<thermalfoundation:armor.helmet_silver>);
recipes.addShaped(<thermalfoundation:armor.helmet_silver>,
[[plateSilver,plateSilver,plateSilver]
,[plateCurvedSilver,hammer,plateCurvedSilver]]);

recipes.remove(<thermalfoundation:armor.plate_silver>);
recipes.addShaped(<thermalfoundation:armor.plate_silver>,
[[plateSilver,hammer,plateSilver]
,[plateCurvedSilver,plateSilver,plateCurvedSilver]
,[plateCurvedSilver,plateSilver,plateCurvedSilver]]);

recipes.remove(<thermalfoundation:armor.legs_silver>);
recipes.addShaped(<thermalfoundation:armor.legs_silver>,
[[plateSilver,plateCurvedSilver,plateSilver]
,[plateCurvedSilver,hammer,plateCurvedSilver]
,[plateCurvedSilver,null,plateCurvedSilver]]);

recipes.remove(<thermalfoundation:armor.boots_silver>);
recipes.addShaped(<thermalfoundation:armor.boots_silver>,
[[plateSilver,null,plateSilver]
,[plateCurvedSilver,hammer,plateCurvedSilver]]);

recipes.remove(<thermalfoundation:armor.helmet_lead>);
recipes.addShaped(<thermalfoundation:armor.helmet_lead>,
[[plateLead,plateLead,plateLead]
,[plateCurvedLead,hammer,plateCurvedLead]]);

recipes.remove(<thermalfoundation:armor.plate_lead>);
recipes.addShaped(<thermalfoundation:armor.plate_lead>,
[[plateLead,hammer,plateLead]
,[plateCurvedLead,plateLead,plateCurvedLead]
,[plateCurvedLead,plateLead,plateCurvedLead]]);

recipes.remove(<thermalfoundation:armor.legs_lead>);
recipes.addShaped(<thermalfoundation:armor.legs_lead>,
[[plateLead,plateCurvedLead,plateLead]
,[plateCurvedLead,hammer,plateCurvedLead]
,[plateCurvedLead,null,plateCurvedLead]]);

recipes.remove(<thermalfoundation:armor.boots_lead>);
recipes.addShaped(<thermalfoundation:armor.boots_lead>,
[[plateLead,null,plateLead]
,[plateCurvedLead,hammer,plateCurvedLead]]);

recipes.remove(<thermalfoundation:armor.helmet_aluminum>);
recipes.addShaped(<thermalfoundation:armor.helmet_aluminum>,
[[plateAluminium,plateAluminium,plateAluminium]
,[plateCurvedAluminium,hammer,plateCurvedAluminium]]);

recipes.remove(<thermalfoundation:armor.plate_aluminum>);
recipes.addShaped(<thermalfoundation:armor.plate_aluminum>,
[[plateAluminium,hammer,plateAluminium]
,[plateCurvedAluminium,plateAluminium,plateCurvedAluminium]
,[plateCurvedAluminium,plateAluminium,plateCurvedAluminium]]);

recipes.remove(<thermalfoundation:armor.legs_aluminum>);
recipes.addShaped(<thermalfoundation:armor.legs_aluminum>,
[[plateAluminium,plateCurvedAluminium,plateAluminium]
,[plateCurvedAluminium,hammer,plateCurvedAluminium]
,[plateCurvedAluminium,null,plateCurvedAluminium]]);

recipes.remove(<thermalfoundation:armor.boots_aluminum>);
recipes.addShaped(<thermalfoundation:armor.boots_aluminum>,
[[plateAluminium,null,plateAluminium]
,[plateCurvedAluminium,hammer,plateCurvedAluminium]]);

recipes.remove(<thermalfoundation:armor.helmet_nickel>);
recipes.addShaped(<thermalfoundation:armor.helmet_nickel>,
[[plateNickel,plateNickel,plateNickel]
,[plateCurvedNickel,hammer,plateCurvedNickel]]);

recipes.remove(<thermalfoundation:armor.plate_nickel>);
recipes.addShaped(<thermalfoundation:armor.plate_nickel>,
[[plateNickel,hammer,plateNickel]
,[plateCurvedNickel,plateNickel,plateCurvedNickel]
,[plateCurvedNickel,plateNickel,plateCurvedNickel]]);

recipes.remove(<thermalfoundation:armor.legs_nickel>);
recipes.addShaped(<thermalfoundation:armor.legs_nickel>,
[[plateNickel,plateCurvedNickel,plateNickel]
,[plateCurvedNickel,hammer,plateCurvedNickel]
,[plateCurvedNickel,null,plateCurvedNickel]]);

recipes.remove(<thermalfoundation:armor.boots_nickel>);
recipes.addShaped(<thermalfoundation:armor.boots_nickel>,
[[plateNickel,null,plateNickel]
,[plateCurvedNickel,hammer,plateCurvedNickel]]);

recipes.remove(<thermalfoundation:armor.helmet_platinum>);
recipes.addShaped(<thermalfoundation:armor.helmet_platinum>,
[[platePlatinum,platePlatinum,platePlatinum]
,[plateCurvedPlatinum,hammer,plateCurvedPlatinum]]);

recipes.remove(<thermalfoundation:armor.plate_platinum>);
recipes.addShaped(<thermalfoundation:armor.plate_platinum>,
[[platePlatinum,hammer,platePlatinum]
,[plateCurvedPlatinum,platePlatinum,plateCurvedPlatinum]
,[plateCurvedPlatinum,platePlatinum,plateCurvedPlatinum]]);

recipes.remove(<thermalfoundation:armor.legs_platinum>);
recipes.addShaped(<thermalfoundation:armor.legs_platinum>,
[[platePlatinum,plateCurvedPlatinum,platePlatinum]
,[plateCurvedPlatinum,hammer,plateCurvedPlatinum]
,[plateCurvedPlatinum,null,plateCurvedPlatinum]]);

recipes.remove(<thermalfoundation:armor.boots_platinum>);
recipes.addShaped(<thermalfoundation:armor.boots_platinum>,
[[platePlatinum,null,platePlatinum]
,[plateCurvedPlatinum,hammer,plateCurvedPlatinum]]);

recipes.remove(<thermalfoundation:armor.helmet_steel>);
recipes.addShaped(<thermalfoundation:armor.helmet_steel>,
[[plateSteel,plateSteel,plateSteel]
,[plateCurvedSteel,hammer,plateCurvedSteel]]);

recipes.remove(<thermalfoundation:armor.plate_steel>);
recipes.addShaped(<thermalfoundation:armor.plate_steel>,
[[plateSteel,hammer,plateSteel]
,[plateCurvedSteel,plateSteel,plateCurvedSteel]
,[plateCurvedSteel,plateSteel,plateCurvedSteel]]);

recipes.remove(<thermalfoundation:armor.legs_steel>);
recipes.addShaped(<thermalfoundation:armor.legs_steel>,
[[plateSteel,plateCurvedSteel,plateSteel]
,[plateCurvedSteel,hammer,plateCurvedSteel]
,[plateCurvedSteel,null,plateCurvedSteel]]);

recipes.remove(<thermalfoundation:armor.boots_steel>);
recipes.addShaped(<thermalfoundation:armor.boots_steel>,
[[plateSteel,null,plateSteel]
,[plateCurvedSteel,hammer,plateCurvedSteel]]);

recipes.remove(<thermalfoundation:armor.helmet_electrum>);
recipes.addShaped(<thermalfoundation:armor.helmet_electrum>,
[[plateElectrum,plateElectrum,plateElectrum]
,[plateCurvedElectrum,hammer,plateCurvedElectrum]]);

recipes.remove(<thermalfoundation:armor.plate_electrum>);
recipes.addShaped(<thermalfoundation:armor.plate_electrum>,
[[plateElectrum,hammer,plateElectrum]
,[plateCurvedElectrum,plateElectrum,plateCurvedElectrum]
,[plateCurvedElectrum,plateElectrum,plateCurvedElectrum]]);

recipes.remove(<thermalfoundation:armor.legs_electrum>);
recipes.addShaped(<thermalfoundation:armor.legs_electrum>,
[[plateElectrum,plateCurvedElectrum,plateElectrum]
,[plateCurvedElectrum,hammer,plateCurvedElectrum]
,[plateCurvedElectrum,null,plateCurvedElectrum]]);

recipes.remove(<thermalfoundation:armor.boots_electrum>);
recipes.addShaped(<thermalfoundation:armor.boots_electrum>,
[[plateElectrum,null,plateElectrum]
,[plateCurvedElectrum,hammer,plateCurvedElectrum]]);

recipes.remove(<thermalfoundation:armor.helmet_invar>);
recipes.addShaped(<thermalfoundation:armor.helmet_invar>,
[[plateInvar,plateInvar,plateInvar]
,[plateCurvedInvar,hammer,plateCurvedInvar]]);

recipes.remove(<thermalfoundation:armor.plate_invar>);
recipes.addShaped(<thermalfoundation:armor.plate_invar>,
[[plateInvar,hammer,plateInvar]
,[plateCurvedInvar,plateInvar,plateCurvedInvar]
,[plateCurvedInvar,plateInvar,plateCurvedInvar]]);

recipes.remove(<thermalfoundation:armor.legs_invar>);
recipes.addShaped(<thermalfoundation:armor.legs_invar>,
[[plateInvar,plateCurvedInvar,plateInvar]
,[plateCurvedInvar,hammer,plateCurvedInvar]
,[plateCurvedInvar,null,plateCurvedInvar]]);

recipes.remove(<thermalfoundation:armor.boots_invar>);
recipes.addShaped(<thermalfoundation:armor.boots_invar>,
[[plateInvar,null,plateInvar]
,[plateCurvedInvar,hammer,plateCurvedInvar]]);

recipes.remove(<thermalfoundation:armor.helmet_bronze>);
recipes.addShaped(<thermalfoundation:armor.helmet_bronze>,
[[plateBronze,plateBronze,plateBronze]
,[plateCurvedBronze,hammer,plateCurvedBronze]]);

recipes.remove(<thermalfoundation:armor.plate_bronze>);
recipes.addShaped(<thermalfoundation:armor.plate_bronze>,
[[plateBronze,hammer,plateBronze]
,[plateCurvedBronze,plateBronze,plateCurvedBronze]
,[plateCurvedBronze,plateBronze,plateCurvedBronze]]);

recipes.remove(<thermalfoundation:armor.legs_bronze>);
recipes.addShaped(<thermalfoundation:armor.legs_bronze>,
[[plateBronze,plateCurvedBronze,plateBronze]
,[plateCurvedBronze,hammer,plateCurvedBronze]
,[plateCurvedBronze,null,plateCurvedBronze]]);

recipes.remove(<thermalfoundation:armor.boots_bronze>);
recipes.addShaped(<thermalfoundation:armor.boots_bronze>,
[[plateBronze,null,plateBronze]
,[plateCurvedBronze,hammer,plateCurvedBronze]]);

recipes.remove(<thermalfoundation:armor.helmet_constantan>);
recipes.addShaped(<thermalfoundation:armor.helmet_constantan>,
[[plateConstantan,plateConstantan,plateConstantan]
,[plateCurvedConstantan,hammer,plateCurvedConstantan]]);

recipes.remove(<thermalfoundation:armor.plate_constantan>);
recipes.addShaped(<thermalfoundation:armor.plate_constantan>,
[[plateConstantan,hammer,plateConstantan]
,[plateCurvedConstantan,plateConstantan,plateCurvedConstantan]
,[plateCurvedConstantan,plateConstantan,plateCurvedConstantan]]);

recipes.remove(<thermalfoundation:armor.legs_constantan>);
recipes.addShaped(<thermalfoundation:armor.legs_constantan>,
[[plateConstantan,plateCurvedConstantan,plateConstantan]
,[plateCurvedConstantan,hammer,plateCurvedConstantan]
,[plateCurvedConstantan,null,plateCurvedConstantan]]);

recipes.remove(<thermalfoundation:armor.boots_constantan>);
recipes.addShaped(<thermalfoundation:armor.boots_constantan>,
[[plateConstantan,null,plateConstantan]
,[plateCurvedConstantan,hammer,plateCurvedConstantan]]);
