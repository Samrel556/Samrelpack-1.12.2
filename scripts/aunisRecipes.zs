// Aunis Recipes

val distillery = mods.gregtech.recipe.RecipeMap.getByName("distillery");
val chemReactor = mods.gregtech.recipe.RecipeMap.getByName("chemical_reactor");
val autoclave = mods.gregtech.recipe.RecipeMap.getByName("autoclave");
val fluidCanner = mods.gregtech.recipe.RecipeMap.getByName("fluid_canner");
val metalBender = mods.gregtech.recipe.RecipeMap.getByName("metal_bender");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val fluidExtractor = mods.gregtech.recipe.RecipeMap.getByName("fluid_extractor");
val circuitAssembler = mods.gregtech.recipe.RecipeMap.getByName("circuit_assembler");

val ringMilkyWay = <aunis:stargate_ring_fragment>;
val ringUniverse = <aunis:universe_ring_fragment>;
val ringTransport = <aunis:transportrings_ring_fragment>;
val circuitNaquadah = <aunis:circuit_control_naquadah>;
val circuitCrystal = <aunis:circuit_control_crystal>;
val crystalBlue = <aunis:crystal_blue>;
val crystalRed = <aunis:crystal_red>;
val crystalYellow = <aunis:crystal_yellow>;
val crystalEnder = <aunis:crystal_ender>;
val crystalWhite = <aunis:crystal_white>;
val machineFrame = <thermalexpansion:frame>;
val plateNaquadah = <gregtech:meta_item_1:12307>;
val plateNaquadahAlloy = <gregtech:meta_item_1:12308>;
val plateNaquadahEnriched = <gregtech:meta_item_1:12309>;
val plateDenseNaquadah = <gregtech:meta_item_1:13307>;
val plateDenseNaquadahAlloy = <gregtech:meta_item_1:13308>;
val rodNaquadahAlloy = <gregtech:meta_item_1:14308>;
val rodSteel = <gregtech:meta_item_1:14184>;
val blockNaquadah = <gregtech:compressed_14:6>;
val wireFineNaquadahAlloy = <ore:wireFineNaquadahAlloy>;
val fieldGeneratorEV = <gregtech:meta_item_1:32673>;
val fieldGeneratorIV = <gregtech:meta_item_1:32674>;
val circuitIV = <ore:circuitElite>;

// Gregtech machine Recipes

// Distillery
    distillery.recipeBuilder()
        .fluidInputs(<liquid:silicon>*250)
        .fluidOutputs(<liquid:silicon_molten_white>*100)
        .property("circuit", 0).duration(40).EUt(24).buildAndRegister();
    distillery.recipeBuilder()
        .fluidInputs(<liquid:naquadah_enriched>*300)
        .fluidOutputs(<liquid:naquadah_molten_refined>*200)
        .property("circuit", 0).duration(40).EUt(24).buildAndRegister();

// Chemical Reactor
    chemReactor.recipeBuilder()
        .inputs(<minecraft:redstone>)
        .fluidInputs(<liquid:silicon>*200)
        .fluidOutputs(<liquid:silicon_molten_red>*250)
        .duration(40).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder()
        .inputs(<minecraft:dye:4>)
        .fluidInputs(<liquid:silicon>*200)
        .fluidOutputs(<liquid:silicon_molten_blue>*250)
        .duration(40).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder()
        .inputs(<minecraft:ender_pearl>)
        .fluidInputs(<liquid:silicon>*200)
        .fluidOutputs(<liquid:silicon_molten_ender>*250)
        .duration(40).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder()
        .inputs(<minecraft:glowstone_dust>)
        .fluidInputs(<liquid:silicon>*200)
        .fluidOutputs(<liquid:silicon_molten_yellow>*250)
        .duration(40).EUt(120).buildAndRegister();
    chemReactor.recipeBuilder()
        .inputs(<aunis:circuit_control_base>)
        .fluidInputs(<liquid:naquadah_alloy>*1000)
        .outputs(<aunis:circuit_control_naquadah>)
        .duration(250).EUt(480).buildAndRegister();
    chemReactor.recipeBuilder()
        .inputs(<aunis:circuit_control_base>)
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:circuit_control_crystal>)
        .duration(250).EUt(480).buildAndRegister();

// Autoclave
    autoclave.recipeBuilder()
        .inputs(<gregtech:meta_item_1:2201>)
        .fluidInputs(<liquid:naquadah>*200)
        .outputs(<aunis:crystal_fragment>)
        .duration(160).EUt(120).buildAndRegister();
    autoclave.recipeBuilder()
        .inputs(<aunis:crystal_fragment>)
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(crystalWhite)
        .duration(250).EUt(120).buildAndRegister();
    autoclave.recipeBuilder()
        .inputs(<aunis:crystal_fragment>)
        .fluidInputs(<liquid:silicon_molten_red>*1000)
        .outputs(crystalRed)
        .duration(250).EUt(120).buildAndRegister();
    autoclave.recipeBuilder()
        .inputs(<aunis:crystal_fragment>)
        .fluidInputs(<liquid:silicon_molten_blue>*1000)
        .outputs(crystalBlue)
        .duration(250).EUt(120).buildAndRegister();
    autoclave.recipeBuilder()
        .inputs(<aunis:crystal_fragment>)
        .fluidInputs(<liquid:silicon_molten_yellow>*1000)
        .outputs(crystalYellow)
        .duration(250).EUt(120).buildAndRegister();
    autoclave.recipeBuilder()
        .inputs(<aunis:crystal_fragment>)
        .fluidInputs(<liquid:silicon_molten_ender>*1000)
        .outputs(crystalEnder)
        .duration(250).EUt(120).buildAndRegister();

// Fluid Canner
    fluidCanner.recipeBuilder()
        .inputs(<aunis:capacitor_block_empty>)
        .fluidInputs(<liquid:silicon_molten_red>*8000)
        .outputs(<aunis:capacitor_block>)
        .duration(2000).EUt(30).buildAndRegister();

// Fluid Extractor
    fluidExtractor.recipeBuilder()
        .inputs(<aunis:naquadah_shard>)
        .fluidOutputs(<liquid:naquadah>*16)
        .duration(8).EUt(512).buildAndRegister();

// Metal Bender
    recipes.remove(ringUniverse);   
    metalBender.recipeBuilder()
        .inputs(plateDenseNaquadah)
        .outputs(ringUniverse)
        .property("circuit", 12).duration(40).EUt(1536).buildAndRegister();
    recipes.remove(ringMilkyWay);
    metalBender.recipeBuilder()
        .inputs(plateDenseNaquadahAlloy)
        .outputs(ringMilkyWay)
        .property("circuit", 12).duration(40).EUt(1536).buildAndRegister();

// Assembler

    // Milky Way Base Block
    recipes.remove(<aunis:stargate_milkyway_base_block>);
    assembler.recipeBuilder()
        .inputs([machineFrame, ringMilkyWay*3, crystalBlue, crystalEnder, crystalRed, plateNaquadahAlloy*4, circuitNaquadah, fieldGeneratorIV*2])
        .outputs(<aunis:stargate_milkyway_base_block>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Milky Way Ring
    recipes.remove(<aunis:stargate_milkyway_member_block:6>);
    assembler.recipeBuilder()
        .inputs([machineFrame, ringMilkyWay*3, crystalRed, plateNaquadahAlloy*4, circuitNaquadah, fieldGeneratorIV])
        .outputs(<aunis:stargate_milkyway_member_block:6>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Milky Way Chevron
    recipes.remove(<aunis:stargate_milkyway_member_block:14>);
    assembler.recipeBuilder()
        .inputs([machineFrame, ringMilkyWay*3, crystalYellow, crystalEnder, plateNaquadahAlloy*4, circuitNaquadah, fieldGeneratorIV])
        .outputs(<aunis:stargate_milkyway_member_block:14>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Universe Base Block
    recipes.remove(<aunis:stargate_universe_base_block>);
    assembler.recipeBuilder()
        .inputs([machineFrame, ringUniverse*3, crystalBlue, crystalEnder, crystalRed, plateNaquadah*4, circuitNaquadah, fieldGeneratorIV*2])
        .outputs(<aunis:stargate_universe_base_block>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Universe Ring
    recipes.remove(<aunis:stargate_universe_member_block:6>);
    assembler.recipeBuilder()
        .inputs([machineFrame, ringUniverse*3, crystalRed, plateNaquadah*4, circuitNaquadah, fieldGeneratorIV])
        .outputs(<aunis:stargate_universe_member_block:6>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Universe Chevron
    recipes.remove(<aunis:stargate_universe_member_block:14>);
    assembler.recipeBuilder()
        .inputs([machineFrame, ringUniverse*3, crystalYellow, crystalEnder, plateNaquadah*4, circuitNaquadah, fieldGeneratorIV])
        .outputs(<aunis:stargate_universe_member_block:14>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Orlin Base Block
    recipes.remove(<aunis:stargate_orlin_base_block>);
    assembler.recipeBuilder()
        .inputs([machineFrame, fieldGeneratorEV*2, <gregtech:cable:1087>*64, rodSteel*16, circuitIV])
        .outputs(<aunis:stargate_orlin_base_block>)
        .duration(1200).EUt(1980).buildAndRegister();

    // Orlin Ring
    recipes.remove(<aunis:stargate_orlin_member_block>);
    assembler.recipeBuilder()
        .inputs([machineFrame, fieldGeneratorEV, <gregtech:cable:1087>*64, rodSteel*16])
        .outputs(<aunis:stargate_orlin_member_block>)
        .duration(1200).EUt(1980).buildAndRegister();

    // DHD
    recipes.remove(<aunis:dhd_block>);
    assembler.recipeBuilder()
        .inputs([machineFrame, <minecraft:stone_button>*38, crystalRed, crystalEnder, circuitCrystal, plateNaquadah*2, <aunis:holder_crystal>, <aunis:dhd_brb>])
        .outputs(<aunis:dhd_block>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Transport Ring Fragments
    recipes.remove(ringTransport);
    assembler.recipeBuilder()
        .inputs([plateNaquadah*6, circuitNaquadah, crystalBlue, crystalEnder])
        .outputs(ringTransport)
        .duration(600).EUt(7920).buildAndRegister();

    // Transport Rings
    recipes.remove(<aunis:transportrings_block>);
    assembler.recipeBuilder()
        .inputs([machineFrame, crystalYellow, crystalBlue, crystalRed, crystalEnder, ringTransport*9, plateNaquadah*4])
        .outputs(<aunis:transportrings_block>)
        .duration(1200).EUt(1980).buildAndRegister();

    // Empty Capacitor Block
    recipes.remove(<aunis:capacitor_block_empty>);
    assembler.recipeBuilder()
        .inputs([machineFrame, crystalRed*4, circuitNaquadah, plateNaquadah*4])
        .outputs(<aunis:capacitor_block_empty>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Beamer
    recipes.remove(<aunis:beamer_block>);
    assembler.recipeBuilder()
        .inputs([machineFrame, <minecraft:beacon>, crystalBlue, crystalRed, plateNaquadah*4, circuitNaquadah, fieldGeneratorIV*2])
        .outputs(<aunis:beamer_block>)
        .duration(1200).EUt(7920).buildAndRegister();

    // Universe Dialer
    recipes.removeShaped(<aunis:universe_dialer>);
    assembler.recipeBuilder()
        .inputs([plateNaquadah*4, circuitCrystal, <ore:paneGlassColorless>, crystalEnder, <minecraft:stone_button>*2])
        .outputs(<aunis:universe_dialer>)
        .duration(600).EUt(7920).buildAndRegister();



//Circuit Assembler

    // DHD Control Crystal
    recipes.remove(<aunis:crystal_control_dhd>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalRed*4, circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:crystal_control_dhd>).duration(600).EUt(7920).buildAndRegister();

    // DHD Glyph Crystal
    recipes.remove(<aunis:crystal_glyph_dhd>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalEnder*2, circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:crystal_glyph_dhd>)
        .duration(600).EUt(7920).buildAndRegister();

    // Stargate Glyph Crystal
    recipes.remove(<aunis:crystal_glyph_stargate>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalBlue, crystalEnder,  circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:crystal_glyph_stargate>)
        .duration(600).EUt(7920).buildAndRegister();

    // Milky Way Glyph Crystal
    recipes.remove(<aunis:crystal_glyph_milkyway>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalBlue, crystalEnder, crystalRed, circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:crystal_glyph_milkyway>)
        .duration(600).EUt(7920).buildAndRegister();

    // Peqasus Glyph Crystal
    recipes.remove(<aunis:crystal_glyph_pegasus>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalBlue*2,  circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:crystal_glyph_pegasus>)
        .duration(600).EUt(7920).buildAndRegister();

    // Universe Glyph Crystal
    recipes.remove(<aunis:crystal_glyph_universe>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalYellow, crystalWhite, crystalRed, circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:crystal_glyph_universe>)
        .duration(600).EUt(7920).buildAndRegister();

    // Control Circuit Base
    recipes.remove(<aunis:circuit_control_base>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalYellow, crystalBlue, crystalRed, crystalEnder, circuitIV*4, <gregtech:meta_item_2:32476>*4, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:circuit_control_base>)
        .duration(400).EUt(7920).buildAndRegister();

    // Beamer Power Crystal
    recipes.remove(<aunis:beamer_crystal_power>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalRed*2, circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:beamer_crystal_power>)
        .duration(600).EUt(7920).buildAndRegister();

    // Beamer Fluid Crystal
    recipes.remove(<aunis:beamer_crystal_fluid>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalBlue*2, circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:beamer_crystal_fluid>)
        .duration(600).EUt(7920).buildAndRegister();

    // Beamer Power Crystal
    recipes.remove(<aunis:beamer_crystal_items>);
    circuitAssembler.recipeBuilder()
        .inputs([crystalEnder*2, circuitCrystal, wireFineNaquadahAlloy*4])
        .fluidInputs(<liquid:silicon_molten_white>*1000)
        .outputs(<aunis:beamer_crystal_items>)
        .duration(600).EUt(7920).buildAndRegister();

// Crafting Table Recipes

val plateGold = <gregtech:meta_item_1:12026>;

// Transport Ring Controller
recipes.remove(<aunis:transportrings_controller_block>);
recipes.addShaped(<aunis:transportrings_controller_block>,
[[<minecraft:stone_button>,plateGold,<minecraft:stone_button>]
,[plateGold,circuitNaquadah,plateGold]
,[plateNaquadahAlloy,crystalEnder,plateNaquadahAlloy]]);

// Crystal Holder
recipes.remove(<aunis:holder_crystal>);
recipes.addShaped(<aunis:holder_crystal>,
[[rodNaquadahAlloy, null,rodNaquadahAlloy]
,[plateNaquadahAlloy,null,plateNaquadahAlloy]
,[crystalRed,plateNaquadahAlloy,crystalRed]]);

// Big Red Button
recipes.remove(<aunis:dhd_brb>);
recipes.addShaped(<aunis:dhd_brb>,
[[<ore:paneGlassRed>,<ore:paneGlassRed>,<ore:paneGlassRed>]
,[plateNaquadahAlloy,crystalRed,plateNaquadahAlloy]
,[null,plateNaquadahAlloy,null]]);
