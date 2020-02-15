#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "early_metal";

static substages as string[int] = {
    1 : "early_metal_1"
};

static mods as string[][int] = {
    1 : [
        "jarm",
        "wumpleutil", 
        "comforts",
        "astikorcarts" ,
        "primalchests"
    ]
};

static items as IItemStack [][int]  = {
    1 : [
        //Geolosys ore clusters
            <geolosys:cluster:2>,
            <geolosys:cluster:3>,    

        //Clay Bucket
            <claybucket:unfiredclaybucket>,
            <claybucket:claybucket>,
            <claybucket:claybucket:1>,
            <claybucket:claybucket:2>,

        //Primal tech
            <primal_tech:fluid_bladder>,
            <primal_tech:water_saw>,
            <primal_tech:flint_edged_disc>,
            <primal_tech:wooden_hopper>,

        //Immersive Craft
            <immcraft:furnace>,

        //Agricraft
            <agricraft:agri_nugget:4>,
            <agricraft:agri_nugget:5>,
            <agricraft:agri_nugget:6>,
            <agricraft:agri_nugget:7>,

        //Harvestcraft
            <harvestcraft:candledeco1>,
            <harvestcraft:candledeco10>,
            <harvestcraft:candledeco11>,
            <harvestcraft:candledeco12>,
            <harvestcraft:candledeco13>,
            <harvestcraft:candledeco14>,
            <harvestcraft:candledeco15>,
            <harvestcraft:candledeco16>,
            <harvestcraft:candledeco2>,
            <harvestcraft:candledeco3>,
            <harvestcraft:candledeco4>,
            <harvestcraft:candledeco5>,
            <harvestcraft:candledeco6>,
            <harvestcraft:candledeco7>,
            <harvestcraft:candledeco8>,
            <harvestcraft:candledeco9>,
            <harvestcraft:hardenedleatherchestitem>,
            <harvestcraft:hardenedleatherhelmitem>,
            <harvestcraft:hardenedleatheritem>,
            <harvestcraft:hardenedleatherleggingsitem>,
        
        //Minecraft
            <minecraft:torch>,
            <minecraft:name_tag>,
            <minecraft:saddle>,
            <minecraft:stonebrick>,
            <minecraft:stonebrick:1>,
            <minecraft:stonebrick:2>,
            <minecraft:stonebrick:3>,
            <minecraft:chest>,
        //OMPD
            <ompd:hardened>,

    ]

};

static liquids as ILiquidStack [][int] = {
  1 : [
        //Minecraft
            
            <liquid:lava>
  ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {<minecraft:stone>:[<geolosys:ore:2>,
                           <geolosys:ore:3>,
                           <geolosys:ore:4>,
                           <geolosys:ore:5>],
        
        <immcraft:rock>:[<geolosys:ore_sample:2>,
                         <geolosys:ore_sample:3>,
                         <geolosys:ore_sample:4>,
                         <geolosys:ore_sample:5>]
                           
       },

    2: {}
};

static recipes as string [][int] = {
    1 : [
        "primalChest",
        "primalChestAdv",
        "woodHopper"
    ]
};

static class as Stage  = Stage(
    name,
    substages,
    mods,
    items,
    liquids,
    ores,
    recipes
);