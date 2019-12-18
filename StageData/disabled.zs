#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static name as string = "disabled";

static substages as string[int] = {
    1 : "disabled"
};

static mods as string[][int] = {
    1 : [
        "minecraft",       
        "geolosys",
        "omlib",
        "zerocore"
        
    ]
};

static items as IItemStack [][int]  = {
    1 : [
        //Basketcase barks (because primal has similar stuff and is better)
            <basketcase:item_bark_oak>,
            <basketcase:item_bark_spruce>,
            <basketcase:item_bark_birch>,
            <basketcase:item_bark_jungle>,
            <basketcase:item_bark_acacia>,
            <basketcase:item_bark_dark_oak>,
            <basketcase:log_stripped_oak>,
            <basketcase:log_stripped_dark_oak>,
            <basketcase:log_stripped_acacia>,
            <basketcase:log_stripped_birch>,
            <basketcase:log_stripped_spruce>,
            <basketcase:log_stripped_jungle>

    ] 
};

static liquids as ILiquidStack [][int] = {   
    1 : [ 
        
    ] 
};

static ores as IItemStack [][int] = {
  1 : []

};

static class as Stage  = Stage(
    name,
    substages,
    mods,
    items,
    liquids,
    ores
);