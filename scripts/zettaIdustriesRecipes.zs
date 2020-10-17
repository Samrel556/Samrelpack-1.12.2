// Zetta Industries Recipes

// Crafting Table Recipes

val evCircuit = <ore:circuitExtreme>;

recipes.remove(<zettaindustries:batterycontroller>);
recipes.addShaped(<zettaindustries:batterycontroller>,
[[<zettaindustries:batterywall>,evCircuit,<zettaindustries:batterywall>]
,[evCircuit,<thermalexpansion:frame>,evCircuit]
,[<zettaindustries:batterywall>,evCircuit,<zettaindustries:batterywall>]]);

recipes.remove(<zettaindustries:batterywall>);
recipes.addShaped(<zettaindustries:batterywall>*2,
[[<ore:dustBlaze>,<ore:plateTalonite>,<ore:dustBlaze>]
,[<ore:plateTalonite>,<ore:blockObsidian>,<ore:plateTalonite>]
,[<ore:plateGold>,<ore:plateTalonite>,<ore:plateGold>]]);

recipes.remove(<zettaindustries:batterycomputerport>);
recipes.addShaped(<zettaindustries:batterycomputerport>,
[[<ore:dustRedstone>,evCircuit,<ore:dustRedstone>]
,[evCircuit,<zettaindustries:batterywall>,evCircuit]
,[<ore:rodBlaze>,<opencomputers:cable>,<ore:rodBlaze>]]);

recipes.remove(<zettaindustries:batteryglass>);
recipes.addShapeless(<zettaindustries:batteryglass>, [<zettaindustries:batterywall>, <gtadditions:ga_transparent_casing>]);

recipes.remove(<zettaindustries:batterypowertap>);
recipes.addShaped(<zettaindustries:batterypowertap>,
[[<ore:blockObsidian>,<thermaldynamics:duct_0:3>,<ore:blockObsidian>]
,[evCircuit,<zettaindustries:batterywall>,evCircuit]
,[<ore:dustBlaze>,<ore:blockGraphite>,<ore:dustBlaze>]]);
