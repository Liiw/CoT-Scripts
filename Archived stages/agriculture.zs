#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "agriculture";

static substages as string[int] = {
    1 : "agriculture_1"
};

static mods as string[][int] = {
    1 : [
        
    ]
};

static items as IItemStack [][int]  = {
  1 : [

    

    

  ]
};

static liquids as ILiquidStack [][int]  = {
  1 : [] 
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {},
    2: {}
};


static materials as string [][int] = {
    1:[],
    2:[],
    3:[]
};

static recipes as string [][int] = {
    1 : [
        
    ]
};

static class as Stage  = Stage(
    name,
    substages,
    mods,
    items,
    liquids,
    ores,
    materials,
    recipes

);
