// Logistics Pipes Recipes
	

// Gregtech Machines



// Crafting Table Recipes

var hammer = <gregtech:meta_tool:6>;
var file = <gregtech:meta_tool:9>;
var screwdriver = <gregtech:meta_tool:11>;
var wrench = <gregtech:meta_tool:8>;

var frame = <logisticspipes:frame>;
var fluxLeadstone = <thermaldynamics:duct_0:0>;
var coilReception = <thermalfoundation:material:513>;
var coilTransmission = <thermalfoundation:material:514>;
var coilConductance = <thermalfoundation:material:515>;
var hullLV = <gregtech:machine:501>;
var resister = <gregtech:meta_item_2:32455>;
var vacuumTube = <gregtech:meta_item_2:32450>;
var plateIron = <gregtech:meta_item_1:12033>;
var plateRedAlloy = <gregtech:meta_item_1:12237>;
var plateSilicon = <gregtech:meta_item_1:12061>;
var dustTinyDiamond = <gregtech:meta_item_1:111>;
var cableCopper = <ore:wireGtSingleCopper>;

// Raw Basic Chip
recipes.remove(<logisticspipes:chip_basic_raw>);
recipes.addShaped(<logisticspipes:chip_basic_raw>*4,
[[resister,plateSilicon,resister]
,[vacuumTube,<gregtech:meta_item_2:32443>,vacuumTube]
,[cableCopper,cableCopper,cableCopper]]);

// Raw Advanced Chip
recipes.remove(<logisticspipes:chip_advanced_raw>);
recipes.addShaped(<logisticspipes:chip_advanced_raw>,
[[dustTinyDiamond,dustTinyDiamond,dustTinyDiamond]
,[dustTinyDiamond,<logisticspipes:chip_basic_raw>,dustTinyDiamond]
,[dustTinyDiamond,dustTinyDiamond,dustTinyDiamond]]);

// Raw FPGA Chip
recipes.remove(<logisticspipes:chip_fpga_raw>);
recipes.addShaped(<logisticspipes:chip_fpga_raw>*8,
[[<ore:dustSilicon>,<ore:foilGold>,<ore:dustSilicon>]
,[<ore:wireGtSingleRedAlloy>,<gregtech:meta_item_2:32443>,<ore:wireGtSingleRedAlloy>]
,[<ore:dustSilicon>,<ore:foilGold>,<ore:dustSilicon>]]);

// Frame
recipes.remove(frame);
recipes.addShaped(frame,
[[plateIron,plateRedAlloy,plateIron]
,[fluxLeadstone,hullLV,fluxLeadstone]
,[plateIron,plateRedAlloy,plateIron]]);

// Logistics Request Table
recipes.remove(<logisticspipes:pipe_request_table>);
recipes.addShaped(<logisticspipes:pipe_request_table>,
[[null,<gregtech:machine:825>,null]
,[<ore:circuitBasic>,frame,<ore:circuitBasic>]
,[<logisticspipes:pipe_request_mk2>,<ore:chestWood>,<logisticspipes:pipe_crafting>]]);

// Logistics Power Junction
recipes.remove(<logisticspipes:power_junction>);
recipes.addShaped(<logisticspipes:power_junction>,
[[null,<ore:circuitBasic>,null]
,[plateRedAlloy,frame,plateRedAlloy]
,[plateIron,coilReception,plateIron]]);

// Logistics Security Station
recipes.remove(<logisticspipes:security_station>);
recipes.addShaped(<logisticspipes:security_station>,
[[null,<logisticspipes:chip_advanced>,null]
,[plateRedAlloy,frame,plateRedAlloy]
,[plateIron,<thermalfoundation:security>,plateIron]]);

// Logistics Crafting Table
recipes.remove(<logisticspipes:crafting_table>);
recipes.addShaped(<logisticspipes:crafting_table>,
[[null,<gregtech:machine:825>,null]
,[<ore:circuitBasic>,frame,<ore:circuitBasic>]
,[plateIron,<minecraft:piston>,plateIron]]);

// Logistics Fuzzy Crafting Table
recipes.remove(<logisticspipes:crafting_table_fuzzy>);
recipes.addShapeless(<logisticspipes:crafting_table_fuzzy>, [<logisticspipes:crafting_table>, plateRedAlloy]);

// Logistics Statistics Table
recipes.remove(<logisticspipes:statistics_table>);
recipes.addShaped(<logisticspipes:statistics_table>,
[[null,<logisticspipes:chip_advanced>,null]
,[plateRedAlloy,frame,plateRedAlloy]
,[plateIron,<logisticspipes:disk>,plateIron]]);

// Logistics Program Compiler
recipes.remove(<logisticspipes:program_compiler>);
recipes.addShaped(<logisticspipes:program_compiler>,
[[null,<logisticspipes:disk>,null]
,[plateRedAlloy,frame,plateRedAlloy]
,[plateIron,<ore:gemLapis>,plateIron]]);

