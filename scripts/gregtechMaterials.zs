// Adding Thermal Materials to Gregtech

#loader gregtech
import mods.gregtech.material.MaterialRegistry;

val constantan = MaterialRegistry.createIngotMaterial(705, "constantan", 0xF6D281, "metallic", 2, [<material:copper>*2, <material:nickel>*1]);
constantan.addFlags(["GENERATE_GEAR"]);

val lumium = MaterialRegistry.createIngotMaterial(706, "lumium", 0xf6ff99, "shiny", 2, [<material:tin>*3, <material:silver>*1], 0, 0, 0, 5400);
lumium.addFlags(["GENERATE_ROD","GENERATE_PLATE","GENERATE_GEAR","NO_SMELTING","DISABLE_DECOMPOSITION"]);

val signalum = MaterialRegistry.createIngotMaterial(707, "signalum", 0xce4b00, "shiny", 2, [<material:redstone>*1, <material:copper>*3, <material:silver>*1], 0, 0, 0, 4500);
signalum.addFlags(["GENERATE_ROD","GENERATE_PLATE","GENERATE_GEAR","NO_SMELTING","DISABLE_DECOMPOSITION"]);


