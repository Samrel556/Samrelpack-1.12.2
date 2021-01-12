// Fixing Block decompression
import mods.gregtech.recipe.RecipeMap;
val forgeHammer = RecipeMap.getByName("forge_hammer");
val compressor = RecipeMap.getByName("compressor");

// Remove Conflicting Ore Dictinary Entries

<ore:ingotHSLASteel>.remove(<nuclearcraft:alloy:15>);
<ore:ingotSiliconCarbide>.remove(<nuclearcraft:alloy:13>);
<ore:ingotZircaloy>.remove(<nuclearcraft:alloy:12>);
<ore:ingotThermoconducting>.remove(<nuclearcraft:alloy:11>);
<ore:ingotExtreme>.remove(<nuclearcraft:alloy:10>);
<ore:ingotFerroboron>.remove(<nuclearcraft:alloy:6>);
<ore:ingotLithiumMananeseDioxide>.remove(<nuclearcraft:alloy:4>);
<ore:ingotMagnesiumDiboride>.remove(<nuclearcraft:alloy:3>);
<ore:ingotHardCarbon>.remove(<nuclearcraft:alloy:2>);
<ore:ingotTough>.remove(<nuclearcraft:alloy:1>);
<ore:ingotManganese>.remove(<nuclearcraft:ingot:11>);
<ore:ingotZirconium>.remove(<nuclearcraft:ingot:10>);
<ore:ingotBeryllium>.remove(<nuclearcraft:ingot:9>);
<ore:ingotGraphite>.remove(<nuclearcraft:ingot:8>);
<ore:ingotEnderium>.remove(<thermalfoundation:material:167>);
<ore:ingotLumium>.remove(<thermalfoundation:material:166>);
<ore:ingotSignalum>.remove(<thermalfoundation:material:165>);
<ore:ingotConstantan>.remove(<thermalfoundation:material:164>);
<ore:ingotBronze>.remove(<thermalfoundation:material:163>);
<ore:ingotBronze>.remove(<nuclearcraft:alloy:0>);
<ore:ingotInvar>.remove(<thermalfoundation:material:162>);
<ore:ingotElectrum>.remove(<thermalfoundation:material:161>);
<ore:ingotSteel>.remove(<thermalfoundation:material:160>);
<ore:ingotSteel>.remove(<nuclearcraft:alloy:5>);
<ore:ingotIridium>.remove(<thermalfoundation:material:135>);
<ore:ingotPlatinum>.remove(<thermalfoundation:material:134>);
<ore:ingotNickel>.remove(<thermalfoundation:material:133>);
<ore:ingotLead>.remove(<thermalfoundation:material:131>);
<ore:ingotSilver>.remove(<thermalfoundation:material:130>);
<ore:ingotSilver>.remove(<nuclearcraft:ingot:13>);
<ore:ingotTin>.remove(<thermalfoundation:material:129>);
<ore:ingotCopper>.remove(<thermalfoundation:material:128>);


// Adding Decompression recipes to Forge Hammer

val allEntries = oreDict.entries;

for oreDictEntry in allEntries{
    if (oreDictEntry.name has "ingot"){
        val result = oreDictEntry.name.split("ingot");
        val material = result[1];
        if (oreDict has ("ingot"+material) && oreDict has ("block"+material)){
            if (!(material has "Brick") && !(material has "Clay")){
                forgeHammer.recipeBuilder().inputs(oreDict.get("block"+material)).outputs(oreDict.get("ingot"+material).firstItem*9).duration(100).EUt(24).buildAndRegister();
            }
        }
    }
}

// Removing unnecessary recipes

forgeHammer.findRecipe(24, [<ore:blockMithril>.firstItem], null).remove();
forgeHammer.findRecipe(24, [<ore:blockAluminum>.firstItem], null).remove();
forgeHammer.findRecipe(24, [<minecraft:snow>], null).remove();
forgeHammer.findRecipe(24, [<refinedstorage:quartz_enriched_iron_block>], null).remove();
compressor.findRecipe(2, [<refinedstorage:quartz_enriched_iron>*9], null).remove();

// Fixing Tough ingots to Blocks

compressor.findRecipe(2, [<nuclearcraft:alloy:1>*9], null).remove();
compressor.recipeBuilder().inputs(<ore:ingotTough>*9).outputs(<ore:blockTough>.firstItem).duration(400).EUt(2).buildAndRegister();
