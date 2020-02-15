#priority 10000
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;



zenClass Stage {
    var name as string = "";
    var substages as string[int] = {};
    var mods as string[][int] = {};
    var items as IItemStack[][int] = {};
    var liquids as ILiquidStack[][int] = {};
    var ores as IIngredient[][IItemStack][int] = {};
    var recipes as string[][int] = {};


    zenConstructor (
        className as string, 
        classSubstages as string[int],
        classMods as string[][int],
        classItems as IItemStack[][int],
        classLiquids as ILiquidStack[][int], 
        classOres as IIngredient[][IItemStack][int],
        classRecipes as string[int]
        
    ){
        name = className;
        substages = classSubstages;
        mods = classMods;
        items = classItems;
        liquids = classLiquids;
        ores = classOres;
        recipes = classRecipes;
    }
    
}
