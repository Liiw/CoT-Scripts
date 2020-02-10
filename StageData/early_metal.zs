#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static name as string = "early_metal";

static substages as string[int] = {
    1 : "early_metal_1"
};

static mods as string[][int] = {
    1 : [
        "dungpipe",
        "jarm",
        "wumpleutil", 
        "comforts",
        "astikorcarts" 
    ]
};

static items as IItemStack [][int]  = {
    1 : [
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
            <minecraft:name_tag>,
            <minecraft:saddle>,
            <minecraft:stonebrick>,
            <minecraft:stonebrick:1>,
            <minecraft:stonebrick:2>,
            <minecraft:stonebrick:3>,
        //OMPD
            <ompd:hardened>,

    ]

};

static liquids as ILiquidStack [][int] = {
  1:[

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