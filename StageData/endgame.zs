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
        "woot",
        "wpt",
        "wct",
        "wft",
        "wit" 
    ]
};

static items as IItemStack [][int]  = {
    1 : [
            <guideapi:woot-guide>,
        //AE2Stuff
            <ae2stuff:wireless>,
            <ae2stuff:wireless_kit>,
            <ae2wtlib:infinity_booster_card>,
            <ae2wtlib:wut>,
 

        
        //OMPD
            <ompd:fence:4>,
            <ompd:hardened:4>,
            <ompd:wall:4>
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