#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "endgame";

static substages as string[int] = {
    1 : "endgame_1"
};

static mods as string[][int] = {
    1 : [
        "sgcraft",
        "woot",
        //"wpt",
        //"wct",
        //"wft",
        //"wit",
        "advancedrocketry",
        "libvulpes" 
    ]
};

static items as IItemStack [][int]  = {
    1 : [
        //MAlisisdoors
            <malisisdoors:forcefielditem>,
            <guideapi:woot-guide>,
        //AE2Stuff
            /*<ae2stuff:wireless>,
            <ae2stuff:wireless_kit>,
            <ae2wtlib:infinity_booster_card>,
            <ae2wtlib:wut>,*/
            <chisel:futura:*>,

        
        //OMPD
            <ompd:fence:4>,
            <ompd:hardened:4>,
            <ompd:wall:4>
    ] 
};

static liquids as ILiquidStack [][int] = {   
    1 : [ 
        <liquid:titanium>
    ] 
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {<minecraft:stone>:[
        <sgcraft:naquadahore>,
        <libvulpes:ore0>,
        <libvulpes:ore0:8>
    ]},
    2: {}
};

static materials as string [][int] = {
    1:["titanium"],
    2:[],
    3:[]
};

static recipes as string [][int] = {
    1 : [
        
    ]
};

static recipeCategories as string [][int] = {
    1 : []
};

static mobs as string [][int] = {
    1 : []
};



static class as Stage  = Stage(
    name,
    substages,
    mods,
    items,
    liquids,
    ores,
    materials,
    recipes,
    recipeCategories,
    mobs
);