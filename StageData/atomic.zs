#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "atomic";

static substages as string[int] = {
    1 : "atomic_1"
};

static mods as string[][int] = {
    1 : [
        "trafficcontrol",
        "btcivil",   
        "unuparts",
        "projectred-core",
        "projectred-core",
        "projectred-compat",
        "projectred-integration",
        "projectred-transmission",
        "projectred-fabrication",
        "projectred-illumination",
        "bigreactors",
        "openmodularturrets",
        "rftools",
        "immersivetech"
    ]
};

static items as IItemStack [][int]  = {
  1 : [

    //Geolysys ore clusters
      <geolosys:cluster:11>,
      <geolosys:cluster:9>,

    //Open modular passive defence
      <ompd:fence:3>,
      <ompd:hardened:3>,
      <ompd:wall:3>,
    //Openglider
      <openglider:hang_glider_advanced>,
    //The One Probe
      <theoneprobe:probe_goggles>,
    //Extreme Reactors
      <forge:bucketfilled>.withTag({FluidName: "yellorium", Amount: 1000}),
      <forge:bucketfilled>.withTag({FluidName: "cyanite", Amount: 1000}),
      <forge:bucketfilled>.withTag({FluidName: "dist_water", Amount: 1000}),
      <forge:bucketfilled>.withTag({FluidName: "steam", Amount: 1000})
  ]
};

static liquids as ILiquidStack [][int] = {
  1 : [
    //Extrene Reactors
      <liquid:yellorium>,
      <liquid:cyanite>,
      <liquid:fuelcolumn>,
      <liquid:dist_water>,
      <liquid:steam>
  ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1 : {<minecraft:stone>:[<geolosys:ore:9>],
    
         <immcraft:rock>:[<geolosys:ore_sample:9>]
    },
    2: {}
};


static materials as string [][int] = {
    1:[
        "enderium"
    ],
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