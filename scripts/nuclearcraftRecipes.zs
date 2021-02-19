// Nuclearcraft Recipes
import mods.gregtech.recipe.RecipeMap;

val macerator = RecipeMap.getByName("macerator");
val thermalCentrifuge = RecipeMap.getByName("thermal_centrifuge");
val fluidExtractor = RecipeMap.getByName("fluid_extractor");
val alloySmelter = RecipeMap.getByName("alloy_smelter");
val fluidCanner = RecipeMap.getByName("fluid_canner");
val chemBath = RecipeMap.getByName("chemical_bath");
val centrifuge = RecipeMap.getByName("centrifuge");
val blastFurnace = RecipeMap.getByName("blast_furnace");
val laserEngraver = RecipeMap.getByName("laser_engraver");
val mixer = RecipeMap.getByName("mixer");

val dustBoron = <gregtech:meta_item_1:2009>;


// Gregtech machine Recipes

    // Blast Furnace
    blastFurnace.recipeBuilder()
        .inputs([<ore:dustSilicon>.firstItem, <ore:dustGraphite>.firstItem])
        .fluidInputs(<liquid:neon>*500)
        .outputs(<gregtech:meta_item_1:10717>)
        .duration(500).EUt(1920)
        .property("temperature", 3550).buildAndRegister();

    blastFurnace.recipeBuilder()
        .inputs([<nuclearcraft:part:13>])
        .fluidInputs(<liquid:hard_carbon>*1296)
        .outputs(<ore:ingotSicSicCmc>.firstItem)
        .duration(500).EUt(1920)
        .property("temperature", 3550).buildAndRegister();

    // Centrifuge
    centrifuge.recipeBuilder()
        .inputs(<nuclearcraft:ground_cocoa_nibs>)
        .outputs(<ore:dustCocoa>.firstItem)
        .fluidOutputs(<liquid:cocoa_butter>*144)
        .duration(1200).EUt(16).buildAndRegister();

    // Chem Bath
    chemBath.findRecipe(16, [<nuclearcraft:cooler:0>], [<liquid:water>*1000]).remove();
    chemBath.findRecipe(16, [<nuclearcraft:cooler:0>], [<liquid:liquidhelium>*1000]).remove();
    chemBath.findRecipe(16, [<nuclearcraft:cooler:0>], [<liquid:cryotheum>*2000]).remove();

    // Macerator
    macerator.recipeBuilder()
        .inputs(<ore:stoneGranite>)
        .chancedOutput(<nuclearcraft:gem_dust:1>, 8000, 50)
        .chancedOutput(<gregtech:meta_item_1:2065>, 6000, 50)
        .chancedOutput(<nuclearcraft:gem_dust:8>, 3500, 50)
        .duration(400).EUt(30).buildAndRegister();

    macerator.recipeBuilder()
        .inputs(<ore:stoneDiorite>)
        .chancedOutput(<nuclearcraft:gem_dust:5>, 8000, 50)
        .chancedOutput(<nuclearcraft:gem_dust:0>, 6000, 50)
        .chancedOutput(<nuclearcraft:dust:10>, 3500, 50)
        .duration(400).EUt(30).buildAndRegister();

    // Thermal Centrifuge
    thermalCentrifuge.recipeBuilder()
        .inputs(dustBoron)
        .outputs([<nuclearcraft:boron:2>, <nuclearcraft:boron:1>*3])
        .duration(3200).EUt(48).buildAndRegister();

    // Fluid Extractor
    fluidExtractor.findRecipe(16, [<nuclearcraft:cooler:1>], null).remove();
    fluidExtractor.findRecipe(16, [<nuclearcraft:cooler:8>], null).remove();
    fluidExtractor.findRecipe(16, [<nuclearcraft:cooler:10>], null).remove();
    fluidExtractor.recipeBuilder()
        .inputs(dustBoron)
        .fluidOutputs(<liquid:boron>*144)
        .duration(320).EUt(32).buildAndRegister();

    // Alloy Smelter
    alloySmelter.recipeBuilder()
        .inputs([<ore:dustBoron>, <ore:ingotSteel>])
        .outputs(<ore:ingotFerroboron>.firstItem*2)
        .duration(300).EUt(24).buildAndRegister();

    alloySmelter.recipeBuilder()
        .inputs([<ore:dustBoron>, <ore:dustSteel>])
        .outputs(<ore:ingotFerroboron>.firstItem*2)
        .duration(300).EUt(24).buildAndRegister();

    // Fluid Canner
    recipes.remove(<nuclearcraft:cooler:1>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:water>*1000)
        .outputs(<nuclearcraft:cooler:1>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:2>);
    recipes.remove(<nuclearcraft:cooler:2>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:redstone>*2880)
        .outputs(<nuclearcraft:cooler:2>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:3>);
    recipes.remove(<nuclearcraft:cooler:3>);
    recipes.remove(<nuclearcraft:cooler:3>);
    recipes.remove(<nuclearcraft:cooler:3>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:quartz>*2016)
        .outputs(<nuclearcraft:cooler:3>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:4>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:gold>*1152)
        .outputs(<nuclearcraft:cooler:4>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:5>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:glowstone>*2016)
        .outputs(<nuclearcraft:cooler:5>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:6>);
    recipes.remove(<nuclearcraft:cooler:6>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:lapis>*2592)
        .outputs(<nuclearcraft:cooler:6>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:7>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:diamond>*1152)
        .outputs(<nuclearcraft:cooler:7>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:8>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:liquidhelium>*1000)
        .outputs(<nuclearcraft:cooler:8>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:9>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:enderium>*1152)
        .outputs(<nuclearcraft:cooler:9>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:10>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:cryotheum>*2000)
        .outputs(<nuclearcraft:cooler:10>)
        .duration(240).EUt(16).buildAndRegister();


    recipes.remove(<nuclearcraft:cooler:11>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:iron>*1152)
        .outputs(<nuclearcraft:cooler:11>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:12>);
    recipes.remove(<nuclearcraft:cooler:12>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:emerald>*864)
        .outputs(<nuclearcraft:cooler:12>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:13>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:copper>*1152)
        .outputs(<nuclearcraft:cooler:13>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:14>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:tin>*1152)
        .outputs(<nuclearcraft:cooler:14>)
        .duration(240).EUt(16).buildAndRegister();

    recipes.remove(<nuclearcraft:cooler:15>);
    fluidCanner.recipeBuilder()
        .inputs(<nuclearcraft:cooler:0>)
        .fluidInputs(<liquid:magnesium>*1152)
        .outputs(<nuclearcraft:cooler:15>)
        .duration(240).EUt(16).buildAndRegister();

    // Laser Engraver
    laserEngraver.recipeBuilder()
        .inputs(<ore:dustSiliconCarbide>.firstItem)
        .notConsumable(<ore:craftingLensWhite>.firstItem)
        .outputs(<nuclearcraft:part:13>)
        .duration(1200).EUt(1920).buildAndRegister();

    // Mixer
    recipes.remove(<nuclearcraft:fuel_thorium:0>);
    mixer.recipeBuilder()
        .inputs(<ore:ingotThorium232>*9)
        .outputs(<nuclearcraft:fuel_thorium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_thorium:1>);
    mixer.recipeBuilder()
        .inputs(<ore:ingotThorium232Oxide>*9)
        .outputs(<nuclearcraft:fuel_thorium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium233>*1, <ore:ingotUranium238>*8])
        .outputs(<nuclearcraft:fuel_uranium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium233Oxide>*1, <ore:ingotUranium238Oxide>*8])
        .outputs(<nuclearcraft:fuel_uranium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:2>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium233>*4, <ore:ingotUranium238>*5])
        .outputs(<nuclearcraft:fuel_uranium:2>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:3>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium233Oxide>*4, <ore:ingotUranium238Oxide>*5])
        .outputs(<nuclearcraft:fuel_uranium:3>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:4>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium235>*1, <ore:ingotUranium238>*8])
        .outputs(<nuclearcraft:fuel_uranium:4>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:5>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium235Oxide>*1, <ore:ingotUranium238Oxide>*8])
        .outputs(<nuclearcraft:fuel_uranium:5>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:6>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium235>*4, <ore:ingotUranium238>*5])
        .outputs(<nuclearcraft:fuel_uranium:6>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_uranium:7>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotUranium235Oxide>*4, <ore:ingotUranium238Oxide>*5])
        .outputs(<nuclearcraft:fuel_uranium:7>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_neptunium:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotNeptunium236>*1, <ore:ingotNeptunium237>*8])
        .outputs(<nuclearcraft:fuel_neptunium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_neptunium:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotNeptunium236Oxide>*1, <ore:ingotNeptunium237Oxide>*8])
        .outputs(<nuclearcraft:fuel_neptunium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_neptunium:2>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotNeptunium236>*4, <ore:ingotNeptunium237>*5])
        .outputs(<nuclearcraft:fuel_neptunium:2>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_neptunium:3>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotNeptunium236Oxide>*4, <ore:ingotNeptunium237Oxide>*5])
        .outputs(<nuclearcraft:fuel_neptunium:3>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium239>*1, <ore:ingotPlutonium242>*8])
        .outputs(<nuclearcraft:fuel_plutonium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium239Oxide>*1, <ore:ingotPlutonium242Oxide>*8])
        .outputs(<nuclearcraft:fuel_plutonium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:2>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium239>*4, <ore:ingotPlutonium242>*5])
        .outputs(<nuclearcraft:fuel_plutonium:2>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:3>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium239Oxide>*4, <ore:ingotPlutonium242Oxide>*5])
        .outputs(<nuclearcraft:fuel_plutonium:3>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:4>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium241>*1, <ore:ingotPlutonium242>*8])
        .outputs(<nuclearcraft:fuel_plutonium:4>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:5>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium241Oxide>*1, <ore:ingotPlutonium242Oxide>*8])
        .outputs(<nuclearcraft:fuel_plutonium:5>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:6>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium241>*4, <ore:ingotPlutonium242>*5])
        .outputs(<nuclearcraft:fuel_plutonium:6>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_plutonium:7>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium241Oxide>*4, <ore:ingotPlutonium242Oxide>*5])
        .outputs(<nuclearcraft:fuel_plutonium:7>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_mixed_oxide:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium239Oxide>*1, <ore:ingotUranium238Oxide>*8])
        .outputs(<nuclearcraft:fuel_mixed_oxide:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_mixed_oxide:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotPlutonium241Oxide>*1, <ore:ingotUranium238Oxide>*8])
        .outputs(<nuclearcraft:fuel_mixed_oxide:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_americium:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotAmericium242>*1, <ore:ingotAmericium243>*8])
        .outputs(<nuclearcraft:fuel_americium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_americium:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotAmericium242Oxide>*1, <ore:ingotAmericium243Oxide>*8])
        .outputs(<nuclearcraft:fuel_americium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_americium:2>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotAmericium242>*4, <ore:ingotAmericium243>*5])
        .outputs(<nuclearcraft:fuel_americium:2>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_americium:3>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotAmericium242Oxide>*4, <ore:ingotAmericium243Oxide>*5])
        .outputs(<nuclearcraft:fuel_americium:3>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium243>*1, <ore:ingotCurium246>*8])
        .outputs(<nuclearcraft:fuel_curium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium243Oxide>*1, <ore:ingotCurium246Oxide>*8])
        .outputs(<nuclearcraft:fuel_curium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:2>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium243>*4, <ore:ingotCurium246>*5])
        .outputs(<nuclearcraft:fuel_curium:2>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:3>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium243Oxide>*4, <ore:ingotCurium246Oxide>*5])
        .outputs(<nuclearcraft:fuel_curium:3>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:4>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium245>*1, <ore:ingotCurium246>*8])
        .outputs(<nuclearcraft:fuel_curium:4>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:5>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium245Oxide>*1, <ore:ingotCurium246Oxide>*8])
        .outputs(<nuclearcraft:fuel_curium:5>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:6>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium245>*4, <ore:ingotCurium246>*5])
        .outputs(<nuclearcraft:fuel_curium:6>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:7>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium245Oxide>*4, <ore:ingotCurium246Oxide>*5])
        .outputs(<nuclearcraft:fuel_curium:7>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:8>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium247>*1, <ore:ingotCurium246>*8])
        .outputs(<nuclearcraft:fuel_curium:8>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:9>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium247Oxide>*1, <ore:ingotCurium246Oxide>*8])
        .outputs(<nuclearcraft:fuel_curium:9>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:10>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium247>*4, <ore:ingotCurium246>*5])
        .outputs(<nuclearcraft:fuel_curium:10>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_curium:11>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCurium247Oxide>*4, <ore:ingotCurium246Oxide>*5])
        .outputs(<nuclearcraft:fuel_curium:11>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_berkelium:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotBerkelium248>*1, <ore:ingotBerkelium247>*8])
        .outputs(<nuclearcraft:fuel_berkelium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_berkelium:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotBerkelium248Oxide>*1, <ore:ingotBerkelium247Oxide>*8])
        .outputs(<nuclearcraft:fuel_berkelium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_berkelium:2>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotBerkelium248>*4, <ore:ingotBerkelium247>*5])
        .outputs(<nuclearcraft:fuel_berkelium:2>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_berkelium:3>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotBerkelium248Oxide>*4, <ore:ingotBerkelium247Oxide>*5])
        .outputs(<nuclearcraft:fuel_berkelium:3>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:0>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium249>*1, <ore:ingotCalifornium252>*8])
        .outputs(<nuclearcraft:fuel_californium:0>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:1>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium249Oxide>*1, <ore:ingotCalifornium252Oxide>*8])
        .outputs(<nuclearcraft:fuel_californium:1>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:2>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium249>*4, <ore:ingotCalifornium252>*5])
        .outputs(<nuclearcraft:fuel_californium:2>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:3>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium249Oxide>*4, <ore:ingotCalifornium252Oxide>*5])
        .outputs(<nuclearcraft:fuel_californium:3>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:4>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium251>*1, <ore:ingotCalifornium252>*8])
        .outputs(<nuclearcraft:fuel_californium:4>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:5>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium251Oxide>*1, <ore:ingotCalifornium252Oxide>*8])
        .outputs(<nuclearcraft:fuel_californium:5>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:6>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium251>*4, <ore:ingotCalifornium252>*5])
        .outputs(<nuclearcraft:fuel_californium:6>)
        .duration(1600).EUt(48).buildAndRegister();

    recipes.remove(<nuclearcraft:fuel_californium:7>);
    mixer.recipeBuilder()
        .inputs([<ore:ingotCalifornium251Oxide>*4, <ore:ingotCalifornium252Oxide>*5])
        .outputs(<nuclearcraft:fuel_californium:7>)
        .duration(1600).EUt(48).buildAndRegister();

// Crafting Table Recipes

val plateBasic = <ore:plateBasic>;
val plateAdvanced = <ore:plateAdvanced>;
val plateDU = <ore:plateDU>;
val plateElite = <ore:plateElite>;
val plateObsidian = <ore:plateObsidian>;
val plateSteel = <ore:plateSteel>;
val plateLead = <ore:plateLead>;
val plateCopper = <ore:plateCopper>;
val plateRhodium = <ore:plateRhodiumPlatedPalladium>;
val plateEnderium = <ore:plateEnderium>;
val plateGermanium = <ore:plateGermanium>;
val plateGraphite = <ore:plateGraphite>;
val plateSilicon = <ore:plateSilicon>;
val plateZirconium = <ore:plateZirconium>;
val plateZircaloy = <ore:plateZircaloy>;
val plateTough = <ore:plateTough>;
val plateHardCarbon = <ore:plateHardCarbon>;
val plateExtreme = <ore:plateExtreme>;
val plateFerroboron = <ore:plateFerroboron>;
val plateThermoconducting = <ore:plateThermoconducting>;
val plateHslaSteel = <ore:plateHSLASteel>;
val plateSicCmc = <ore:plateSicSicCmc>;
val wireFineCopper = <ore:wireFineCopper>;
val glassBorosilicate = <gtadditions:ga_transparent_casing:1>;
val glassReinforced = <gtadditions:ga_transparent_casing:0>;
val frameNuclear = <nuclearcraft:part:10>;
val frameSteel = <nuclearcraft:part:12>;
val solenoidCopper = <ore:solenoidCopper>;
val solenoidMagnesium = <ore:solenoidMagnesiumDiboride>;
val circuitEV = <ore:circuitExtreme>;
val circuitLUV = <ore:circuitMaster>;
val motorEV = <gregtech:meta_item_1:32603>;
val armEV = <gregtech:meta_item_1:32653>;
val pumpEV = <gregtech:meta_item_1:32613>;

recipes.removeShaped(<nuclearcraft:fission_block>);
recipes.addShaped(<nuclearcraft:fission_block>*2,
[[plateTough,plateBasic,plateTough]
,[plateBasic,<gregtech:frame_stainless_steel>,plateBasic]
,[plateTough,plateBasic,plateTough]]);

recipes.remove(<nuclearcraft:fission_block:1>);
recipes.addShaped(<nuclearcraft:fission_block:1>*2,
[[plateObsidian,plateBasic,plateObsidian]
,[plateBasic,plateTough,plateBasic]
,[plateObsidian,plateBasic,plateObsidian]]);

recipes.remove(<nuclearcraft:reactor_casing_transparent>);
recipes.remove(<nuclearcraft:reactor_casing_transparent>);
recipes.addShapeless(<nuclearcraft:reactor_casing_transparent>, [<nuclearcraft:fission_block>, glassBorosilicate]);
recipes.addShaped(<nuclearcraft:reactor_casing_transparent>*2,
[[glassBorosilicate,plateBasic,glassBorosilicate]
,[plateBasic,plateTough,plateBasic]
,[glassBorosilicate,plateBasic,glassBorosilicate]]);

recipes.remove(<nuclearcraft:cell_block>);
recipes.addShaped(<nuclearcraft:cell_block>,
[[plateTough,glassReinforced,plateTough]
,[glassReinforced,null,glassReinforced]
,[plateTough,glassReinforced,plateTough]]);

recipes.remove(<nuclearcraft:cooler:0>);
recipes.addShaped(<nuclearcraft:cooler:0>,
[[plateTough,plateSteel,plateTough]
,[plateSteel,null,plateSteel]
,[plateTough,plateSteel,plateTough]]);

recipes.remove(<nuclearcraft:decay_hastener_idle>);
recipes.addShaped(<nuclearcraft:decay_hastener_idle>,
[[plateAdvanced,circuitEV,plateAdvanced]
,[plateEnderium,frameNuclear,plateEnderium]
,[plateAdvanced,solenoidCopper,plateAdvanced]]);

recipes.remove(<nuclearcraft:irradiator_idle>);
recipes.addShaped(<nuclearcraft:irradiator_idle>,
[[plateAdvanced,plateEnderium,plateAdvanced]
,[solenoidCopper,frameNuclear,solenoidCopper]
,[plateAdvanced,pumpEV,plateAdvanced]]);

recipes.remove(<nuclearcraft:machine_interface>);
recipes.addShaped(<nuclearcraft:machine_interface>,
[[plateSteel,armEV,plateSteel]
,[motorEV,frameNuclear,motorEV]
,[plateSteel,pumpEV,plateSteel]]);

recipes.addShaped(<nuclearcraft:fission_controller_new_fixed>,
[[plateBasic,circuitEV,plateBasic]
,[armEV,frameNuclear,armEV]
,[plateBasic,circuitEV,plateBasic]]);

recipes.remove(<nuclearcraft:fission_port>);
recipes.addShaped(<nuclearcraft:fission_port>,
[[null,solenoidCopper,null]
,[armEV,frameNuclear,armEV]
,[null,<minecraft:hopper>,null]]);

recipes.remove(<nuclearcraft:fusion_core>);
recipes.addShaped(<nuclearcraft:fusion_core>,
[[plateRhodium,<gregtech:meta_item_1:32675>,plateRhodium]
,[<nuclearcraft:fusion_connector>,frameNuclear,<nuclearcraft:fusion_connector>]
,[plateRhodium,circuitLUV,plateRhodium]]);

recipes.remove(<nuclearcraft:fusion_connector>);
recipes.addShaped(<nuclearcraft:fusion_connector>,
[[plateSteel,circuitLUV,plateSteel]
,[<ore:wireGtSingleLuvSuperconductor>,frameNuclear,<ore:wireGtSingleLuvSuperconductor>]
,[plateSteel,circuitLUV,plateSteel]]);

val RtgUranium = <nuclearcraft:rtg_uranium>;
recipes.remove(<nuclearcraft:rtg_uranium>);
recipes.addShaped(<nuclearcraft:rtg_uranium>,
[[plateBasic,plateGermanium,plateBasic]
,[plateSilicon,<ore:blockUranium238>,plateSilicon]
,[plateBasic,plateGermanium,plateBasic]]);

val RtgUraniumCompact = <notenoughrtgs:rtg_uranium_compact>;
recipes.remove(<notenoughrtgs:rtg_uranium_compact>);
recipes.addShaped(<notenoughrtgs:rtg_uranium_compact>,
[[RtgUranium,RtgUranium,RtgUranium]
,[RtgUranium,plateTough,RtgUranium]
,[RtgUranium,RtgUranium,RtgUranium]]);

recipes.remove(<notenoughrtgs:rtg_uranium_dense>);
recipes.addShaped(<notenoughrtgs:rtg_uranium_dense>,
[[RtgUraniumCompact,RtgUraniumCompact,RtgUraniumCompact]
,[RtgUraniumCompact,plateExtreme,RtgUraniumCompact]
,[RtgUraniumCompact,RtgUraniumCompact,RtgUraniumCompact]]);

val RtgPlutonium = <nuclearcraft:rtg_plutonium>;
recipes.remove(<nuclearcraft:rtg_plutonium>);
recipes.addShaped(<nuclearcraft:rtg_plutonium>,
[[plateAdvanced,plateGermanium,plateAdvanced]
,[plateSilicon,<ore:ingotPlutonium238>,plateSilicon]
,[plateAdvanced,plateGermanium,plateAdvanced]]);

val RtgPlutoniumCompact = <notenoughrtgs:rtg_plutonium_compact>;
recipes.remove(<notenoughrtgs:rtg_plutonium_compact>);
recipes.addShaped(<notenoughrtgs:rtg_plutonium_compact>,
[[RtgPlutonium,RtgPlutonium,RtgPlutonium]
,[RtgPlutonium,plateTough,RtgPlutonium]
,[RtgPlutonium,RtgPlutonium,RtgPlutonium]]);

recipes.remove(<notenoughrtgs:rtg_plutonium_dense>);
recipes.addShaped(<notenoughrtgs:rtg_plutonium_dense>,
[[RtgPlutoniumCompact,RtgPlutoniumCompact,RtgPlutoniumCompact]
,[RtgPlutoniumCompact,plateExtreme,RtgPlutoniumCompact]
,[RtgPlutoniumCompact,RtgPlutoniumCompact,RtgPlutoniumCompact]]);

val RtgAmericium = <nuclearcraft:rtg_americium>;
recipes.remove(<nuclearcraft:rtg_americium>);
recipes.addShaped(<nuclearcraft:rtg_americium>,
[[plateAdvanced,plateGermanium,plateAdvanced]
,[plateSilicon,<ore:ingotAmericium241>,plateSilicon]
,[plateAdvanced,plateGermanium,plateAdvanced]]);

val RtgAmericiumCompact = <notenoughrtgs:rtg_americium_compact>;
recipes.remove(<notenoughrtgs:rtg_americium_compact>);
recipes.addShaped(<notenoughrtgs:rtg_americium_compact>,
[[RtgAmericium,RtgAmericium,RtgAmericium]
,[RtgAmericium,plateTough,RtgAmericium]
,[RtgAmericium,RtgAmericium,RtgAmericium]]);

recipes.remove(<notenoughrtgs:rtg_americium_dense>);
recipes.addShaped(<notenoughrtgs:rtg_americium_dense>,
[[RtgAmericiumCompact,RtgAmericiumCompact,RtgAmericiumCompact]
,[RtgAmericiumCompact,plateExtreme,RtgAmericiumCompact]
,[RtgAmericiumCompact,RtgAmericiumCompact,RtgAmericiumCompact]]);

val RtgCalifornium = <nuclearcraft:rtg_californium>;
recipes.remove(<nuclearcraft:rtg_californium>);
recipes.addShaped(<nuclearcraft:rtg_californium>,
[[plateAdvanced,plateGermanium,plateAdvanced]
,[plateSilicon,<ore:ingotCalifornium250>,plateSilicon]
,[plateAdvanced,plateGermanium,plateAdvanced]]);

val RtgCaliforniumCompact = <notenoughrtgs:rtg_californium_compact>;
recipes.remove(<notenoughrtgs:rtg_californium_compact>);
recipes.addShaped(<notenoughrtgs:rtg_californium_compact>,
[[RtgCalifornium,RtgCalifornium,RtgCalifornium]
,[RtgCalifornium,plateTough,RtgCalifornium]
,[RtgCalifornium,RtgCalifornium,RtgCalifornium]]);

recipes.remove(<notenoughrtgs:rtg_californium_dense>);
recipes.addShaped(<notenoughrtgs:rtg_californium_dense>,
[[RtgCaliforniumCompact,RtgCaliforniumCompact,RtgCaliforniumCompact]
,[RtgCaliforniumCompact,plateExtreme,RtgCaliforniumCompact]
,[RtgCaliforniumCompact,RtgCaliforniumCompact,RtgCaliforniumCompact]]);

recipes.remove(<nuclearcraft:solar_panel_basic>);
recipes.addShaped(<nuclearcraft:solar_panel_basic>,
[[<ore:dustGraphite>,<ore:dustNetherQuartz>,<ore:dustGraphite>]
,[plateSteel,frameNuclear,plateSteel]
,[<ore:gemLapis>,<ore:gemLapis>,<ore:gemLapis>]]);

recipes.remove(<nuclearcraft:solar_panel_advanced>);
recipes.addShaped(<nuclearcraft:solar_panel_advanced>,
[[plateAdvanced,<ore:dustGraphite>,plateAdvanced]
,[<nuclearcraft:solar_panel_basic>,<nuclearcraft:solar_panel_basic>,<nuclearcraft:solar_panel_basic>]
,[plateAdvanced,<ore:gemLapis>,plateAdvanced]]);

recipes.remove(<nuclearcraft:solar_panel_du>);
recipes.addShaped(<nuclearcraft:solar_panel_du>,
[[plateDU,<ore:dustGraphite>,plateDU]
,[<nuclearcraft:solar_panel_advanced>,<nuclearcraft:solar_panel_advanced>,<nuclearcraft:solar_panel_advanced>]
,[plateDU,<ore:gemLapis>,plateDU]]);

recipes.remove(<nuclearcraft:solar_panel_elite>);
recipes.addShaped(<nuclearcraft:solar_panel_elite>,
[[plateElite,<ore:dustGraphite>,plateElite]
,[<nuclearcraft:solar_panel_du>,<nuclearcraft:solar_panel_du>,<nuclearcraft:solar_panel_du>]
,[plateElite,<ore:gemLapis>,plateElite]]);

recipes.remove(<nuclearcraft:decay_generator>);
recipes.addShaped(<nuclearcraft:decay_generator>,
[[plateLead,plateGermanium,plateLead]
,[plateSilicon,frameNuclear,plateSilicon]
,[plateLead,plateGermanium,plateLead]]);

recipes.remove(<nuclearcraft:voltaic_pile_basic>);
recipes.addShaped(<nuclearcraft:voltaic_pile_basic>,
[[plateBasic,<ore:plateMagnesium>,plateBasic]
,[wireFineCopper,frameNuclear,wireFineCopper]
,[plateBasic,plateZircaloy,plateBasic]]);

recipes.remove(<nuclearcraft:voltaic_pile_advanced>);
recipes.addShaped(<nuclearcraft:voltaic_pile_advanced>,
[[plateAdvanced,<ore:plateMagnesium>,plateAdvanced]
,[<nuclearcraft:voltaic_pile_basic>,<nuclearcraft:voltaic_pile_basic>,<nuclearcraft:voltaic_pile_basic>]
,[plateAdvanced,plateZircaloy,plateAdvanced]]);

recipes.remove(<nuclearcraft:voltaic_pile_du>);
recipes.addShaped(<nuclearcraft:voltaic_pile_du>,
[[plateDU,<ore:plateMagnesium>,plateDU]
,[<nuclearcraft:voltaic_pile_advanced>,<nuclearcraft:voltaic_pile_advanced>,<nuclearcraft:voltaic_pile_advanced>]
,[plateDU,plateZircaloy,plateDU]]);

recipes.remove(<nuclearcraft:voltaic_pile_elite>);
recipes.addShaped(<nuclearcraft:voltaic_pile_elite>,
[[plateElite,<ore:plateMagnesium>,plateElite]
,[<nuclearcraft:voltaic_pile_du>,<nuclearcraft:voltaic_pile_du>,<nuclearcraft:voltaic_pile_du>]
,[plateElite,plateZircaloy,plateElite]]);

recipes.remove(<nuclearcraft:lithium_ion_battery_basic>);
recipes.addShaped(<nuclearcraft:lithium_ion_battery_basic>,
[[plateBasic,<nuclearcraft:lithium_ion_cell>,plateBasic]
,[<nuclearcraft:lithium_ion_cell>,frameNuclear,<nuclearcraft:lithium_ion_cell>]
,[plateBasic,<nuclearcraft:lithium_ion_cell>,plateBasic]]);

recipes.remove(<nuclearcraft:lithium_ion_battery_advanced>);
recipes.addShaped(<nuclearcraft:lithium_ion_battery_advanced>,
[[plateAdvanced,<ore:plateLithiumManganeseDioxide>,plateAdvanced]
,[<nuclearcraft:lithium_ion_battery_basic>,<nuclearcraft:lithium_ion_battery_basic>,<nuclearcraft:lithium_ion_battery_basic>]
,[plateAdvanced,solenoidMagnesium,plateAdvanced]]);

recipes.remove(<nuclearcraft:lithium_ion_battery_du>);
recipes.addShaped(<nuclearcraft:lithium_ion_battery_du>,
[[plateDU,<ore:plateLithiumManganeseDioxide>,plateDU]
,[<nuclearcraft:lithium_ion_battery_advanced>,<nuclearcraft:lithium_ion_battery_advanced>,<nuclearcraft:lithium_ion_battery_advanced>]
,[plateDU,solenoidMagnesium,plateDU]]);

recipes.remove(<nuclearcraft:lithium_ion_battery_elite>);
recipes.addShaped(<nuclearcraft:lithium_ion_battery_elite>,
[[plateElite,<ore:plateLithiumManganeseDioxide>,plateElite]
,[<nuclearcraft:lithium_ion_battery_du>,<nuclearcraft:lithium_ion_battery_du>,<nuclearcraft:lithium_ion_battery_du>]
,[plateElite,solenoidMagnesium,plateElite]]);

recipes.addShaped(<nuclearcraft:part:3>,
[[<ore:dustCrystalBinder>,plateFerroboron,<ore:dustCrystalBinder>]
,[plateFerroboron,plateDU,plateFerroboron]
,[<ore:dustCrystalBinder>,plateFerroboron,<ore:dustCrystalBinder>]]);

recipes.remove(<nuclearcraft:buffer>);
recipes.addShaped(<nuclearcraft:buffer>,
[[plateSteel,<nuclearcraft:lithium_ion_cell>,plateSteel]
,[<minecraft:hopper>,frameNuclear,<minecraft:bucket>]
,[plateSteel,<minecraft:chest>,plateSteel]]);

recipes.remove(<nuclearcraft:active_cooler>);
recipes.addShaped(<nuclearcraft:active_cooler>,
[[plateSteel,plateThermoconducting,plateSteel]
,[plateThermoconducting,<gregtech:machine:813>,plateThermoconducting]
,[plateSteel,plateThermoconducting,plateSteel]]);

recipes.remove(<nuclearcraft:bin>);
recipes.addShaped(<nuclearcraft:bin>,
[[plateSteel,plateZirconium,plateSteel]
,[plateZirconium,null,plateZirconium]
,[plateSteel,plateZirconium,plateSteel]]);

recipes.removeShaped(<nuclearcraft:fusion_electromagnet_idle>,
[[solenoidCopper,plateAdvanced,solenoidCopper]
,[plateAdvanced,null,plateAdvanced]
,[solenoidCopper,plateAdvanced,solenoidCopper]]);
recipes.addShaped(<nuclearcraft:fusion_electromagnet_idle>,
[[<gregtech:meta_item_1:12299>,plateAdvanced,<gregtech:meta_item_1:12299>]
,[plateAdvanced,null,plateAdvanced]
,[<gregtech:meta_item_1:12299>,plateAdvanced,<gregtech:meta_item_1:12299>]]);

recipes.remove(<nuclearcraft:fusion_electromagnet_transparent_idle>);
recipes.remove(<nuclearcraft:fusion_electromagnet_transparent_idle>);
recipes.addShapeless(<nuclearcraft:fusion_electromagnet_transparent_idle>,[<nuclearcraft:fusion_electromagnet_idle>, glassBorosilicate]);
recipes.addShaped(<nuclearcraft:fusion_electromagnet_transparent_idle>,
[[<gregtech:meta_item_1:12299>,plateAdvanced,<gregtech:meta_item_1:12299>]
,[plateAdvanced,glassBorosilicate,plateAdvanced]
,[<gregtech:meta_item_1:12299>,plateAdvanced,<gregtech:meta_item_1:12299>]]);

recipes.remove(<nuclearcraft:salt_fission_controller>);
recipes.addShaped(<nuclearcraft:salt_fission_controller>,
[[plateElite,plateExtreme,plateElite]
,[plateHardCarbon,frameSteel,plateHardCarbon]
,[plateElite,circuitEV,plateElite]]);

recipes.removeShaped(<nuclearcraft:salt_fission_wall>,
[[<ore:ingotSteel>,<ore:ingotTough>,<ore:ingotSteel>]
,[<ore:ingotTough>,frameSteel,<ore:ingotTough>]
,[<ore:ingotSteel>,<ore:ingotTough>,<ore:ingotSteel>]]);
recipes.addShaped(<nuclearcraft:salt_fission_wall>*2,
[[plateSteel,plateTough,plateSteel]
,[plateTough,frameSteel,plateTough]
,[plateSteel,plateTough,plateSteel]]);

recipes.remove(<nuclearcraft:salt_fission_glass>);
recipes.addShapeless(<nuclearcraft:salt_fission_glass>, [<nuclearcraft:salt_fission_wall>, glassBorosilicate]);

recipes.remove(<nuclearcraft:salt_fission_frame>);
recipes.addShaped(<nuclearcraft:salt_fission_frame>*4,
[[<ore:stickSteel>,<nuclearcraft:salt_fission_wall>,<ore:stickSteel>]
,[<nuclearcraft:salt_fission_wall>,null,<nuclearcraft:salt_fission_wall>]
,[<ore:stickSteel>,<nuclearcraft:salt_fission_wall>,<ore:stickSteel>]]);

recipes.remove(<nuclearcraft:salt_fission_vent>*2);
recipes.addShaped(<nuclearcraft:salt_fission_vent>,
[[plateSteel,plateTough,plateSteel]
,[pumpEV,frameSteel,pumpEV]
,[plateSteel,plateTough,plateSteel]]);

recipes.remove(<nuclearcraft:salt_fission_vessel>);
recipes.addShaped(<nuclearcraft:salt_fission_vessel>,
[[plateElite,plateTough,plateElite]
,[plateZircaloy,frameSteel,plateZircaloy]
,[plateElite,pumpEV,plateElite]]);

recipes.remove(<nuclearcraft:salt_fission_heater>);
recipes.addShaped(<nuclearcraft:salt_fission_heater>,
[[plateElite,plateExtreme,plateElite]
,[plateThermoconducting,frameSteel,plateThermoconducting]
,[plateElite,pumpEV,plateElite]]);

recipes.remove(<nuclearcraft:salt_fission_moderator>);
recipes.remove(<nuclearcraft:salt_fission_moderator>);
recipes.addShaped(<nuclearcraft:salt_fission_moderator>,
[[plateElite,plateSteel,plateElite]
,[plateSteel,<ore:blockGraphite>,plateSteel]
,[plateElite,plateSteel,plateElite]]);
recipes.addShaped(<nuclearcraft:salt_fission_moderator>,
[[plateElite,plateSteel,plateElite]
,[plateSteel,<ore:blockBeryllium>,plateSteel]
,[plateElite,plateSteel,plateElite]]);

recipes.remove(<nuclearcraft:salt_fission_distributor>);
recipes.addShaped(<nuclearcraft:salt_fission_distributor>,
[[plateElite,plateExtreme,plateElite]
,[<gregtech:meta_item_1:32683>,<nuclearcraft:salt_fission_vent>,<gregtech:meta_item_1:32683>]
,[plateElite,plateExtreme,plateElite]]);

recipes.remove(<nuclearcraft:salt_fission_retriever>);
recipes.addShaped(<nuclearcraft:salt_fission_retriever>,
[[plateElite,plateTough,plateElite]
,[<gregtech:meta_item_1:32693>,<nuclearcraft:salt_fission_vent>,<gregtech:meta_item_1:32693>]
,[plateElite,plateTough,plateElite]]);

recipes.remove(<nuclearcraft:salt_fission_redstone_port>);
recipes.addShaped(<nuclearcraft:salt_fission_redstone_port>,
[[plateElite,<ore:circuitGood>,plateElite]
,[<ore:wireLogicRedstone>,frameSteel,<ore:wireLogicRedstone>]
,[plateElite,<ore:wireLogicRedstone>,plateElite]]);

recipes.remove(<nuclearcraft:salt_fission_computer_port>);
recipes.addShaped(<nuclearcraft:salt_fission_computer_port>,
[[plateElite,<ore:circuitAdvanced>,plateElite]
,[plateTough,frameSteel,plateTough]
,[plateElite,<opencomputers:cable>,plateElite]]);

recipes.remove(<nuclearcraft:heat_exchanger_controller>);
recipes.addShaped(<nuclearcraft:heat_exchanger_controller>,
[[plateAdvanced,plateThermoconducting,plateAdvanced]
,[plateSteel,frameSteel,plateSteel]
,[plateAdvanced,circuitEV,plateAdvanced]]);

recipes.remove(<nuclearcraft:heat_exchanger_wall>);
recipes.addShaped(<nuclearcraft:heat_exchanger_wall>*2,
[[plateSteel,<ore:plateStone>,plateSteel]
,[<ore:plateStone>,frameSteel,<ore:plateStone>]
,[plateSteel,<ore:plateStone>,plateSteel]]);

recipes.remove(<nuclearcraft:heat_exchanger_glass>);
recipes.addShapeless(<nuclearcraft:heat_exchanger_glass>,[<nuclearcraft:heat_exchanger_wall>, glassReinforced]);

recipes.remove(<nuclearcraft:heat_exchanger_frame>);
recipes.addShaped(<nuclearcraft:heat_exchanger_frame>*4,
[[<ore:stickSteel>,<nuclearcraft:heat_exchanger_wall>,<ore:stickSteel>]
,[<nuclearcraft:heat_exchanger_wall>,null,<nuclearcraft:heat_exchanger_wall>]
,[<ore:stickSteel>,<nuclearcraft:heat_exchanger_wall>,<ore:stickSteel>]]);

recipes.remove(<nuclearcraft:heat_exchanger_vent>);
recipes.addShaped(<nuclearcraft:heat_exchanger_vent>*2,
[[plateSteel,<ore:plateStone>,plateSteel]
,[pumpEV,frameSteel,pumpEV]
,[plateSteel,<ore:plateStone>,plateSteel]]);

recipes.remove(<nuclearcraft:heat_exchanger_tube_copper>);
recipes.addShaped(<nuclearcraft:heat_exchanger_tube_copper>*2,
[[plateBasic,plateCopper,plateBasic]
,[plateCopper,frameSteel,plateCopper]
,[plateBasic,pumpEV,plateBasic]]);

recipes.remove(<nuclearcraft:heat_exchanger_tube_hard_carbon>);
recipes.addShaped(<nuclearcraft:heat_exchanger_tube_hard_carbon>*2,
[[plateAdvanced,plateHardCarbon,plateAdvanced]
,[plateHardCarbon,frameSteel,plateHardCarbon]
,[plateAdvanced,pumpEV,plateAdvanced]]);

recipes.remove(<nuclearcraft:heat_exchanger_tube_thermoconducting>);
recipes.addShaped(<nuclearcraft:heat_exchanger_tube_thermoconducting>*2,
[[plateElite,plateThermoconducting,plateElite]
,[plateThermoconducting,frameSteel,plateThermoconducting]
,[plateElite,pumpEV,plateElite]]);

recipes.remove(<nuclearcraft:heat_exchanger_computer_port>);
recipes.addShaped(<nuclearcraft:heat_exchanger_computer_port>,
[[plateSteel,<ore:circuitAdvanced>,plateSteel]
,[<ore:plateStone>,frameSteel,<ore:plateStone>]
,[plateSteel,<opencomputers:cable>,plateSteel]]);

recipes.remove(<nuclearcraft:turbine_controller>);
recipes.addShaped(<nuclearcraft:turbine_controller>,
[[plateAdvanced,plateHslaSteel,plateAdvanced]
,[plateHslaSteel,frameSteel,plateHslaSteel]
,[plateAdvanced,circuitEV,plateAdvanced]]);

recipes.remove(<nuclearcraft:turbine_wall>);
recipes.addShaped(<nuclearcraft:turbine_wall>*2,
[[plateHslaSteel,plateHslaSteel,plateHslaSteel]
,[plateHslaSteel,frameSteel,plateHslaSteel]
,[plateHslaSteel,plateHslaSteel,plateHslaSteel]]);

recipes.remove(<nuclearcraft:turbine_glass>);
recipes.addShapeless(<nuclearcraft:turbine_glass>, [<nuclearcraft:turbine_wall>, glassReinforced]);

recipes.remove(<nuclearcraft:turbine_frame>);
recipes.addShaped(<nuclearcraft:turbine_frame>*4,
[[<ore:stickHSLASteel>,<nuclearcraft:turbine_wall>,<ore:stickHSLASteel>]
,[<nuclearcraft:turbine_wall>,null,<nuclearcraft:turbine_wall>]
,[<ore:stickHSLASteel>,<nuclearcraft:turbine_wall>,<ore:stickHSLASteel>]]);

recipes.remove(<nuclearcraft:turbine_rotor_shaft>);
recipes.addShaped(<nuclearcraft:turbine_rotor_shaft>*2,
[[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]]);

recipes.remove(<nuclearcraft:turbine_rotor_blade_steel>);
recipes.addShaped(<nuclearcraft:turbine_rotor_blade_steel>*2,
[[plateSteel,plateSteel,plateSteel]
,[plateHslaSteel,plateHslaSteel,plateHslaSteel]
,[plateSteel,plateSteel,plateSteel]]);

recipes.remove(<nuclearcraft:turbine_rotor_blade_extreme>);
recipes.addShaped(<nuclearcraft:turbine_rotor_blade_extreme>*2,
[[plateExtreme,plateExtreme,plateExtreme]
,[plateHslaSteel,plateHslaSteel,plateHslaSteel]
,[plateExtreme,plateExtreme,plateExtreme]]);

recipes.remove(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>);
recipes.addShaped(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>*2,
[[plateSicCmc,plateSicCmc,plateSicCmc]
,[plateHslaSteel,plateHslaSteel,plateHslaSteel]
,[plateSicCmc,plateSicCmc,plateSicCmc]]);

recipes.remove(<nuclearcraft:turbine_rotor_stator>);
recipes.addShaped(<nuclearcraft:turbine_rotor_stator>,
[[null,null,null]
,[plateHslaSteel,plateHslaSteel,plateHslaSteel]
,[plateHslaSteel,plateHslaSteel,plateHslaSteel]]);

recipes.remove(<nuclearcraft:turbine_rotor_bearing>);
recipes.addShaped(<nuclearcraft:turbine_rotor_bearing>,
[[plateHslaSteel,<ore:roundTungstenSteel>,plateHslaSteel]
,[<ore:roundTungstenSteel>,frameSteel,<ore:roundTungstenSteel>]
,[plateHslaSteel,<ore:roundTungstenSteel>,plateHslaSteel]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:0>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:0>,
[[<ore:wireFineMagnesium>,<ore:wireFineMagnesium>,<ore:wireFineMagnesium>]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[<ore:wireFineMagnesium>,<ore:wireFineMagnesium>,<ore:wireFineMagnesium>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:1>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:1>,
[[<ore:wireFineBeryllium>,<ore:wireFineBeryllium>,<ore:wireFineBeryllium>]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[<ore:wireFineBeryllium>,<ore:wireFineBeryllium>,<ore:wireFineBeryllium>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:2>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:2>,
[[<ore:wireFineAluminium>,<ore:wireFineAluminium>,<ore:wireFineAluminium>]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[<ore:wireFineAluminium>,<ore:wireFineAluminium>,<ore:wireFineAluminium>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:3>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:3>,
[[<ore:wireFineGold>,<ore:wireFineGold>,<ore:wireFineGold>]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[<ore:wireFineGold>,<ore:wireFineGold>,<ore:wireFineGold>]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:4>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:4>,
[[wireFineCopper,wireFineCopper,wireFineCopper]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[wireFineCopper,wireFineCopper,wireFineCopper]]);

recipes.remove(<nuclearcraft:turbine_dynamo_coil:5>);
recipes.addShaped(<nuclearcraft:turbine_dynamo_coil:5>,
[[<ore:wireFineSilver>,<ore:wireFineSilver>,<ore:wireFineSilver>]
,[plateHslaSteel,<ore:stickTough>,plateHslaSteel]
,[<ore:wireFineSilver>,<ore:wireFineSilver>,<ore:wireFineSilver>]]);

recipes.remove(<nuclearcraft:turbine_inlet>);
recipes.addShaped(<nuclearcraft:turbine_inlet>*2,
[[plateHslaSteel,plateHslaSteel,plateHslaSteel]
,[plateTough,frameSteel,plateTough]
,[plateHslaSteel,pumpEV,plateHslaSteel]]);

recipes.remove(<nuclearcraft:turbine_outlet>);
recipes.addShaped(<nuclearcraft:turbine_outlet>*2,
[[plateHslaSteel,pumpEV,plateHslaSteel]
,[plateTough,frameSteel,plateTough]
,[plateHslaSteel,plateHslaSteel,plateHslaSteel]]);

recipes.remove(<nuclearcraft:turbine_computer_port>);
recipes.addShaped(<nuclearcraft:turbine_computer_port>,
[[plateHslaSteel,<ore:circuitAdvanced>,plateHslaSteel]
,[plateTough,frameSteel,plateTough]
,[plateHslaSteel,<opencomputers:cable>,plateHslaSteel]]);

val collectorHelium = <nuclearcraft:helium_collector>;
recipes.remove(collectorHelium);
recipes.addShaped(collectorHelium,
[[plateBasic,plateZircaloy,plateBasic]
,[plateZircaloy,<ore:blockThorium230>,plateZircaloy]
,[plateBasic,plateZircaloy,plateBasic]]);

val collectorHeliumCompact = <nuclearcraft:helium_collector_compact>;
recipes.remove(<nuclearcraft:helium_collector_compact>);
recipes.addShaped(<nuclearcraft:helium_collector_compact>,
[[collectorHelium,collectorHelium,collectorHelium]
,[collectorHelium,plateTough,collectorHelium]
,[collectorHelium,collectorHelium,collectorHelium]]);

recipes.remove(<nuclearcraft:helium_collector_dense>);
recipes.addShaped(<nuclearcraft:helium_collector_dense>,
[[collectorHeliumCompact,collectorHeliumCompact,collectorHeliumCompact]
,[collectorHeliumCompact,plateExtreme,collectorHeliumCompact]
,[collectorHeliumCompact,collectorHeliumCompact,collectorHeliumCompact]]);

val crucible = <thermalexpansion:machine:6>;
val accumulator = <thermalexpansion:device:0>;
val generatorCobblestone = <nuclearcraft:cobblestone_generator>;
recipes.remove(generatorCobblestone);
recipes.remove(generatorCobblestone);
recipes.addShaped(generatorCobblestone,
[[plateBasic,plateZircaloy,plateBasic]
,[crucible,null,accumulator]
,[plateBasic,plateZircaloy,plateBasic]]);

val generatorCobblestoneCompact = <nuclearcraft:cobblestone_generator_compact>;
recipes.remove(<nuclearcraft:cobblestone_generator_compact>);
recipes.addShaped(<nuclearcraft:cobblestone_generator_compact>,
[[generatorCobblestone,generatorCobblestone,generatorCobblestone]
,[generatorCobblestone,plateTough,generatorCobblestone]
,[generatorCobblestone,generatorCobblestone,generatorCobblestone]]);

recipes.remove(<nuclearcraft:cobblestone_generator_dense>);
recipes.addShaped(<nuclearcraft:cobblestone_generator_dense>,
[[generatorCobblestoneCompact,generatorCobblestoneCompact,generatorCobblestoneCompact]
,[generatorCobblestoneCompact,plateExtreme,generatorCobblestoneCompact]
,[generatorCobblestoneCompact,generatorCobblestoneCompact,generatorCobblestoneCompact]]);

val sourceWater = <nuclearcraft:water_source>;
recipes.remove(sourceWater);
recipes.addShaped(sourceWater,
[[plateBasic,plateZircaloy,plateBasic]
,[plateZircaloy,accumulator,plateZircaloy]
,[plateBasic,plateZircaloy,plateBasic]]);

val sourceWaterCompact = <nuclearcraft:water_source_compact>;
recipes.remove(<nuclearcraft:water_source_compact>);
recipes.addShaped(<nuclearcraft:water_source_compact>,
[[sourceWater,sourceWater,sourceWater]
,[sourceWater,plateTough,sourceWater]
,[sourceWater,sourceWater,sourceWater]]);

recipes.remove(<nuclearcraft:water_source_dense>);
recipes.addShaped(<nuclearcraft:water_source_dense>,
[[sourceWaterCompact,sourceWaterCompact,sourceWaterCompact]
,[sourceWaterCompact,plateExtreme,sourceWaterCompact]
,[sourceWaterCompact,sourceWaterCompact,sourceWaterCompact]]);

val collectorNitrogen = <nuclearcraft:nitrogen_collector>;
recipes.remove(collectorNitrogen);
recipes.addShaped(collectorNitrogen,
[[plateBasic,plateZircaloy,plateBasic]
,[plateZircaloy,<ore:blockBeryllium>,plateZircaloy]
,[plateBasic,plateZircaloy,plateBasic]]);

val collectorNitrogenCompact = <nuclearcraft:nitrogen_collector_compact>;
recipes.remove(<nuclearcraft:nitrogen_collector_compact>);
recipes.addShaped(<nuclearcraft:nitrogen_collector_compact>,
[[collectorNitrogen,collectorNitrogen,collectorNitrogen]
,[collectorNitrogen,plateTough,collectorNitrogen]
,[collectorNitrogen,collectorNitrogen,collectorNitrogen]]);

recipes.remove(<nuclearcraft:nitrogen_collector_dense>);
recipes.addShaped(<nuclearcraft:nitrogen_collector_dense>,
[[collectorNitrogenCompact,collectorNitrogenCompact,collectorNitrogenCompact]
,[collectorNitrogenCompact,plateExtreme,collectorNitrogenCompact]
,[collectorNitrogenCompact,collectorNitrogenCompact,collectorNitrogenCompact]]);

recipes.remove(<nuclearcraft:part:0>);
recipes.remove(<nuclearcraft:part:0>);
recipes.addShaped(<nuclearcraft:part:0>,
[[plateLead,plateGraphite]
,[plateGraphite,plateLead]]);
recipes.addShaped(<nuclearcraft:part:0>,
[[plateGraphite,plateLead]
,[plateLead,plateGraphite]]);

recipes.remove(<nuclearcraft:part:1>);
recipes.addShaped(<nuclearcraft:part:1>,
[[<ore:dustRedstone>,plateTough,<ore:dustRedstone>]
,[plateTough,plateBasic,plateTough]
,[<ore:dustRedstone>,plateTough,<ore:dustRedstone>]]);

recipes.remove(<nuclearcraft:part:2>);
recipes.addShaped(<nuclearcraft:part:2>,
[[<ore:dustSulfur>,<ore:plateUranium>,<ore:dustSulfur>]
,[<ore:plateUranium>,plateAdvanced,<ore:plateUranium>]
,[<ore:dustSulfur>,<ore:plateUranium>,<ore:dustSulfur>]]);

recipes.remove(<nuclearcraft:part:4>);
recipes.addShaped(<nuclearcraft:part:4>,
[[wireFineCopper,wireFineCopper,null]
,[<ore:stickIron>,<ore:stickIron>,null]
,[wireFineCopper,wireFineCopper,null]]);

recipes.remove(<nuclearcraft:part:5>);
recipes.addShaped(<nuclearcraft:part:5>,
[[<ore:wireFineMagnesiumDiboride>,<ore:wireFineMagnesiumDiboride>,null]
,[<ore:stickTough>,<ore:stickTough>,null]
,[<ore:wireFineMagnesiumDiboride>,<ore:wireFineMagnesiumDiboride>,null]]);

recipes.remove(<nuclearcraft:part:10>);
recipes.addShaped(<nuclearcraft:part:10>,
[[plateLead,plateSteel,plateLead]
,[plateTough,<thermalexpansion:frame:0>,plateTough]
,[plateLead,plateSteel,plateLead]]);

recipes.remove(<nuclearcraft:part:11>);
recipes.addShaped(<nuclearcraft:part:11>,
[[plateBasic,plateZircaloy,plateBasic]
,[plateZircaloy,null,plateZircaloy]
,[plateBasic,plateZircaloy,plateBasic]]);

recipes.remove(<nuclearcraft:part:12>);
recipes.addShaped(<nuclearcraft:part:12>,
[[plateSteel,plateTough,plateSteel]
,[plateTough,<thermalexpansion:frame:0>,plateTough]
,[plateSteel,plateTough,plateSteel]]);

recipes.remove(<nuclearcraft:upgrade:0>);
recipes.addShaped(<nuclearcraft:upgrade:0>,
[[<ore:gemLapis>,<ore:dustRedstone>,<ore:gemLapis>]
,[<ore:dustRedstone>,plateSteel,<ore:dustRedstone>]
,[<ore:gemLapis>,<ore:dustRedstone>,<ore:gemLapis>]]);

recipes.remove(<nuclearcraft:upgrade:1>);
recipes.addShaped(<nuclearcraft:upgrade:1>,
[[<ore:dustObsidian>,<ore:dustNetherQuartz>,<ore:dustObsidian>]
,[<ore:dustNetherQuartz>,plateSteel,<ore:dustNetherQuartz>]
,[<ore:dustObsidian>,<ore:dustNetherQuartz>,<ore:dustObsidian>]]);

recipes.remove(<nuclearcraft:lithium_ion_cell>);
recipes.addShaped(<nuclearcraft:lithium_ion_cell>,
[[plateHardCarbon,plateHardCarbon,plateHardCarbon]
,[plateFerroboron,<ore:dustLithium>,plateFerroboron]
,[<ore:plateLithiumManganeseDioxide>,<ore:plateLithiumManganeseDioxide>,<ore:plateLithiumManganeseDioxide>]]);
