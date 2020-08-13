// Nuclearcraft Hiding

// Hiding ingots
for i in 8 to 14{
    if (i != 10){
        mods.jei.JEI.removeAndHide(<nuclearcraft:ingot>.definition.makeStack(i));
        mods.jei.JEI.removeAndHide(<nuclearcraft:ingot_block>.definition.makeStack(i));
        mods.jei.JEI.removeAndHide(<nuclearcraft:dust>.definition.makeStack(i));
    }
}
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:0>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:2>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:3>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:6>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:7>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:10>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:11>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:5>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:7>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:10>);
mods.jei.JEI.removeAndHide(<nuclearcraft:tiny_dust_lead>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:0>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:5>);
