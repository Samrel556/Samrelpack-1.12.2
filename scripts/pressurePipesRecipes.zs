// Pressure Pipes Recipes

val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");

val plateSteel = <ore:plateSteel>;
val plateSiliconRubber = <ore:plateSiliconRubber>;
val dustRedstone = <ore:dustRedstone>;
val paneGlass = <ore:paneGlass>;
val circuitMv = <ore:circuitGood>;

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
