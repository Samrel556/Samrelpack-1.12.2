// Hiding Thermal Recipes

// Magma Crucible
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:1027>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:ender_pearl>);
    mods.thermalexpansion.Crucible.removeRecipe(<gregtech:meta_item_1:2106>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:894>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:895>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:glowstone>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:glowstone_dust>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:snowball>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:redstone>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:819>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:818>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:817>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:816>);
    mods.thermalexpansion.Crucible.removeRecipe(<aunis:naquadah_ore>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:1026>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:1024>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:1025>);
    mods.thermalexpansion.Crucible.removeRecipe(<integrateddynamics:crystalized_menril_block>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:893>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:snow>);
    mods.thermalexpansion.Crucible.removeRecipe(<thermalfoundation:material:892>);
    mods.thermalexpansion.Crucible.removeRecipe(<aunis:naquadah_shard>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:redstone_block>);
    mods.thermalexpansion.Crucible.removeRecipe(<integrateddynamics:crystalized_chorus_block>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:ice>);
    mods.thermalexpansion.Crucible.removeRecipe(<aunis:naquadah_alloy>);
    mods.thermalexpansion.Crucible.removeRecipe(<minecraft:sand>);
// Duplicate Materials

    for i in 0 to 9{
        // Regular Ores
        mods.jei.JEI.removeAndHide(<thermalfoundation:ore>.definition.makeStack(i));
        // Base metal blocks
        mods.jei.JEI.removeAndHide(<thermalfoundation:storage>.definition.makeStack(i));
    }

    for i in 0 to 6{
        // Fluid ores
        mods.jei.JEI.removeAndHide(<thermalfoundation:ore_fluid>.definition.makeStack(i));
    }
    for i in 0 to 8{
        // Alloy blocks
        mods.jei.JEI.removeAndHide(<thermalfoundation:storage_alloy>.definition.makeStack(i));
    }
    // Charcoal and Coal Coke blocks
    mods.jei.JEI.removeAndHide(<thermalfoundation:storage_resource:0>);
    mods.jei.JEI.removeAndHide(<thermalfoundation:storage_resource:1>);
    for i in 0 to 9{
        // Hardened glass
        if (i != 3){
            mods.jei.JEI.removeAndHide(<thermalfoundation:glass>.definition.makeStack(i));
        }
        if (i <= 7){
            mods.jei.JEI.removeAndHide(<thermalfoundation:glass_alloy>.definition.makeStack(i));
        }
    }
    for i in 0 to 16{
        mods.jei.JEI.removeAndHide(<thermalfoundation:rockwool>.definition.makeStack(i));
        mods.jei.JEI.removeAndHide(<thermalfoundation:dye>.definition.makeStack(i));
    }
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:0>);
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:1>);
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:16>);
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:17>);
    for i in 22 to 28{
        mods.jei.JEI.removeAndHide(<thermalfoundation:material>.definition.makeStack(i));
    }
    for i in 0 to 104{
        mods.jei.JEI.removeAndHide(<thermalfoundation:coin>.definition.makeStack(i));
    }
    for i in 0 to 3{
        mods.jei.JEI.removeAndHide(<thermalfoundation:bait>.definition.makeStack(i));
    }
    for i  in 32 to 360{
        mods.jei.JEI.removeAndHide(<thermalfoundation:material>.definition.makeStack(i));
    }
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:512>);
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:656>);
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:657>);
    for i  in 768 to 896{
        mods.jei.JEI.removeAndHide(<thermalfoundation:material>.definition.makeStack(i));
    }
    mods.jei.JEI.removeAndHide(<thermalfoundation:material:1028>);
    mods.jei.JEI.removeAndHide(<thermalfoundation:geode>);
// Augments
    mods.jei.JEI.removeAndHide(<thermalexpansion:augment:129>);
    mods.jei.JEI.removeAndHide(<thermalexpansion:augment:130>);
    for i in 256 to 320{
        mods.jei.JEI.removeAndHide(<thermalexpansion:augment>.definition.makeStack(i));
    }
    for i in 336 to 338{
        mods.jei.JEI.removeAndHide(<thermalexpansion:augment>.definition.makeStack(i));
    }
    for i in 353 to 498{
        mods.jei.JEI.removeAndHide(<thermalexpansion:augment>.definition.makeStack(i));
    }
    for i in 656 to 721{
        mods.jei.JEI.removeAndHide(<thermalexpansion:augment>.definition.makeStack(i));
    }
// Energy Cells
    for i in 128 to 149{
        mods.jei.JEI.removeAndHide(<thermalexpansion:frame>.definition.makeStack(i));
    }

// Removing oreDict from ores
<ore:oreCopper>.remove(<thermalfoundation:ore:0>);
<ore:oreTin>.remove(<thermalfoundation:ore:1>);
<ore:oreSilver>.remove(<thermalfoundation:ore:2>);
<ore:oreLead>.remove(<thermalfoundation:ore:3>);
<ore:oreAluminum>.remove(<thermalfoundation:ore:4>);
<ore:oreNickel>.remove(<thermalfoundation:ore:5>);
<ore:orePlatinum>.remove(<thermalfoundation:ore:6>);
<ore:oreIridium>.remove(<thermalfoundation:ore:7>);
<ore:oreMithril>.remove(<thermalfoundation:ore:8>);
<ore:oreClathrateOilSand>.remove(<thermalfoundation:ore_fluid:0>);
<ore:oreClathrateOilShale>.remove(<thermalfoundation:ore_fluid:1>);
<ore:oreClathrateRedstone>.remove(<thermalfoundation:ore_fluid:2>);
<ore:oreClathrateGlowstone>.remove(<thermalfoundation:ore_fluid:3>);
<ore:oreClathrateEnder>.remove(<thermalfoundation:ore_fluid:4>);
<ore:oreClathrateOilSand>.remove(<thermalfoundation:ore_fluid:5>);
