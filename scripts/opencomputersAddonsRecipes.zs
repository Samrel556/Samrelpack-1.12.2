// Opencomputers Addons Recipes



// Gregtech Machine Recipes



// Crafting Recipes

val wrench = <gregtech:meta_tool:8>;
val screwdriver = <gregtech:meta_tool:11>;
val plateAluminium = <ore:plateAluminium>;
val plateSteel = <ore:plateSteel>;
val plateStainlessSteel = <ore:plateStainlessSteel>;
val plateTitanium = <ore:plateTitanium>;
val plateObsidian = <ore:plateObsidian>;
val platePlastic = <ore:platePlastic>;
val screwStainlessSteel = <ore:screwStainlessSteel>;
val wireRedAlloySingle = <ore:wireGtSingleRedAlloy>;
val circuitHV = <ore:circuitAdvanced>;
val motorHV = <gregtech:meta_item_1:32602>;
val emitterHV = <gregtech:meta_item_1:32682>;
val sensorHV = <gregtech:meta_item_1:32691>;
val fieldGeneratorHV = <gregtech:meta_item_1:32672>;
val paneGlass = <ore:paneGlass>;

recipes.remove(<openscreens:backflatscreen1>);
recipes.addShaped(<openscreens:backflatscreen1>,
[[plateAluminium,plateAluminium,wrench]
,[wireRedAlloySingle,<opencomputers:material:7>,paneGlass]
,[plateAluminium,plateAluminium,screwdriver]]);
recipes.addShapeless(<openscreens:frontflatscreen1>, [<openscreens:backflatscreen1>]);

recipes.remove(<openscreens:backflatscreen2>);
recipes.addShaped(<openscreens:backflatscreen2>,
[[plateStainlessSteel,screwStainlessSteel,wrench]
,[<opencomputers:material:8>,<openscreens:backflatscreen1>,paneGlass]
,[plateStainlessSteel,screwStainlessSteel,screwdriver]]);
recipes.addShapeless(<openscreens:frontflatscreen2>, [<openscreens:backflatscreen2>]);

recipes.remove(<openscreens:backflatscreen3>);
recipes.addShaped(<openscreens:backflatscreen3>,
[[plateTitanium,circuitHV,wrench]
,[<opencomputers:material:9>,<openscreens:backflatscreen2>,<opencomputers:material:9>]
,[plateTitanium,circuitHV,screwdriver]]);
recipes.addShapeless(<openscreens:frontflatscreen3>, [<openscreens:backflatscreen3>]);

recipes.remove(<openscreens:frontflatscreen1>);
recipes.addShapeless(<openscreens:backflatscreen1>, [<openscreens:frontflatscreen1>]);

recipes.remove(<openscreens:frontflatscreen2>);
recipes.addShapeless(<openscreens:backflatscreen2>, [<openscreens:frontflatscreen2>]);

recipes.remove(<openscreens:frontflatscreen3>);
recipes.addShapeless(<openscreens:backflatscreen3>, [<openscreens:frontflatscreen3>]);

recipes.remove(<opensecurity:alarm>);
recipes.addShaped(<opensecurity:alarm>,
[[plateSteel,circuitHV,plateSteel]
,[<opencomputers:component:4>,<minecraft:noteblock>,<opencomputers:material:8>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<opensecurity:energy_turret>);
recipes.addShaped(<opensecurity:energy_turret>,
[[circuitHV,emitterHV,<ore:craftingLensBlue>]
,[<opencomputers:material:8>,motorHV,<opencomputers:material:8>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<opensecurity:security_terminal>);
recipes.addShaped(<opensecurity:security_terminal>,
[[plateSteel,circuitHV,plateSteel]
,[<opencomputers:material:8>,fieldGeneratorHV,<opencomputers:material:8>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<opensecurity:entity_detector>);
recipes.addShaped(<opensecurity:entity_detector>,
[[<opencomputers:material:8>,sensorHV,<opencomputers:material:8>]
,[circuitHV,<opencomputers:material:5>,circuitHV]
,[<opencomputers:component:6>,<opencomputers:cable>,<opencomputers:material:11>]]);

recipes.remove(<opensecurity:card_writer>);
recipes.addShaped(<opensecurity:card_writer>,
[[<opencomputers:material:8>,<opencomputers:component:6>,<opencomputers:material:8>]
,[circuitHV,<opencomputers:material:11>,circuitHV]
,[<opencomputers:component:4>,<opencomputers:cable>,emitterHV]]);

recipes.remove(<opensecurity:nanofog_terminal>);
recipes.addShaped(<opensecurity:nanofog_terminal>,
[[circuitHV,<opencomputers:card:7>,emitterHV]
,[<opencomputers:material:8>,<opencomputers:material:11>,<opencomputers:material:8>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<opensecurity:biometric_reader>);
recipes.addShaped(<opensecurity:biometric_reader>,
[[plateSteel,sensorHV,plateSteel]
,[<opencomputers:material:8>,circuitHV,<opencomputers:material:8>]
,[plateSteel,<opencomputers:material:8>,plateSteel]]);

recipes.remove(<opensecurity:mag_reader>);
recipes.addShaped(<opensecurity:mag_reader>,
[[<opencomputers:material:8>,sensorHV,<opencomputers:material:8>]
,[circuitHV,emitterHV,circuitHV]
,[<opencomputers:component:4>,<opencomputers:cable>,circuitHV]]);

recipes.remove(<opensecurity:keypad>);
recipes.addShaped(<opensecurity:keypad>,
[[circuitHV,plateSteel,circuitHV]
,[<opencomputers:material:8>,<opencomputers:material:16>,<opencomputers:material:8>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<opensecurity:rfid_reader>);
recipes.addShaped(<opensecurity:rfid_reader>,
[[plateSteel,circuitHV,plateSteel]
,[<opencomputers:component:4>,<opensecurity:rfid_reader_card>,<opencomputers:material:8>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<opensecurity:data_block>);
recipes.addShaped(<opensecurity:data_block>,
[[plateSteel,<opencomputers:card:10>,plateSteel]
,[<opencomputers:component:4>,circuitHV,<opencomputers:material:8>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<opensecurity:private_secure_door>);
recipes.addShaped(<opensecurity:private_secure_door>,
[[<opencomputers:material:8>,plateObsidian,<opencomputers:material:8>]
,[plateObsidian,<minecraft:iron_door>,plateObsidian]
,[circuitHV,plateObsidian,circuitHV]]);

recipes.remove(<opensecurity:secure_door>);
recipes.addShaped(<opensecurity:secure_door>,
[[<opencomputers:material:8>,<ore:plateGlass>,<opencomputers:material:8>]
,[plateObsidian,<minecraft:iron_door>,plateObsidian]
,[circuitHV,plateObsidian,circuitHV]]);

recipes.remove(<opensecurity:door_controller>);
recipes.addShaped(<opensecurity:door_controller>,
[[<opencomputers:material:8>,plateObsidian,<opencomputers:material:8>]
,[plateObsidian,<opencomputers:material:11>,plateObsidian]
,[circuitHV,<opencomputers:cable>,circuitHV]]);

recipes.remove(<opensecurity:rolldoor_controller>);
recipes.addShaped(<opensecurity:rolldoor_controller>,
[[<opencomputers:material:8>,<ore:plateNetherQuartz>,<opencomputers:material:8>]
,[<ore:plateNetherQuartz>,<opencomputers:material:11>,<ore:plateNetherQuartz>]
,[circuitHV,<opencomputers:cable>,circuitHV]]);

recipes.remove(<opensecurity:rolldoor>);
recipes.addShaped(<opensecurity:rolldoor>,
[[plateSteel,plateSteel,plateSteel]
,[motorHV,<opencomputers:material:8>,motorHV]
,[circuitHV,<opencomputers:cable>,circuitHV]]);

recipes.remove(<opensecurity:energy_upgrade>);
recipes.addShaped(<opensecurity:energy_upgrade>,
[[<ore:dustRedstone>,<ore:dustNetherQuartz>,<ore:dustRedstone>]
,[<ore:dustNetherQuartz>,<opencomputers:upgrade:1>,<ore:dustNetherQuartz>]
,[<ore:dustRedstone>,<ore:dustNetherQuartz>,<ore:dustRedstone>]]);

recipes.remove(<opensecurity:movement_upgrade>);
recipes.addShaped(<opensecurity:movement_upgrade>,
[[<ore:dustRedstone>,circuitHV,<ore:dustRedstone>]
,[<opencomputers:material:8>,motorHV,<opencomputers:material:8>]
,[<ore:dustRedstone>,circuitHV,<ore:dustRedstone>]]);

recipes.remove(<opensecurity:rfid_card>);
recipes.addShaped(<opensecurity:rfid_card>,
[[null,platePlastic,null]
,[circuitHV,<ore:wireFineCopper>,<opencomputers:material:8>]
,[null,platePlastic,null]]);

recipes.remove(<opensecurity:mag_card>);
recipes.addShaped(<opensecurity:mag_card>,
[[null,platePlastic,null]
,[null,<ore:foilSteelMagnetic>,null]
,[null,platePlastic,null]]);

recipes.remove(<opensecurity:cooldown_upgrade>);
recipes.addShaped(<opensecurity:cooldown_upgrade>,
[[<ore:dustRedstone>,<ore:plateThermoconducting>,<ore:dustRedstone>]
,[<ore:plateThermoconducting>,<minecraft:water_bucket>,<ore:plateThermoconducting>]
,[<ore:dustRedstone>,<ore:plateThermoconducting>,<ore:dustRedstone>]]);

recipes.remove(<opensecurity:cooldown_upgrade>);
recipes.addShaped(<opensecurity:cooldown_upgrade>,
[[<minecraft:arrow>,<ore:craftingLensBlue>,<minecraft:arrow>]
,[emitterHV,<ore:dustGunpowder>,emitterHV]
,[<minecraft:arrow>,<ore:craftingLensBlue>,<minecraft:arrow>]]);

recipes.remove(<opensecurity:rfid_reader_card>);
recipes.addShaped(<opensecurity:rfid_reader_card>,
[[<opencomputers:material:8>,<opencomputers:component:8>,<opencomputers:material:8>]
,[<ore:wireGtSingleElectrum>,<opencomputers:upgrade:31>,<ore:wireGtSingleElectrum>]
,[<opencomputers:material:5>,<opencomputers:material:11>,circuitHV]]);
