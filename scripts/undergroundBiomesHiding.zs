// Underground Biomes Hiding

// Hiding Bo'P blocks

for i in 0 to 8{
    mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_overgrown>.definition.makeStack(i));
    mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_overgrown>.definition.makeStack(i));
    mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_overgrown>.definition.makeStack(i));
    mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_overgrown_snowed>.definition.makeStack(i));
    mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_overgrown_snowed>.definition.makeStack(i));
    mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_overgrown_snowed>.definition.makeStack(i));
}
