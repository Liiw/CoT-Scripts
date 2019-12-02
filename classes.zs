#priority 10000
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

zenClass Stage {
    var name as string = "";
    var substages as string[int] = {};
    var mods as string[][int] = {};
    var items as IItemStack[][int] = {};
    var liquids as ILiquidStack[][int] = {};


    zenConstructor (className as string) {
        name = className;
    }
    
}