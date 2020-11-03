// Pressure Pipes Recipes

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val plateSteel = <ore:plateSteel>;
val plateSiliconRubber = <ore:plateSiliconRubber>;
val dustRedstone = <ore:dustRedstone>;
val paneGlass = <ore:paneGlass>;
val circuitMv = <ore:circuitGood>;
val pumpMv = <gregtech:meta_item_1:32611>;

// Gregtech Machine Recipes

    recipes.remove(<pressure:interface>);
    assembler.recipeBuilder()
        .inputs([dustRedstone* 2, plateSteel* 4, paneGlass* 2, circuitMv])
        .fluidInputs(<liquid:silicon_rubber>*144)
        .outputs(<pressure:interface>)
        .duration(10).EUt(120).buildAndRegister();

    recipes.removeShaped(<pressure:tank_wall>);
    assembler.recipeBuilder()
        .inputs(plateSteel*8)
        .fluidInputs(<liquid:silicon_rubber>*144)
        .outputs(<pressure:tank_wall>*8)
        .duration(10).EUt(120).buildAndRegister();

    recipes.removeShaped(<pressure:fluid_interface>);
    assembler.recipeBuilder()
        .inputs([plateSteel*4, <minecraft:bucket>, circuitMv])
        .fluidInputs(<liquid:silicon_rubber>*144)
        .outputs(<pressure:fluid_interface>)
        .duration(10).EUt(120).buildAndRegister();


// Crafting Table Recipes

recipes.removeShaped(<pressure:canister>);
recipes.addShaped(<pressure:canister>,
[[paneGlass,plateSteel,paneGlass]
,[plateSteel,paneGlass,plateSteel]
,[plateSteel,plateSteel,plateSteel]]);

recipes.removeShaped(<pressure:configurator>);
recipes.addShaped(<pressure:configurator>,
[[null,<minecraft:bucket>,null]
,[<ore:dyeRed>,<gregtech:meta_tool:8>,<ore:dyeGreen>]
,[<ore:dyeBlue>,circuitMv,<ore:dustGlowstone>]]);

recipes.removeShaped(<pressure:pipe>);
recipes.addShaped(<pressure:pipe>*3,
[[plateSteel,plateSteel,plateSteel]
,[null,plateSiliconRubber,null]
,[plateSteel,plateSteel,plateSteel]]);

recipes.removeShaped(<pressure:check_valve>);
recipes.addShaped(<pressure:check_valve>,
[[plateSteel,plateSteel,plateSteel]
,[<pressure:interface>,<minecraft:lever>,<pressure:interface>]
,[plateSteel,plateSteel,plateSteel]]);

recipes.removeShaped(<pressure:pipe_sensor>);
recipes.addShaped(<pressure:pipe_sensor>,
[[plateSteel,plateSteel,plateSteel]
,[<pressure:interface>,<minecraft:redstone_torch>,<pressure:interface>]
,[plateSteel,plateSteel,plateSteel]]);

recipes.removeShaped(<pressure:pump>);
recipes.addShaped(<pressure:pump>,
[[plateSteel,plateSiliconRubber,plateSteel]
,[pumpMv,circuitMv,pumpMv]
,[plateSteel,plateSiliconRubber,plateSteel]]);

recipes.removeShaped(<pressure:output>);
recipes.addShaped(<pressure:output>,
[[plateSteel,<pressure:interface>,plateSteel]
,[plateSteel,pumpMv,plateSteel]
,[plateSteel,plateSiliconRubber,plateSteel]]);

recipes.removeShaped(<pressure:input>);
recipes.addShaped(<pressure:input>,
[[plateSteel,plateSiliconRubber,plateSteel]
,[plateSteel,pumpMv,plateSteel]
,[plateSteel,<pressure:interface>,plateSteel]]);

recipes.removeShaped(<pressure:drain>);
recipes.addShaped(<pressure:drain>,
[[plateSteel,plateSiliconRubber,<minecraft:iron_bars>]
,[<pressure:interface>,null,<minecraft:iron_bars>]
,[plateSteel,plateSiliconRubber,<minecraft:iron_bars>]]);

recipes.removeShaped(<pressure:sluice>);
recipes.addShaped(<pressure:sluice>,
[[plateSteel,plateSiliconRubber,pumpMv]
,[<pressure:interface>,null,<minecraft:iron_bars>]
,[plateSteel,plateSiliconRubber,pumpMv]]);

recipes.removeShaped(<pressure:router>);
recipes.addShaped(<pressure:router>,
[[plateSteel,<pressure:interface>,plateSteel]
,[<pressure:interface>,circuitMv,<pressure:interface>]
,[plateSteel,<pressure:interface>,plateSteel]]);

recipes.removeShaped(<pressure:tank_controller>);
recipes.addShaped(<pressure:tank_controller>,
[[<pressure:tank_wall>,plateSteel,<pressure:tank_wall>]
,[pumpMv,circuitMv,pumpMv]
,[<pressure:tank_wall>,plateSteel,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_fluid_output>);
recipes.addShaped(<pressure:tank_fluid_output>,
[[plateSiliconRubber,plateSteel,plateSiliconRubber]
,[plateSteel,null,plateSteel]
,[<pressure:tank_wall>,<pressure:fluid_interface>,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_fluid_output_auto>);
recipes.addShaped(<pressure:tank_fluid_output_auto>,
[[plateSiliconRubber,plateSteel,plateSiliconRubber]
,[plateSteel,pumpMv,plateSteel]
,[<pressure:tank_wall>,<pressure:fluid_interface>,<pressure:tank_wall>]]);

recipes.removeShapeless(<pressure:tank_fluid_output_auto>);
recipes.addShapeless(<pressure:tank_fluid_output_auto>, [<pressure:tank_fluid_output>, pumpMv]);

recipes.removeShaped(<pressure:tank_fluid_input>);
recipes.addShaped(<pressure:tank_fluid_input>,
[[plateSiliconRubber,<pressure:fluid_interface>,plateSiliconRubber]
,[plateSteel,null,plateSteel]
,[<pressure:tank_wall>,plateSteel,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_fluid_access>);
recipes.addShaped(<pressure:tank_fluid_access>,
[[plateSiliconRubber,<pressure:fluid_interface>,plateSiliconRubber]
,[plateSteel,null,plateSteel]
,[<pressure:tank_wall>,<pressure:fluid_interface>,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_pressure_output>);
recipes.addShaped(<pressure:tank_pressure_output>,
[[plateSiliconRubber,plateSteel,plateSiliconRubber]
,[plateSteel,pumpMv,plateSteel]
,[<pressure:tank_wall>,<pressure:interface>,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_pressure_input>);
recipes.addShaped(<pressure:tank_pressure_input>,
[[plateSiliconRubber,<pressure:interface>,plateSiliconRubber]
,[plateSteel,pumpMv,plateSteel]
,[<pressure:tank_wall>,plateSteel,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_interface>);
recipes.addShaped(<pressure:tank_interface>,
[[<pressure:tank_wall>,<minecraft:hopper>,<pressure:tank_wall>]
,[plateSteel,circuitMv,plateSteel]
,[<pressure:tank_wall>,<minecraft:hopper>,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_filter>);
recipes.addShaped(<pressure:tank_filter>,
[[<pressure:tank_wall>,<minecraft:iron_bars>,<pressure:tank_wall>]
,[<minecraft:iron_bars>,circuitMv,<minecraft:iron_bars>]
,[<pressure:tank_wall>,<minecraft:iron_bars>,<pressure:tank_wall>]]);

recipes.removeShaped(<pressure:tank_sensor>);
recipes.addShaped(<pressure:tank_sensor>,
[[<pressure:tank_wall>,<ore:wireLogicRedstone>,<pressure:tank_wall>]
,[<ore:wireLogicRedstone>,circuitMv,<ore:wireLogicRedstone>]
,[<pressure:tank_wall>,<ore:wireLogicRedstone>,<pressure:tank_wall>]]);

recipes.addShaped(<pressure:tank_data_port>,
[[<pressure:tank_wall>,<opencomputers:cable>,<pressure:tank_wall>]
,[<opencomputers:cable>,circuitMv,<opencomputers:cable>]
,[<pressure:tank_wall>,<opencomputers:cable>,<pressure:tank_wall>]]);
