// Refined Storage Recipes
import mods.gregtech.recipe.RecipeMap;
val assembler = RecipeMap.getByName("assembler");
val blastFurnace = RecipeMap.getByName("blast_furnace");

// Gregtech Machine Recipes

val foilSilicon = <ore:foilSilicon>;
val plateEnrichedIron = <ore:plateQuartzEnrichedIron>;
val dustRedstone = <ore:dustRedstone>;
val dustDiamond = <ore:dustDiamond>;
val wireFineEnrichedIron = <ore:wireFineQuartzEnrichedIron>;
val wireFineIron = <ore:wireFineIron>;
val wireFineGold = <ore:wireFineGold>;
val frameThermal = <thermalexpansion:frame>;
val frameRefined = <refinedstorage:machine_casing>;
val circuitEV = <ore:circuitExtreme>;
val sensorEV = <gregtech:meta_item_1:32693>;
val emitterEV = <gregtech:meta_item_1:32683>;

// Assembler

    furnace.remove(<refinedstorage:processor:3>);
    assembler.recipeBuilder()
        .inputs(foilSilicon, dustRedstone, wireFineIron*2, circuitEV*2)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:processor:3>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(foilSilicon, dustRedstone, wireFineIron*2, circuitEV*2)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:processor:3>)
        .duration(400).EUt(1920).buildAndRegister();

    furnace.remove(<refinedstorage:processor:4>);
    assembler.recipeBuilder()
        .inputs(foilSilicon, dustRedstone, wireFineGold*2, circuitEV*2)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:processor:4>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(foilSilicon, dustRedstone, wireFineGold*2, circuitEV*2)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:processor:4>)
        .duration(400).EUt(1920).buildAndRegister();

    furnace.remove(<refinedstorage:processor:5>);
    assembler.recipeBuilder()
        .inputs(foilSilicon, dustRedstone, dustDiamond*2, circuitEV*2)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:processor:5>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(foilSilicon, dustRedstone, dustDiamond*2, circuitEV*2)
        .fluidInputs(<liquid:soldering_alloy>*144)
        .outputs(<refinedstorage:processor:5>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:core:0>);
    assembler.recipeBuilder()
        .inputs(<ore:dustGlowstone>, foilSilicon, dustRedstone, wireFineIron, circuitEV*2)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:core:0>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<ore:dustGlowstone>, foilSilicon, dustRedstone, wireFineIron, circuitEV*2)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:core:0>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:core:1>);
    assembler.recipeBuilder()
        .inputs(<ore:dustCertusQuartz>, foilSilicon, dustRedstone, wireFineIron, circuitEV*2)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:core:1>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<ore:dustCertusQuartz>, foilSilicon, dustRedstone, wireFineIron, circuitEV*2)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:core:1>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:portable_grid>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron*6, <refinedstorage:grid>, <refinedstorage:controller>, <refinedstorage:grid:3>, sensorEV, emitterEV)
        .outputs(<refinedstorage:portable_grid>)
        .duration(800).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:cable>);
    assembler.recipeBuilder()
        .inputs(<ore:wireFineQuartzEnrichedIron>*6, <gregtech:meta_item_2:32453>*4, dustRedstone)
        .fluidInputs(<liquid:glass>*144)
        .outputs(<refinedstorage:cable>*6)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:importer>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:cable>, <refinedstorage:core:1>, <refinedstorage:processor:4>, circuitEV)
        .outputs(<refinedstorage:importer>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:exporter>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:cable>, <refinedstorage:core:0>, <refinedstorage:processor:4>, circuitEV)
        .outputs(<refinedstorage:exporter>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:external_storage>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:cable>, <refinedstorage:core:0>, <refinedstorage:core:1>, <refinedstorage:processor:4>, circuitEV, plateEnrichedIron*3, <ore:chestWood>)
        .outputs(<refinedstorage:external_storage>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:constructor>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:cable>, <refinedstorage:core:0>, <refinedstorage:processor:4>, circuitEV, plateEnrichedIron*4)
        .outputs(<refinedstorage:constructor>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:destructor>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:cable>, <refinedstorage:core:1>, <refinedstorage:processor:4>, circuitEV, plateEnrichedIron*4)
        .outputs(<refinedstorage:destructor>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:reader>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:cable>, <refinedstorage:core:0>, <refinedstorage:processor:5>, circuitEV, plateEnrichedIron*4)
        .outputs(<refinedstorage:reader>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:writer>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:cable>, <refinedstorage:core:1>, <refinedstorage:processor:5>, circuitEV, plateEnrichedIron*4)
        .outputs(<refinedstorage:writer>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:storage_part:0>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:storage_part:0>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:storage_part:0>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:storage_part:1>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:0>*3, <refinedstorage:processor:3>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:storage_part:1>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:0>*3, <refinedstorage:processor:3>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:storage_part:1>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:storage_part:2>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:1>*3, <refinedstorage:processor:4>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:storage_part:2>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:1>*3, <refinedstorage:processor:4>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:storage_part:2>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:storage_part:3>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:2>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:storage_part:3>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:2>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:storage_part:3>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:fluid_storage_part:0>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:fluid_storage_part:0>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:fluid_storage_part:0>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:fluid_storage_part:1>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:0>*3, <refinedstorage:processor:3>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:fluid_storage_part:1>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:0>*3, <refinedstorage:processor:3>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:fluid_storage_part:1>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:fluid_storage_part:2>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:1>*3, <refinedstorage:processor:4>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:fluid_storage_part:2>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:1>*3, <refinedstorage:processor:4>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:fluid_storage_part:2>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:fluid_storage_part:3>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:2>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<refinedstorage:fluid_storage_part:3>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:2>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<refinedstorage:fluid_storage_part:3>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:wireless_grid>);
    assembler.recipeBuilder()
        .inputs(sensorEV, emitterEV, plateEnrichedIron*6, <refinedstorage:processor:5>, <refinedstorage:grid>)
        .outputs(<refinedstorage:wireless_grid>)
        .duration(800).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:wireless_fluid_grid>);
    assembler.recipeBuilder()
        .inputs(sensorEV, emitterEV, plateEnrichedIron*6, <refinedstorage:processor:5>, <refinedstorage:grid:3>)
        .outputs(<refinedstorage:wireless_fluid_grid>)
        .duration(800).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:wireless_crafting_monitor>);
    assembler.recipeBuilder()
        .inputs(sensorEV, emitterEV, plateEnrichedIron*6, <refinedstorage:processor:5>, <refinedstorage:crafting_monitor>)
        .outputs(<refinedstorage:wireless_crafting_monitor>)
        .duration(800).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorageaddons:wireless_crafting_grid>);
    assembler.recipeBuilder()
        .inputs(sensorEV, emitterEV, plateEnrichedIron*6, <refinedstorage:processor:5>, <refinedstorage:grid:1>)
        .outputs(<refinedstorageaddons:wireless_crafting_grid>)
        .duration(800).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:1>);
    assembler.recipeBuilder()
        .inputs(sensorEV*2, emitterEV*2, plateEnrichedIron*5, <refinedstorage:upgrade>, circuitEV)
        .outputs(<refinedstorage:upgrade:1>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:2>);
    assembler.recipeBuilder()
        .inputs(circuitEV*3, plateEnrichedIron, <refinedstorage:upgrade>)
        .outputs(<refinedstorage:upgrade:2>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:3>);
    assembler.recipeBuilder()
        .inputs(<minecraft:crafting_table>, circuitEV, <refinedstorage:processor:5>, plateEnrichedIron, <refinedstorage:upgrade>)
        .outputs(<refinedstorage:upgrade:3>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:4>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:upgrade:2>*4, circuitEV*4)
        .outputs(<refinedstorage:upgrade:4>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:6>);
    assembler.recipeBuilder()
        .inputs(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}), <minecraft:bookshelf>*2, <refinedstorage:upgrade>, plateEnrichedIron)
        .outputs(<refinedstorage:upgrade:6>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:7>);
    assembler.recipeBuilder()
        .inputs(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]}), <minecraft:bookshelf>*2, <refinedstorage:upgrade>, plateEnrichedIron)
        .outputs(<refinedstorage:upgrade:7>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:8>);
    assembler.recipeBuilder()
        .inputs(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]}), <minecraft:bookshelf>*2, <refinedstorage:upgrade>, plateEnrichedIron)
        .outputs(<refinedstorage:upgrade:8>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:upgrade:9>);
    assembler.recipeBuilder()
        .inputs(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}), <minecraft:bookshelf>*2, <refinedstorage:upgrade>, plateEnrichedIron)
        .outputs(<refinedstorage:upgrade:9>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:filter>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <refinedstorage:upgrade>, <gregtech:meta_item_1:32103>)
        .outputs(<refinedstorage:filter>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:network_card>);
    assembler.recipeBuilder()
        .inputs(<refinedstorage:upgrade>, plateEnrichedIron*6, <gregtech:meta_item_1:32708>, <refinedstorage:processor:5>)
        .outputs(<refinedstorage:network_card>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<refinedstorage:security_card>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron*6, <refinedstorage:network_card>*2, <refinedstorage:processor:5>)
        .outputs(<refinedstorage:security_card>)
        .duration(600).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:0>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:3>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:0>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:storage_part:3>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:0>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:1>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:0>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:1>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:0>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:1>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:2>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:1>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:2>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:1>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:2>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:3>);
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:2>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:3>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:2>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:3>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:4>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:3>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:4>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <refinedstorage:fluid_storage_part:3>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:4>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:5>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:4>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:5>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:4>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:5>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:6>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:5>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:6>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:5>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:6>)
        .duration(400).EUt(1920).buildAndRegister();

    recipes.remove(<rebornstorage:storagepart:7>);
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:6>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:tin>*144)
        .outputs(<rebornstorage:storagepart:7>)
        .duration(400).EUt(1920).buildAndRegister();
    assembler.recipeBuilder()
        .inputs(<minecraft:bucket>, plateEnrichedIron, <gregtech:meta_item_1:32707>, wireFineEnrichedIron*4, <rebornstorage:storagepart:6>*3, <refinedstorage:processor:5>*4)
        .fluidInputs(<liquid:soldering_alloy>*72)
        .outputs(<rebornstorage:storagepart:7>)
        .duration(400).EUt(1920).buildAndRegister();

// Blast Furnace

    recipes.remove(<refinedstorage:quartz_enriched_iron>);
    blastFurnace.recipeBuilder()
        .inputs(<ore:ingotIron>*3,<ore:dustCertusQuartz>)
        .outputs(<ore:ingotQuartzEnrichedIron>.firstItem*3)
        .property("temperature", 5400)
        .duration(8820).EUt(120).buildAndRegister();

// Crafting Table Recipes

recipes.remove(<refinedstorage:machine_casing>);
recipes.addShaped(<refinedstorage:machine_casing>,
[[plateEnrichedIron,circuitEV,plateEnrichedIron]
,[circuitEV,frameThermal,circuitEV]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:wireless_transmitter>);
recipes.addShaped(<refinedstorage:wireless_transmitter>,
[[plateEnrichedIron,emitterEV,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,<refinedstorage:processor:5>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:storage_monitor>);
recipes.addShaped(<refinedstorage:storage_monitor>,
[[<refinedstorage:processor:3>,<refinedstorage:core:0>,<ore:blockGlass>]
,[plateEnrichedIron,frameRefined,<ore:blockGlass>]
,[<refinedstorage:processor:3>,<refinedstorage:core:1>,<ore:blockGlass>]]);

recipes.remove(<refinedstorage:security_manager>);
recipes.addShaped(<refinedstorage:security_manager>,
[[plateEnrichedIron,<ore:chestWood>,plateEnrichedIron]
,[<refinedstorage:security_card>,frameRefined,<refinedstorage:security_card>]
,[plateEnrichedIron,<refinedstorage:security_card>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:relay>);
recipes.addShapeless(<refinedstorage:relay>,[frameRefined, <ore:craftingRedstoneTorch>, <refinedstorage:cable>]);

recipes.remove(<refinedstorage:network_transmitter>);
recipes.addShaped(<refinedstorage:network_transmitter>,
[[plateEnrichedIron,emitterEV,plateEnrichedIron]
,[<refinedstorage:core:0>,frameRefined,<refinedstorage:core:1>]
,[<refinedstorage:processor:5>,<refinedstorage:processor:5>,<refinedstorage:processor:5>]]);

recipes.remove(<refinedstorage:network_receiver>);
recipes.addShaped(<refinedstorage:network_receiver>,
[[plateEnrichedIron,sensorEV,plateEnrichedIron]
,[<refinedstorage:core:0>,frameRefined,<refinedstorage:core:1>]
,[<refinedstorage:processor:5>,<refinedstorage:processor:5>,<refinedstorage:processor:5>]]);

recipes.remove(<refinedstorage:interface>);
recipes.addShaped(<refinedstorage:interface>,
[[plateEnrichedIron,<refinedstorage:importer>,plateEnrichedIron]
,[dustRedstone,frameRefined,dustRedstone]
,[plateEnrichedIron,<refinedstorage:exporter>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:grid>);
recipes.addShaped(<refinedstorage:grid>,
[[<refinedstorage:processor:4>,<refinedstorage:core:0>,<ore:blockGlass>]
,[plateEnrichedIron,frameRefined,<ore:blockGlass>]
,[<refinedstorage:processor:4>,<refinedstorage:core:1>,<ore:blockGlass>]]);

recipes.remove(<refinedstorage:disk_manipulator>);
recipes.addShaped(<refinedstorage:disk_manipulator>,
[[plateEnrichedIron,<refinedstorage:storage_housing>,plateEnrichedIron]
,[<refinedstorage:core:0>,frameRefined,<refinedstorage:core:1>]
,[plateEnrichedIron,<refinedstorage:storage_housing>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:disk_drive>);
recipes.addShaped(<refinedstorage:disk_drive>,
[[plateEnrichedIron,<ore:chestWood>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,<refinedstorage:processor:5>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:detector>);
recipes.addShaped(<refinedstorage:detector>,
[[plateEnrichedIron,<minecraft:redstone_torch>,plateEnrichedIron]
,[sensorEV,frameRefined,sensorEV]
,[plateEnrichedIron,<refinedstorage:processor:4>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:crafting_monitor>);
recipes.addShaped(<refinedstorage:crafting_monitor>,
[[<refinedstorage:processor:4>,<refinedstorage:pattern>,<ore:blockGlass>]
,[plateEnrichedIron,frameRefined,<ore:blockGlass>]
,[<refinedstorage:processor:4>,<refinedstorage:pattern>,<ore:blockGlass>]]);

recipes.remove(<refinedstorage:crafter_manager>);
recipes.addShaped(<refinedstorage:crafter_manager>,
[[<refinedstorage:processor:5>,<refinedstorage:crafter>,<ore:blockGlass>]
,[plateEnrichedIron,frameRefined,<ore:blockGlass>]
,[<refinedstorage:processor:5>,<refinedstorage:crafter>,<ore:blockGlass>]]);

recipes.remove(<refinedstorage:crafter>);
recipes.addShaped(<refinedstorage:crafter>,
[[plateEnrichedIron,<refinedstorage:core:0>,plateEnrichedIron]
,[<refinedstorage:processor:5>,frameRefined,<refinedstorage:interface>]
,[plateEnrichedIron,<refinedstorage:core:1>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:controller>);
recipes.addShaped(<refinedstorage:controller>,
[[plateEnrichedIron,<refinedstorage:processor:5>,plateEnrichedIron]
,[circuitEV,frameRefined,circuitEV]
,[plateEnrichedIron,<refinedstorage:processor:5>,plateEnrichedIron]]);

recipes.remove(<refinedstorage:storage:3>);
recipes.addShaped(<refinedstorage:storage:3>,
[[plateEnrichedIron,<refinedstorage:storage_part:3>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:storage:2>);
recipes.addShaped(<refinedstorage:storage:2>,
[[plateEnrichedIron,<refinedstorage:storage_part:2>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:storage:1>);
recipes.addShaped(<refinedstorage:storage:1>,
[[plateEnrichedIron,<refinedstorage:storage_part:1>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:storage:0>);
recipes.addShaped(<refinedstorage:storage:0>,
[[plateEnrichedIron,<refinedstorage:storage_part:0>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:fluid_storage:3>);
recipes.addShaped(<refinedstorage:fluid_storage:3>,
[[plateEnrichedIron,<refinedstorage:fluid_storage_part:3>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:fluid_storage:2>);
recipes.addShaped(<refinedstorage:fluid_storage:2>,
[[plateEnrichedIron,<refinedstorage:fluid_storage_part:2>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:fluid_storage:1>);
recipes.addShaped(<refinedstorage:fluid_storage:1>,
[[plateEnrichedIron,<refinedstorage:fluid_storage_part:1>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<refinedstorage:fluid_storage:0>);
recipes.addShaped(<refinedstorage:fluid_storage:0>,
[[plateEnrichedIron,<refinedstorage:fluid_storage_part:0>,plateEnrichedIron]
,[plateEnrichedIron,frameRefined,plateEnrichedIron]
,[plateEnrichedIron,circuitEV,plateEnrichedIron]]);

recipes.remove(<rebornstorage:multicrafter:0>);
recipes.addShaped(<rebornstorage:multicrafter:0>,
[[frameRefined,<refinedstorage:processor:3>,frameRefined]
,[<refinedstorage:processor:3>,circuitEV,<refinedstorage:processor:3>]
,[frameRefined,<refinedstorage:processor:3>,frameRefined]]);

recipes.removeShaped(<refinedstorage:storage_disk:0>);
recipes.addShaped(<refinedstorage:storage_disk:0>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:storage_part:0>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<refinedstorage:storage_disk:1>);
recipes.addShaped(<refinedstorage:storage_disk:1>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:storage_part:1>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<refinedstorage:storage_disk:2>);
recipes.addShaped(<refinedstorage:storage_disk:2>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:storage_part:2>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<refinedstorage:storage_disk:3>);
recipes.addShaped(<refinedstorage:storage_disk:3>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:storage_part:3>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<refinedstorage:fluid_storage_disk:0>);
recipes.addShaped(<refinedstorage:fluid_storage_disk:0>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:fluid_storage_part:0>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<refinedstorage:fluid_storage_disk:1>);
recipes.addShaped(<refinedstorage:fluid_storage_disk:1>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:fluid_storage_part:1>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<refinedstorage:fluid_storage_disk:2>);
recipes.addShaped(<refinedstorage:fluid_storage_disk:2>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:fluid_storage_part:2>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<refinedstorage:fluid_storage_disk:3>);
recipes.addShaped(<refinedstorage:fluid_storage_disk:3>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<refinedstorage:fluid_storage_part:3>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.remove(<refinedstorage:storage_housing>);
recipes.addShaped(<refinedstorage:storage_housing>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,null,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.remove(<refinedstorage:pattern>);
recipes.addShaped(<refinedstorage:pattern>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<gregtech:meta_item_1:32708>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.remove(<rebornstorage:multicrafter:1>);
recipes.addShaped(<rebornstorage:multicrafter:1>,
[[<rebornstorage:multicrafter:0>,plateEnrichedIron,<rebornstorage:multicrafter:0>]
,[plateEnrichedIron,<ore:ingotThermoconducting>,plateEnrichedIron]
,[<rebornstorage:multicrafter:0>,plateEnrichedIron,<rebornstorage:multicrafter:0>]]);

recipes.remove(<refinedstorage:upgrade>);
recipes.addShaped(<refinedstorage:upgrade>,
[[plateEnrichedIron,<ore:plateGlass>,plateEnrichedIron]
,[plateEnrichedIron,<refinedstorage:processor:4>,plateEnrichedIron]
,[plateEnrichedIron,<ore:plateGlass>,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecell:0>);
recipes.addShaped(<rebornstorage:storagecell:0>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:0>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecell:1>);
recipes.addShaped(<rebornstorage:storagecell:1>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:1>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecell:2>);
recipes.addShaped(<rebornstorage:storagecell:2>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:2>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecell:3>);
recipes.addShaped(<rebornstorage:storagecell:3>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:3>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecellfluid:0>);
recipes.addShaped(<rebornstorage:storagecellfluid:0>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:4>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecellfluid:1>);
recipes.addShaped(<rebornstorage:storagecellfluid:1>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:5>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecellfluid:2>);
recipes.addShaped(<rebornstorage:storagecellfluid:2>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:6>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);

recipes.removeShaped(<rebornstorage:storagecellfluid:3>);
recipes.addShaped(<rebornstorage:storagecellfluid:3>,
[[<ore:blockGlass>,circuitEV,<ore:blockGlass>]
,[dustRedstone,<rebornstorage:storagepart:7>,dustRedstone]
,[plateEnrichedIron,plateEnrichedIron,plateEnrichedIron]]);
