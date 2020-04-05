#norun
#priority 9800



import crafttweaker.oredict.IOreDict;

static materials as string[] = [
    "Iron",
    "Copper",
    "Tin",
    "Lead",
    "Aluminum",
    "Platinum",
    "Uranium",
    "Nickel",
    //"Coal",
    "Redstone",
    "Gold",
    //"Lapis",
    "Quartz",
    "Diamond",
    "Emerald"
];





for mat in materials{

    var matNugget = <minecraft:apple>;
    var  matPoorOre = <minecraft:apple>;

    var oreDictEnt = oreDict.entries;

    for entry in oreDictEnt {
        if (entry.name has mat){
            if (entry.name has "nugget" || 
                entry.name has "dustRedstone" ||
                entry.name has "clumpCoal" ||
                entry.name has "gemLapis"){
                matNugget = entry.firstItem;
            }
            else if (entry.name has "poorOre"){
                matPoorOre = entry.firstItem;
            }

        }
    }

    furnace.addRecipe(matNugget, matPoorOre);

    print(matPoorOre.displayName + " " + matPoorOre.name);
}


//mods.orestages.OreStages.addReplacement("test", <contenttweaker:sub_block_holder_0:3>, <minecraft:gravel>);
