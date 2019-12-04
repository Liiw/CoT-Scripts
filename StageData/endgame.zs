#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static name as string = "endgame";

static substages as string[int] = {
    1 : "endgame_1"
};

static mods as string[][int] = {
    1 : [
        "sgcraft",
        "woot" 
    ]
};

static items as IItemStack [][int]  = {
    1 : [
        <guideapi:woot-guide>
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