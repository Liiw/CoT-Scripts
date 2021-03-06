#priority 9800

import mods.tcomplement.Overrides;
import mods.tcomplement.Blacklist;

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;


static oreDicts as IOreDictEntry[] = [
    <ore:oreIron>,
    <ore:oreGold>,
    <ore:oreCopper>,
    <ore:oreTin>,
    <ore:oreSilver>,
    <ore:oreLead>,
    <ore:oreAluminum>,
    <ore:oreNickel>,
    <ore:orePlatinum>,
    <ore:oreUranium>,
    <ore:oreZinc>,
    <ore:oreYellorium>
];

static  liquidMetals as ILiquidStack[] = [
    <liquid:iron>,
    <liquid:gold>,
    <liquid:copper>,
    <liquid:tin>,
    <liquid:silver>,
    <liquid:lead>,
    <liquid:aluminum>,
    <liquid:nickel>,
    <liquid:platinum>,
    <liquid:uranium>,
    <liquid:zinc>,
    <liquid:yellorium>
];


//mods.tcomplement.Overrides.removeRecipe(<liquid:copper>);
//mods.tcomplement.Blacklist.addRecipe(<liquid:copper>, <geolosys:cluster:2>);

var i = 0;

for oreDict in oreDicts{

    mods.tcomplement.Overrides.removeRecipe(liquidMetals[i]);


    for item in oreDict.items{
    mods.tcomplement.Blacklist.addRecipe(liquidMetals[i], item);
    }
    i = i + 1;
}
