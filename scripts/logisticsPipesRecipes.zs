// Logistics Pipes Recipes
	

// Gregtech Machines



// Crafting Table Recipes

var hammer = <gregtech:meta_tool:6>;
var file = <gregtech:meta_tool:9>;
var screwdriver = <gregtech:meta_tool:11>;
var wrench = <gregtech:meta_tool:8>;

var frame = <logisticspipes:frame>;
var chipBasic = <logisticspipes:chip_basic>;
var chipAdvanced = <logisticspipes:chip_advanced>;
var chipFPGA = <logisticspipes:chip_fpga>;
var moduleBlank = <logisticspipes:module_blank>;
var pipeUnrouted = <logisticspipes:pipe_transport_basic>;
var pipeBasic = <logisticspipes:pipe_basic>;
var pipeBasicFluid = <logisticspipes:pipe_fluid_basic>;
var fluxLeadstone = <thermaldynamics:duct_0:0>;
var coilReception = <thermalfoundation:material:513>;
var coilTransmission = <thermalfoundation:material:514>;
var coilConductance = <thermalfoundation:material:515>;
var hullLV = <gregtech:machine:501>;
var resister = <gregtech:meta_item_2:32455>;
var resisterSMD = <gtadditions:ga_meta_item:32241>;
var vacuumTube = <gregtech:meta_item_2:32450>;
var transistorSMD = <gtadditions:ga_meta_item:32240>;
var plateRedAlloy = <ore:plateRedAlloy>;
var plateSilicon = <ore:plateSilicon>;
var plateIron = <ore:plateIron>;
var plateGold = <ore:plateGold>;
var plateLapis = <ore:plateLapis>;
var stickIron = <ore:stickIron>;
var stickGold = <ore:stickGold>;
var foilGold = <ore:foilGold>;
var wireFineRedAlloy = <ore:wireFineRedAlloy>;
var dustTinyDiamond = <gregtech:meta_item_1:111>;
var cableCopper = <ore:wireGtSingleCopper>;
var paper = <ore:paper>;
var glass = <ore:blockGlass>;
var bucket = <minecraft:bucket>;

// Chips

// Raw Basic Chip
recipes.remove(<logisticspipes:chip_basic_raw>);
recipes.addShaped(<logisticspipes:chip_basic_raw>*4,
[[resister,plateSilicon,resister]
,[vacuumTube,<gregtech:meta_item_2:32443>,vacuumTube]
,[cableCopper,cableCopper,cableCopper]]);
recipes.addShaped(<logisticspipes:chip_basic_raw>*4,
[[resisterSMD,plateSilicon,resisterSMD]
,[transistorSMD,<gregtech:meta_item_2:32443>,transistorSMD]
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

// Blocks

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


// Modules

    // ItemSink Module
    recipes.remove(<logisticspipes:module_item_sink>);
    recipes.addShaped(<logisticspipes:module_item_sink>,
    [[null, <logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateIron,moduleBlank,plateIron]]);

    // Passive Supplier Module
    recipes.remove(<logisticspipes:module_passive_supplier>);
    recipes.addShaped(<logisticspipes:module_passive_supplier>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_passive_supplier"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateIron,moduleBlank,plateIron]]);

    // Extractor Module
    recipes.remove(<logisticspipes:module_extractor>);
    recipes.addShaped(<logisticspipes:module_extractor>,
    [[chipFPGA,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_extractor"}),chipFPGA]
    ,[plateRedAlloy,chipBasic,plateRedAlloy]
    ,[plateIron,moduleBlank,plateIron]]);

    // Polymorphic Itemsink Module
    recipes.remove(<logisticspipes:module_item_sink_polymorphic>);
    recipes.addShaped(<logisticspipes:module_item_sink_polymorphic>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_polymorphic"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateIron,moduleBlank,plateIron]]);

    // QuickSort Module
    recipes.remove(<logisticspipes:module_quick_sort>);
    recipes.addShaped(<logisticspipes:module_quick_sort>,
    [[chipFPGA,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_quick_sort"}),chipFPGA]
    ,[plateRedAlloy,chipAdvanced,plateRedAlloy]
    ,[plateGold,moduleBlank,plateGold]]);

    // Terminus Module
    recipes.remove(<logisticspipes:module_terminus>);
    recipes.addShaped(<logisticspipes:module_terminus>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_terminus"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateIron,moduleBlank,plateIron]]);

    // Advanced Extractor Module
    recipes.remove(<logisticspipes:module_extractor_advanced>);
    recipes.addShaped(<logisticspipes:module_extractor_advanced>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_extractor_advanced"}),null]
    ,[null,chipFPGA,null]
    ,[null,<logisticspipes:module_extractor>,null]]);

    // Provider Module
    recipes.remove(<logisticspipes:module_provider>);
    recipes.addShaped(<logisticspipes:module_provider>,
    [[chipFPGA,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_provider"}),chipFPGA]
    ,[plateLapis,chipBasic,plateLapis]
    ,[plateIron,moduleBlank,plateIron]]);

    // Mod Based ItemSink Module
    recipes.remove(<logisticspipes:module_item_sink_mod>);
    recipes.addShaped(<logisticspipes:module_item_sink_mod>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_mod"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateGold,moduleBlank,plateGold]]);

    // OreDict ItemSink Module
    recipes.remove(<logisticspipes:module_item_sink_oredict>);
    recipes.addShaped(<logisticspipes:module_item_sink_oredict>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_oredict"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateGold,moduleBlank,plateGold]]);

    // Enchantment Sink Module
    recipes.remove(<logisticspipes:module_enchantment_sink>);
    recipes.addShaped(<logisticspipes:module_enchantment_sink>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_enchantment_sink"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateIron,<logisticspipes:module_item_sink>,plateIron]]);

    // Enchantment Sink Module MK2
    recipes.remove(<logisticspipes:module_enchantment_sink_mk2>);
    recipes.addShaped(<logisticspipes:module_enchantment_sink _mk2>,
    [[null, <logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_enchantment_sink_mk2"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateGold,<logisticspipes:module_enchantment_sink>,plateGold]]);

    // Crafting Module
    recipes.remove(<logisticspipes:module_crafter>);
    recipes.addShaped(<logisticspipes:module_crafter>,
    [[chipFPGA, <logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_crafter"}),chipFPGA]
    ,[plateLapis,chipBasic,plateLapis]
    ,[plateGold,moduleBlank,plateGold]]);

    // Active Supplier Module
    recipes.remove(<logisticspipes:module_active_supplier>);
    recipes.addShaped(<logisticspipes:module_active_supplier>,
    [[chipBasic, <logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_active_supplier"}),chipBasic]
    ,[<ore:dustBlaze>,chipAdvanced,<ore:dustBlaze>]
    ,[plateGold,moduleBlank,plateGold]]);

    // Creative Tab Based ItemSink Module
    recipes.remove(<logisticspipes:module_item_sink_creativetab>);
    recipes.addShaped(<logisticspipes:module_item_sink_creativetab>,
    [[null, <logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:module_item_sink_creativetab"}),null]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateGold,moduleBlank,plateGold]]);

// Upgrades

    // Sneaky Combination Upgrade
    recipes.remove(<logisticspipes:upgrade_sneaky_combination>);
    recipes.addShaped(<logisticspipes:upgrade_sneaky_combination>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_sneaky_combination"}), plateRedAlloy]
    ,[plateGold,chipAdvanced,plateGold]
    ,[paper,foilGold,paper]]);

    // Sneaky Upgrade
    recipes.remove(<logisticspipes:upgrade_sneaky>);
    recipes.addShaped(<logisticspipes:upgrade_sneaky>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_sneaky"}), plateRedAlloy]
    ,[plateIron,chipBasic,plateIron]
    ,[paper,foilGold,paper]]);

    // Speed Upgrade
    recipes.remove(<logisticspipes:upgrade_speed>);
    recipes.addShaped(<logisticspipes:upgrade_speed>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_speed"}), plateRedAlloy]
    ,[plateGold,chipBasic,plateGold]
    ,[paper,foilGold,paper]]);

    // Disconnection Upgrade
    recipes.remove(<logisticspipes:upgrade_disconnection>);
    recipes.addShaped(<logisticspipes:upgrade_disconnection>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_disconnection"}), plateRedAlloy]
    ,[plateIron,chipBasic,plateIron]
    ,[paper,foilGold,paper]]);

    // Advanced Satellite Upgrade
    recipes.remove(<logisticspipes:upgrade_satellite_advanced>);
    recipes.addShaped(<logisticspipes:upgrade_satellite_advanced>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_satellite_advacned"}), plateRedAlloy]
    ,[plateIron,chipAdvanced,plateIron]
    ,[paper,foilGold,paper]]);

    // Fluid Crafting Upgrade
    recipes.remove(<logisticspipes:upgrade_fluid_crafting>);
    recipes.addShaped(<logisticspipes:upgrade_fluid_crafting>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_fluid_crafting"}), plateRedAlloy]
    ,[plateIron,chipBasic,plateIron]
    ,[paper,foilGold,paper]]);

    // Crafting Byproduct Extraction Upgrade
    recipes.remove(<logisticspipes:upgrade_crafting_byproduct>);
    recipes.addShaped(<logisticspipes:upgrade_crafting_byproduct>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_crafting_byproduct"}), plateRedAlloy]
    ,[plateIron,chipBasic,plateIron]
    ,[paper,foilGold,paper]]);

    // Placement Rules Upgrade
    recipes.remove(<logisticspipes:upgrade_pattern>);
    recipes.addShaped(<logisticspipes:upgrade_pattern>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_pattern"}), plateRedAlloy]
    ,[plateGold,chipAdvanced,plateGold]
    ,[paper,foilGold,paper]]);

    // Fuzzy Upgrade
    recipes.remove(<logisticspipes:upgrade_fuzzy>);
    recipes.addShaped(<logisticspipes:upgrade_fuzzy>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_fuzzy"}), plateRedAlloy]
    ,[plateIron,chipBasic,plateIron]
    ,[paper,foilGold,paper]]);

    // Crafting Monitoring Upgrade
    recipes.remove(<logisticspipes:upgrade_crafting_monitoring>);
    recipes.addShaped(<logisticspipes:upgrade_crafting_monitoring>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_crafting_monitoring"}), plateRedAlloy]
    ,[plateGold,chipAdvanced,plateGold]
    ,[paper,foilGold,paper]]);

    // Opaque Upgrade
    recipes.remove(<logisticspipes:upgrade_opaque>);
    recipes.addShaped(<logisticspipes:upgrade_opaque>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_opaque"}), plateRedAlloy]
    ,[plateIron,chipBasic,plateIron]
    ,[paper,foilGold,paper]]);

    // Crafting Cleanup Upgrade
    recipes.remove(<logisticspipes:upgrade_crafting_cleanup>);
    recipes.addShaped(<logisticspipes:upgrade_crafting_cleanup>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_crafting_cleanup"}), plateRedAlloy]
    ,[plateIron,chipAdvanced,plateIron]
    ,[paper,foilGold,paper]]);

    // Module Upgrade
    recipes.remove(<logisticspipes:upgrade_module_upgrade>);
    recipes.addShaped(<logisticspipes:upgrade_module_upgrade>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_module_upgrade"}), plateRedAlloy]
    ,[plateGold,chipAdvanced,plateGold]
    ,[paper,foilGold,paper]]);

    // Action Speed Upgrade
    recipes.remove(<logisticspipes:upgrade_action_speed>);
    recipes.addShaped(<logisticspipes:upgrade_action_speed>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_disconnection"}), plateRedAlloy]
    ,[plateGold,chipBasic,plateGold]
    ,[paper,foilGold,paper]]);

    // Item Extraction Upgrade
    recipes.remove(<logisticspipes:upgrade_item_extraction>);
    recipes.addShaped(<logisticspipes:upgrade_item_extraction>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_item_extraction"}), plateRedAlloy]
    ,[plateGold,chipBasic,plateGold]
    ,[paper,foilGold,paper]]);

    // ItemStack Extraction Upgrade
    recipes.remove(<logisticspipes:upgrade_item_stack_extraction>);
    recipes.addShaped(<logisticspipes:upgrade_item_stack_extraction>,
    [[plateRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:upgrade_item_stack_extraction"}), plateRedAlloy]
    ,[plateGold,chipAdvanced,plateGold]
    ,[paper,foilGold,paper]]);

// Pipes

    // Unrouted Transport Pipe
    recipes.remove(<logisticspipes:pipe_transport_basic>);
    recipes.addShaped(<logisticspipes:pipe_transport_basic>*8,
    [[stickIron,plateRedAlloy,stickIron]
    ,[glass,null,glass]
    ,[stickIron,plateRedAlloy,stickIron]]);

    // Basic Logistics Pipe
    recipes.remove(<logisticspipes:pipe_basic>);
    recipes.addShaped(<logisticspipes:pipe_basic>,
    [[wireFineRedAlloy,chipFPGA,wireFineRedAlloy]
    ,[stickIron,pipeUnrouted,stickIron]]);

    // Request Logistics Pipe
    recipes.remove(<logisticspipes:pipe_request>);
    recipes.addShaped(<logisticspipes:pipe_request>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_request"}),null]
    ,[wireFineRedAlloy,chipBasic,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Provider Logistics Pipe
    recipes.remove(<logisticspipes:pipe_provider>);
    recipes.addShaped(<logisticspipes:pipe_provider>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_provider"}),null]
    ,[wireFineRedAlloy,chipBasic,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Crafting Logistics Pipe
    recipes.remove(<logisticspipes:pipe_crafting>);
    recipes.addShaped(<logisticspipes:pipe_crafting>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_crafting"}),null]
    ,[wireFineRedAlloy,chipFPGA,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Satellite Logistics Pipe
    recipes.remove(<logisticspipes:pipe_satellite>);
    recipes.addShaped(<logisticspipes:pipe_satellite>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_satellite"}),null]
    ,[wireFineRedAlloy,chipFPGA,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Supplier Logistics Pipe
    recipes.remove(<logisticspipes:pipe_supplier>);
    recipes.addShaped(<logisticspipes:pipe_supplier>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_supplier"}),null]
    ,[wireFineRedAlloy,chipBasic,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Logistics Chassis Mk1
    recipes.remove(<logisticspipes:pipe_chassis_mk1>);
    recipes.addShaped(<logisticspipes:pipe_chassis_mk1>,
    [[stickIron,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk1"}),stickIron]
    ,[wireFineRedAlloy,chipBasic,wireFineRedAlloy]
    ,[chipFPGA,pipeBasic,chipFPGA]]);

    // Logistics Chassis Mk2
    recipes.remove(<logisticspipes:pipe_chassis_mk2>);
    recipes.addShaped(<logisticspipes:pipe_chassis_mk2>,
    [[stickIron,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk2"}),stickIron]
    ,[wireFineRedAlloy,<logisticspipes:pipe_chassis_mk1>,wireFineRedAlloy]
    ,[chipBasic,plateLapis,chipBasic]]);

    // Logistics Chassis Mk3
    recipes.remove(<logisticspipes:pipe_chassis_mk3>);
    recipes.addShaped(<logisticspipes:pipe_chassis_mk3>,
    [[stickIron,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk3"}),stickIron]
    ,[wireFineRedAlloy,<logisticspipes:pipe_chassis_mk2>,wireFineRedAlloy]
    ,[<ore:plateGlowstone>,chipAdvanced,<ore:plateGlowstone>]]);

    // Logistics Chassis Mk4
    recipes.remove(<logisticspipes:pipe_chassis_mk4>);
    recipes.addShaped(<logisticspipes:pipe_chassis_mk4>,
    [[stickGold,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk4"}),stickGold]
    ,[wireFineRedAlloy,<logisticspipes:pipe_chassis_mk3>,wireFineRedAlloy]
    ,[chipBasic,chipAdvanced,chipBasic]]);

    // Logistics Chassis Mk5
    recipes.remove(<logisticspipes:pipe_chassis_mk5>);
    recipes.addShaped(<logisticspipes:pipe_chassis_mk5>,
    [[<ore:stickDiamond>,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_chassis_mk5"}),<ore:stickDiamond>]
    ,[wireFineRedAlloy,<logisticspipes:pipe_chassis_mk4>,wireFineRedAlloy]
    ,[chipAdvanced,<ore:plateNetherQuartz>,chipAdvanced]]);

    // Request Logistics Pipe MK2
    recipes.remove(<logisticspipes:pipe_request_mk2>);
    recipes.addShaped(<logisticspipes:pipe_request_mk2>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_request_mk2"}),null]
    ,[wireFineRedAlloy,chipAdvanced,wireFineRedAlloy]
    ,[stickGold,<logisticspipes:pipe_request>,stickGold]]);

    // Remote Orderer Logistics Pipe
    recipes.remove(<logisticspipes:pipe_remote_orderer>);
    recipes.addShaped(<logisticspipes:pipe_remote_orderer>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_remote_orderer"}),null]
    ,[<ore:plateEnderPearl>,chipBasic,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Logistics Inventory System Logistics Pipe
    recipes.remove(<logisticspipes:pipe_inventory_system_connector>);
    recipes.addShaped(<logisticspipes:pipe_inventory_system_connector>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_inventory_system_connector"}),null]
    ,[<ore:plateEnderPearl>,chipBasic,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Logistics System Entrance Pipe
    recipes.remove(<logisticspipes:pipe_system_entrance>);
    recipes.addShaped(<logisticspipes:pipe_system_entrance>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_system_entrance"}),null]
    ,[wireFineRedAlloy,chipFPGA,wireFineRedAlloy]
    ,[stickGold,<logisticspipes:pipe_provider>,stickGold]]);

    // Logistics System Destination Pipe
    recipes.remove(<logisticspipes:pipe_system_destination>);
    recipes.addShaped(<logisticspipes:pipe_system_destination>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_system_destination"}),null]
    ,[wireFineRedAlloy,chipFPGA,wireFineRedAlloy]
    ,[stickGold,pipeBasic,stickGold]]);

    // Firewall Logistics Pipe
    recipes.remove(<logisticspipes:pipe_firewall>);
    recipes.addShaped(<logisticspipes:pipe_firewall>,
    [[null,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_firewall"}),null]
    ,[<ore:plateEnderPearl>,chipAdvanced,wireFineRedAlloy]
    ,[stickIron,pipeBasic,stickIron]]);

    // Logistics Fluid Basic Pipe
    recipes.remove(<logisticspipes:pipe_fluid_basic>);
    recipes.addShaped(<logisticspipes:pipe_fluid_basic>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_basic"}),wireFineRedAlloy]
    ,[chipBasic,bucket,chipBasic]
    ,[stickIron,pipeBasic,stickIron]]);

    // Logistics Fluid Container Supplier
    recipes.remove(<logisticspipes:pipe_fluid_supplier>);
    recipes.addShaped(<logisticspipes:pipe_fluid_supplier>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_supplier"}),wireFineRedAlloy]
    ,[chipBasic,bucket,chipBasic]
    ,[stickIron,pipeBasicFluid,stickIron]]);

    // Logistics Fluid Insertion Pipe
    recipes.remove(<logisticspipes:pipe_fluid_insertion>);
    recipes.addShaped(<logisticspipes:pipe_fluid_insertion>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_insertion"}),wireFineRedAlloy]
    ,[chipFPGA,bucket,chipFPGA]
    ,[stickIron,pipeBasicFluid,stickIron]]);

    // Logistics Fluid Provider Pipe
    recipes.remove(<logisticspipes:pipe_fluid_provider>);
    recipes.addShaped(<logisticspipes:pipe_fluid_provider>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_provider"}),wireFineRedAlloy]
    ,[chipBasic,bucket,chipBasic]
    ,[stickIron,pipeBasicFluid,stickIron]]);

    // Logistics Fluid Request Pipe
    recipes.remove(<logisticspipes:pipe_fluid_request>);
    recipes.addShaped(<logisticspipes:pipe_fluid_request>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_request"}),wireFineRedAlloy]
    ,[chipBasic,bucket,chipBasic]
    ,[stickIron,pipeBasicFluid,stickIron]]);

    // Logistics Fluid Extractor Pipe
    recipes.remove(<logisticspipes:pipe_fluid_extractor>);
    recipes.addShaped(<logisticspipes:pipe_fluid_extractor>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_extractor"}),wireFineRedAlloy]
    ,[chipFPGA,bucket,chipFPGA]
    ,[stickIron,pipeBasicFluid,stickIron]]);

    // Logistics Fluid Satellite Pipe
    recipes.remove(<logisticspipes:pipe_fluid_satellite>);
    recipes.addShaped(<logisticspipes:pipe_fluid_satellite>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_satellite"}),wireFineRedAlloy]
    ,[chipFPGA,bucket,chipFPGA]
    ,[stickIron,pipeBasicFluid,stickIron]]);

    // Logistics Fluid Supplier Pipe
    recipes.remove(<logisticspipes:pipe_fluid_supplier_mk2>);
    recipes.addShaped(<logisticspipes:pipe_fluid_supplier_mk2>,
    [[wireFineRedAlloy,<logisticspipes:logistics_programmer>.withTag({LogisticsRecipeTarget: "logisticspipes:pipe_fluid_supplier_mk2"}),wireFineRedAlloy]
    ,[chipAdvanced,bucket,chipAdvanced]
    ,[stickIron,pipeBasicFluid,stickIron]]);

// Misc

    // Remote Orderer
    recipes.removeByRecipeName("logisticspipes:remote_orderer");
    recipes.addShaped(<logisticspipes:remote_orderer>,
    [[chipAdvanced,plateGold,chipAdvanced]
    ,[plateRedAlloy,<ore:paneGlass>,plateRedAlloy]
    ,[plateLapis,<ore:plateGlowstone>,plateLapis]]);

    // Crafting Sign Creator
    recipes.remove(<logisticspipes:sign_creator>);
    recipes.addShaped(<logisticspipes:sign_creator>,
    [[chipBasic,plateIron,chipBasic]
    ,[plateIron,<minecraft:sign>,plateIron]
    ,[plateIron,chipAdvanced,plateIron]]);

    // Blank Module
    recipes.remove(<logisticspipes:module_blank>);
    recipes.addShaped(<logisticspipes:module_blank>,
    [[null,plateRedAlloy,null]
    ,[null,paper,null]
    ,[null,foilGold,null]]);

    // Logistics Disk
    recipes.remove(<logisticspipes:disk>);
    recipes.addShaped(<logisticspipes:disk>,
    [[plateIron,plateRedAlloy,plateIron]
    ,[plateRedAlloy,foilGold,plateRedAlloy]
    ,[plateIron,plateRedAlloy,plateIron]]);

    // Pipe Controller
    recipes.remove(<logisticspipes:pipe_controller>);
    recipes.addShaped(<logisticspipes:pipe_controller>,
    [[plateGold,chipBasic,plateGold]
    ,[plateRedAlloy,<ore:paneGlass>,plateRedAlloy]
    ,[plateLapis,<ore:dyeRed>,plateLapis]]);

    // Pipe Manager
    recipes.remove(<logisticspipes:pipe_manager>);
    recipes.addShaped(<logisticspipes:pipe_manager>,
    [[plateIron,chipBasic,plateIron]
    ,[plateRedAlloy,<ore:paneGlass>,plateRedAlloy]
    ,[plateLapis,<ore:dyeYellow>,plateLapis]]);

    // Logistics Programmer
    recipes.remove(<logisticspipes:logistics_programmer>);
    recipes.addShaped(<logisticspipes:logistics_programmer>,
    [[plateGold,chipAdvanced,plateGold]
    ,[plateRedAlloy,chipFPGA,plateRedAlloy]
    ,[plateIron,moduleBlank,plateIron]]);
