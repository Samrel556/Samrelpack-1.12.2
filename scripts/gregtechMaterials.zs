// Adding Thermal Materials to Gregtech

#loader gregtech

import mods.gregtech.material.MaterialRegistry;

var materialList = MaterialRegistry.getAllMaterials();

val constantan = MaterialRegistry.createIngotMaterial(705, "constantan", 0xF6D281, "metallic", 2, [<material:copper>*2, <material:nickel>*1]);
constantan.addFlags(["GENERATE_GEAR"]);

val lumium = MaterialRegistry.createIngotMaterial(706, "lumium", 0xf6ff99, "shiny", 2, [<material:tin>*3, <material:silver>*1], 0, 0, 0, 5400);
lumium.addFlags(["GENERATE_ROD","GENERATE_PLATE","GENERATE_GEAR","NO_SMELTING","DISABLE_DECOMPOSITION"]);

val signalum = MaterialRegistry.createIngotMaterial(707, "signalum", 0xce4b00, "shiny", 2, [<material:redstone>*1, <material:copper>*3, <material:silver>*1], 0, 0, 0, 4500);
signalum.addFlags(["GENERATE_ROD","GENERATE_PLATE","GENERATE_GEAR","NO_SMELTING","DISABLE_DECOMPOSITION"]);

val zircalloy = MaterialRegistry.createIngotMaterial(708, "zircaloy", 0xe3e3e7, "METALLIC", 1, [<material:tin>*7, <material:zirconium>*1]);
zircalloy.addFlags("GENERATE_PLATE");

val lithiumManganeseDioxide = MaterialRegistry.createIngotMaterial(709, "lithium_manganese_dioxide", 0x555555, "METALLIC", 1, [<material:lithium>*1, <material:manganese>*1, <material:oxygen>*2]);
lithiumManganeseDioxide.addFlags("GENERATE_PLATE");

val tough = MaterialRegistry.createIngotMaterial(710, "tough", 0x171255, "METALLIC", 1, [<material:lithium>*1, <material:boron>*1, <material:iron>*1], 1.6, 1, 929);
tough.addFlags(["GENERATE_PLATE","GENERATE_ROD"]);

val ferroboron = MaterialRegistry.createIngotMaterial(711, "ferroboron", 0x757575, "METALLIC", 1, [<material:boron>*1, <material:iron>*1]);
ferroboron.addFlags("GENERATE_PLATE");

val magnesiumDiboride = MaterialRegistry.createIngotMaterial(712, "magnesium_diboride", 0x14110A, "METALLIC", 1, [<material:boron>*2, <material:magnesium>*1]);
magnesiumDiboride.addFlags("GENERATE_FINE_WIRE");

val hardCarbon = MaterialRegistry.createIngotMaterial(713, "hard_carbon", 0x1F716E, "METALLIC", 1, [<material:carbon>*1], 1.6, 1, 1245);
hardCarbon.addFlags("GENERATE_PLATE");

val thermoconducting = MaterialRegistry.createIngotMaterial(714, "thermoconducting", 0x6A7755, "METALLIC", 1, [<material:arsenic>*1, <material:boron>*2, <material:carbon>*1, <material:lithium>*1, <material:iron>*1]);
thermoconducting.addFlags("GENERATE_PLATE");

val extreme = MaterialRegistry.createIngotMaterial(715, "extreme", 0x6E283C, "METALLIC", 1, [<material:carbon>*1, <material:lithium>*1, <material:boron>*1, <material:iron>*1]);
extreme.addFlags("GENERATE_PLATE");

val hslaSteel = MaterialRegistry.createIngotMaterial(716, "h_s_l_a_steel", 0x7269A1, "METALLIC", 1, [<material:carbon>*1, <material:manganese>*1, <material:iron>*1]);
hslaSteel.addFlags(["GENERATE_PLATE", "GENERATE_ROD"]);

val siliconCarbide = MaterialRegistry.createIngotMaterial(717, "silicon_carbide", 0x6F6C61, "DULL", 1, [<material:carbon>*1, <material:silicon>*1]);

val sicSicCmc = MaterialRegistry.createIngotMaterial(718, "sic_sic_cmc", 0x726E64, "DULL", 1, [<material:carbon>*1, <material:silicon>*1]);
sicSicCmc.addFlags("GENERATE_PLATE");

val enrichedIron = MaterialRegistry.createIngotMaterial(719, "quartz_enriched_iron", 0xF4F3F1, "METALLIC", 1, [<material:iron>*1]);
enrichedIron.addFlags("GENERATE_PLATE","GENERATE_FINE_WIRE");

MaterialRegistry.get("obsidian").addFlags("GENERATE_PLATE");

MaterialRegistry.get("germanium").addFlags("GENERATE_PLATE");

MaterialRegistry.get("magnesium").addFlags("GENERATE_PLATE","GENERATE_FINE_WIRE");

MaterialRegistry.get("lithium").addFlags("GENERATE_ROD");

MaterialRegistry.get("beryllium").addFlags("GENERATE_FINE_WIRE");


