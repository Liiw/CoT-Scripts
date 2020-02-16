#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "late_metal";

static substages as string[int] = {
    1 : "late_metal_1"
};

static mods as string[][int] = {
    1 : [
        "tconstruct",
        "ironbackpacks",
        "naturescompass",
        "torchbandolier",
        "opframe",
        "tombstone"
    ]
};

static items as IItemStack [][int]  = {
    1 : [

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

        //Dungpipe sever pipe
            <dungpipe:sewer_pipe>,

        //Primal_tech 
            
            <primal_tech:charcoal_hopper>,
        //Geolosys clusters
            <geolosys:cluster>,
            <geolosys:cluster:1>,

        //Agricraft    
            <agricraft:agri_nugget>,
            <agricraft:agri_nugget:1>,
            <agricraft:agri_nugget:2>,
            <agricraft:agri_nugget:3>,
            <agricraft:agri_nugget:9>,
            <agricraft:grate>.withTag({agri_material_meta: 3, agri_material: "minecraft:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 2, agri_material: "minecraft:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 1, agri_material: "minecraft:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "minecraft:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "thaumcraft:plank_greatwood"}),
            <agricraft:grate>.withTag({agri_material_meta: 5, agri_material: "minecraft:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "thaumcraft:plank_silverwood"}),
            <agricraft:grate>.withTag({agri_material_meta: 4, agri_material: "minecraft:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 3, agri_material: "primal:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 2, agri_material: "primal:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 1, agri_material: "primal:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "primal:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "advancedrocketry:planks"}),
        //CompactDrawers
            //<compactdrawers:compact_drawer_2by1>.withTag({}),
            //<compactdrawers:compact_drawer_2by1_half>.withTag({}),
            //<compactdrawers:compact_drawer_half>.withTag({}),

        //Minecraft
            
            <minecraft:acacia_door>,
            <minecraft:acacia_fence>,
            <minecraft:acacia_fence_gate>,
            <minecraft:acacia_stairs>,
            <minecraft:banner:15>,
            <minecraft:banner:14>,
            <minecraft:banner:13>,
            <minecraft:banner:12>,
            <minecraft:banner:11>,
            <minecraft:banner:10>,
            <minecraft:banner:9>,
            <minecraft:banner:8>,
            <minecraft:banner:7>,
            <minecraft:banner:6>,
            <minecraft:banner:5>,
            <minecraft:banner:4>,
            <minecraft:banner:3>,
            <minecraft:banner:2>,
            <minecraft:banner:1>,
            <minecraft:banner>,
            <minecraft:birch_door>,
            <minecraft:birch_fence>,
            <minecraft:birch_fence_gate>,
            <minecraft:birch_stairs>,
            <minecraft:brick>,
            <minecraft:brick_block>,
            <minecraft:brick_stairs>,
            <minecraft:bucket>,
            <minecraft:cauldron>,
            
            <minecraft:dark_oak_door>,
            <minecraft:dark_oak_fence>,
            <minecraft:dark_oak_fence_gate>,
            <minecraft:dark_oak_stairs>,
            <minecraft:diamond>,
            <minecraft:diamond_axe>,
            <minecraft:diamond_block>,
            <minecraft:diamond_boots>,
            <minecraft:diamond_chestplate>,
            <minecraft:diamond_helmet>,
            <minecraft:diamond_hoe>,
            <minecraft:diamond_horse_armor>,
            <minecraft:diamond_leggings>,
            
            <minecraft:diamond_pickaxe>,
            <minecraft:diamond_shovel>,
            <minecraft:diamond_sword>,
            <minecraft:fence>,
            <minecraft:fence_gate>,
            <minecraft:filled_map>,
            <minecraft:flint_and_steel>,
            <minecraft:furnace>,
            <minecraft:glass>,
            <minecraft:glass_bottle>,
            <minecraft:glass_pane>,
            <minecraft:gold_block>,
            <minecraft:gold_ingot>,
            <minecraft:gold_nugget>,
           
            <minecraft:golden_axe>,
            <minecraft:golden_boots>,
            <minecraft:golden_carrot>,
            <minecraft:golden_chestplate>,
            <minecraft:golden_helmet>,
            <minecraft:golden_hoe>,
            <minecraft:golden_horse_armor>,
            <minecraft:golden_leggings>,
            <minecraft:golden_pickaxe>,
            <minecraft:golden_shovel>,
            <minecraft:golden_sword>,
            <minecraft:iron_axe>,
            <minecraft:iron_bars>,
            <minecraft:iron_block>,
            <minecraft:iron_boots>,
            <minecraft:iron_chestplate>,
            <minecraft:iron_door>,
            <minecraft:iron_helmet>,
            <minecraft:iron_hoe>,
            <minecraft:iron_horse_armor>,
            <minecraft:iron_ingot>,
            <minecraft:iron_leggings>,
            <minecraft:iron_nugget>,
            
            <minecraft:iron_pickaxe>,
            <minecraft:iron_shovel>,
            <minecraft:iron_sword>,
            <minecraft:iron_trapdoor>,
            <minecraft:item_frame>,
            <minecraft:jungle_door>,
            <minecraft:jungle_fence>,
            <minecraft:jungle_fence_gate>,
            <minecraft:jungle_stairs>,
            <minecraft:ladder>,
            <minecraft:lava_bucket>,
            <minecraft:lever>,
            <minecraft:lit_pumpkin>,
            <minecraft:map>,
            <minecraft:minecart>,
            <minecraft:oak_stairs>,
            <minecraft:painting>,
            <minecraft:paper>,
            <minecraft:rail>,
            <minecraft:sandstone_stairs>,
            <minecraft:shears>,
            <minecraft:shield>,
            <minecraft:sign>,
            <minecraft:spruce_door>,
            <minecraft:spruce_fence>,
            <minecraft:spruce_fence_gate>,
            <minecraft:spruce_stairs>,
            <minecraft:stained_glass>,
            <minecraft:stained_glass:1>,
            <minecraft:stained_glass:2>,
            <minecraft:stained_glass:3>,
            <minecraft:stained_glass:4>,
            <minecraft:stained_glass:5>,
            <minecraft:stained_glass:6>,
            <minecraft:stained_glass:7>,
            <minecraft:stained_glass:8>,
            <minecraft:stained_glass:9>,
            <minecraft:stained_glass:10>,
            <minecraft:stained_glass:11>,
            <minecraft:stained_glass:12>,
            <minecraft:stained_glass:13>,
            <minecraft:stained_glass:14>,
            <minecraft:stained_glass:15>,
            <minecraft:stained_glass_pane>,
            <minecraft:stained_glass_pane:1>,
            <minecraft:stained_glass_pane:2>,
            <minecraft:stained_glass_pane:3>,
            <minecraft:stained_glass_pane:4>,
            <minecraft:stained_glass_pane:5>,
            <minecraft:stained_glass_pane:6>,
            <minecraft:stained_glass_pane:7>,
            <minecraft:stained_glass_pane:8>,
            <minecraft:stained_glass_pane:9>,
            <minecraft:stained_glass_pane:10>,
            <minecraft:stained_glass_pane:11>,
            <minecraft:stained_glass_pane:12>,
            <minecraft:stained_glass_pane:13>,
            <minecraft:stained_glass_pane:14>,
            <minecraft:stained_glass_pane:15>,
            <minecraft:sticky_piston>,
            <minecraft:stone_brick_stairs>,
            <minecraft:stone_button>,
            <minecraft:stone_stairs>,
            <minecraft:trapdoor>,
            <minecraft:water_bucket>,
            <minecraft:wooden_button>,
            <minecraft:wooden_door>,
            <minecraft:writable_book>,
                
            <minecraft:anvil>,
            <minecraft:anvil:1>,
            <minecraft:anvil:2>,
            <minecraft:carrot_on_a_stick>,
        //OMPD
            <ompd:fence>,
            <ompd:wall>,
        //Tinkers construct
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "structurize:blockcactusplank", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:nuggets:5>,
            <tconstruct:ingots:5>,
            <tconstruct:metal:5>,
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_oak", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_spruce", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_birch", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_jungle", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_acacia", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_dark_oak", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:toolforge>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:toolforge>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
            <tconstruct:toolforge>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:bolt>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Special: {Categories: ["no_melee", "projectile", "tool"]}, TinkerData: {Materials: ["wood", "obsidian", "feather"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "duritos", color: -10478396, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "duritos", "toolleveling"]}),
            //Buckets
            <forge:bucketfilled>.withTag({FluidName: "iron", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "gold", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "pigiron", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "cobalt", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "ardite", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "manyullyn", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "knightslime", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "alubrass", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "brass", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "copper", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "tin", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "bronze", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "zinc", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "lead", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "nickel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "silver", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "electrum", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "steel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "aluminum", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "stone", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "obsidian", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "clay", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "dirt", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "emerald", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "glass", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "blueslime", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "purpleslime", Amount: 1000}),

    ]

};

static liquids as ILiquidStack [][int] = {   
    1 : [ 
    //Tinkers Construct Fluids
        <liquid:iron>,
        <liquid:gold>,
        <liquid:pigiron>,
        <liquid:cobalt>,
        <liquid:ardite>,
        <liquid:manyullyn>,
        <liquid:knightslime>,
        <liquid:alubrass>,
        <liquid:brass>,
        <liquid:copper>,
        <liquid:tin>,
        <liquid:bronze>,
        <liquid:zinc>,
        <liquid:lead>,
        <liquid:nickel>,
        <liquid:silver>,
        <liquid:electrum>,
        <liquid:steel>,
        <liquid:aluminum>,
        <liquid:stone>,
        <liquid:obsidian>,
        <liquid:clay>,
        <liquid:dirt>,
        <liquid:emerald>,
        <liquid:glass>,
        <liquid:blood>,
        <liquid:blueslime>,
        <liquid:purpleslime>
  
    ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {<minecraft:stone>:[<geolosys:ore_vanilla:2>,
                           <geolosys:ore_vanilla:5>,
                           <geolosys:ore>,
                           <minecraft:iron_ore>,
                           <geolosys:ore:1>,
                           <minecraft:diamond_ore>,
                           <minecraft:gold_ore>],

          <immcraft:rock>:[<geolosys:ore_sample_vanilla:2>,
                           <geolosys:ore_sample_vanilla:5>,
                           <geolosys:ore_sample>,
                           <geolosys:ore_sample:1>]},
    2: {}
};



static TiCMat as string [][int] = {
    1:[
        "iron",
        "paper",
        "pigiron"
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
    TiCMat,
    recipes

);