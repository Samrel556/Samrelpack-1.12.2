// Nuclearcraft Hiding
import mods.gregtech.recipe.RecipeMap;

val chemBath = RecipeMap.getByName("chemical_bath");
val alloySmelter = RecipeMap.getByName("alloy_smelter");

chemBath.findRecipe(16, [<nuclearcraft:alloy:7>], [<liquid:redstone>*250]).remove();
chemBath.findRecipe(16, [<nuclearcraft:alloy:8>], [<liquid:glowstone>*250]).remove();
chemBath.findRecipe(16, [<nuclearcraft:alloy:9>], [<liquid:ender>*250]).remove();
chemBath.findRecipe(8, [<nuclearcraft:part:6>*2], [<liquid:radaway>*250]).remove();
chemBath.findRecipe(8, [<nuclearcraft:part:6>*2], [<liquid:radaway_slow>*250]).remove();
alloySmelter.findRecipe(32, [<ore:itemSilicon>.firstItem, <ore:ingotGraphite>.firstItem], null).remove();
alloySmelter.findRecipe(32, [<ore:itemSilicon>.firstItem, <ore:dustGraphite>.firstItem], null).remove();
alloySmelter.findRecipe(32, [<ore:ingotSilicon>.firstItem, <ore:dustGraphite>.firstItem], null).remove();
alloySmelter.findRecipe(32, [<ore:ingotSilicon>.firstItem, <ore:ingotGraphite>.firstItem], null).remove();
// Hiding ingots
for i in 8 to 14{
    mods.jei.JEI.removeAndHide(<nuclearcraft:ingot>.definition.makeStack(i));
    mods.jei.JEI.removeAndHide(<nuclearcraft:ingot_block>.definition.makeStack(i));
    mods.jei.JEI.removeAndHide(<nuclearcraft:dust>.definition.makeStack(i));
}
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:0>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:2>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:3>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:4>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:6>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:7>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:10>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem_dust:11>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem:1>);
mods.jei.JEI.removeAndHide(<nuclearcraft:gem:6>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:3>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:4>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:5>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:7>);
mods.jei.JEI.removeAndHide(<nuclearcraft:compound:10>);
mods.jei.JEI.removeAndHide(<nuclearcraft:tiny_dust_lead>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:0>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:5>);
mods.jei.JEI.hide(<nuclearcraft:block_depleted_americium:0>);
mods.jei.JEI.hide(<nuclearcraft:block_depleted_curium:0>);
mods.jei.JEI.hide(<nuclearcraft:block_depleted_berkelium:0>);
mods.jei.JEI.hide(<nuclearcraft:block_depleted_californium:0>);
mods.jei.JEI.hide(<nuclearcraft:block_depleted_neptunium:0>);
mods.jei.JEI.hide(<nuclearcraft:alloy:9>);
mods.jei.JEI.hide(<nuclearcraft:depleted_fuel_ic2>);
mods.jei.JEI.hide(<nuclearcraft:depleted_fuel_ic2:1>);
mods.jei.JEI.hide(<nuclearcraft:flour>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:1>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:2>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:3>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:4>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:6>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:10>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:11>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:12>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:13>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:14>);
mods.jei.JEI.removeAndHide(<nuclearcraft:alloy:15>);
mods.jei.JEI.removeAndHide(<nuclearcraft:dust_oxide:3>);

mods.jei.JEI.hide(<nuclearcraft:accelerator_electromagnet_idle>);
mods.jei.JEI.hide(<nuclearcraft:electromagnet_supercooler_idle>);
mods.jei.JEI.removeAndHide(<nuclearcraft:geiger_counter>);
mods.jei.JEI.removeAndHide(<nuclearcraft:rad_x>);
mods.jei.JEI.removeAndHide(<nuclearcraft:rad_shielding>);
mods.jei.JEI.removeAndHide(<nuclearcraft:helm_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:chest_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:legs_hazmat>);
mods.jei.JEI.removeAndHide(<nuclearcraft:boots_hazmat>);
mods.jei.JEI.hide(<nuclearcraft:part:6>);
mods.jei.JEI.removeAndHide(<nuclearcraft:part:7>);
mods.jei.JEI.removeAndHide(<nuclearcraft:part:8>);
mods.jei.JEI.removeAndHide(<nuclearcraft:part:9>);
mods.jei.JEI.removeAndHide(<nuclearcraft:portable_ender_chest>);
