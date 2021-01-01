// Industrial Foregoing Hiding

import mods.gregtech.recipe.RecipeMap;
val packer = RecipeMap.getByName("packer");

packer.findRecipe(4, [<industrialforegoing:tinydryrubber>*9,<gtadditions:ga_meta_item:32133>], null).remove();

mods.jei.JEI.hide(<industrialforegoing:tinydryrubber>);
mods.jei.JEI.removeAndHide(<industrialforegoing:dryrubber>);
mods.jei.JEI.removeAndHide(<industrialforegoing:plastic>);
mods.jei.JEI.removeAndHide(<teslacorelib:wrench>);
