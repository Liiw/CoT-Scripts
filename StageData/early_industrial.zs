#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "early_industrial";

static substages as string[int] = {
    1 : "early_industrial_1"
};

static mods as string[][int] = {
    1 : [
        "immersiverailroading",
        "thaumicaugmentation",
        "theoneprobe",
        "mctsmelteryio", 
        "immersiveengineering",
        "weirdinggadget",
        "compactdrawers"
    ]
};

static items as IItemStack [][int] = {
    1 : [

        //Geolosys clusters
            <geolosys:cluster:6>,
            <geolosys:cluster:7>,
            <geolosys:coal_coke:1>,
            <geolosys:coal_coke>,

        //Agricraft
            <agricraft:agri_nugget:8>,
            <agricraft:agri_nugget:10>,
            <agricraft:agri_nugget:11>,

        //Minecraft
            <minecraft:activator_rail>,
            <minecraft:clock>,
            <minecraft:comparator>,
            <minecraft:concrete_powder>,
            <minecraft:concrete_powder:1>,
            <minecraft:concrete_powder:2>,
            <minecraft:concrete_powder:3>,
            <minecraft:concrete_powder:4>,
            <minecraft:concrete_powder:5>,
            <minecraft:concrete_powder:6>,
            <minecraft:concrete_powder:7>,
            <minecraft:concrete_powder:8>,
            <minecraft:concrete_powder:9>,
            <minecraft:concrete_powder:10>,
            <minecraft:concrete_powder:11>,
            <minecraft:concrete_powder:12>,
            <minecraft:concrete_powder:13>,
            <minecraft:concrete_powder:14>,
            <minecraft:concrete_powder:15>,
            <minecraft:daylight_detector>,
            <minecraft:golden_rail>,
            <minecraft:observer>,
            <minecraft:record_11>,
            <minecraft:record_13>,
            <minecraft:record_blocks>,
            <minecraft:record_cat>,
            <minecraft:record_chirp>,
            <minecraft:record_far>,
            <minecraft:record_mall>,
            <minecraft:record_mellohi>,
            <minecraft:record_stal>,
            <minecraft:record_strad>,
            <minecraft:record_wait>,
            <minecraft:record_ward>,
            <minecraft:repeater>,
            <minecraft:tnt_minecart>,
            <minecraft:jukebox>,
        
        //Open modular passive defence
            <ompd:fence:2>,
            <ompd:hardened:2>,
            <ompd:wall:2>,
        //IE buckets and shaders
            <immersiveengineering:shader_bag>.withTag({rarity: "RARE"}),
            <immersiveengineering:shader_bag>.withTag({rarity: "EPIC"}),
            <immersiveengineering:shader_bag>.withTag({rarity: "IE:MASTERWORK"}),
            <forge:bucketfilled>.withTag({FluidName: "creosote", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "plantoil", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "ethanol", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "biodiesel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "concrete", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "potion", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "uranium", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "constantan", Amount: 1000})

        
        
    ]      
};

static liquids as ILiquidStack [][int] = {   
    1 : [  
    //IE liquids
        <liquid:creosote>,
        <liquid:plantoil>,
        <liquid:ethanol>,
        <liquid:biodiesel>,
        <liquid:concrete>,
        <liquid:potion>,
        <liquid:uranium>,
        <liquid:constantan>
    ]
    
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {<minecraft:stone>:[<geolosys:ore:7>],

        <immcraft:rock>:[<geolosys:ore_sample:7>]

    },
    2: {}
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
    recipes
);