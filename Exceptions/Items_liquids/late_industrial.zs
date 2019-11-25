#priority 9400

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static items as IItemStack [][string]  = {
    "Late industrial stuff" : [
        <minecraft:black_shulker_box>,
        <minecraft:blue_shulker_box>,
        <minecraft:brown_shulker_box>,
        <minecraft:cyan_shulker_box>,
        <minecraft:detector_rail>,
        <minecraft:dragon_breath>,
        <minecraft:dragon_egg>,
        <minecraft:elytra>,
        <minecraft:end_bricks>,
        <minecraft:end_crystal>,
        <minecraft:end_portal_frame>,
        <minecraft:end_rod>,
        <minecraft:end_stone>,
        <minecraft:ender_chest>,
        <minecraft:gray_shulker_box>,
        <minecraft:green_shulker_box>,
        <minecraft:light_blue_shulker_box>,
        <minecraft:lime_shulker_box>,
        <minecraft:magenta_shulker_box>,
        <minecraft:orange_shulker_box>,
        <minecraft:pink_shulker_box>,
        <minecraft:purple_shulker_box>,
        <minecraft:purpur_block>,
        <minecraft:purpur_pillar>,
        <minecraft:purpur_slab>,
        <minecraft:purpur_stairs>,
        <minecraft:red_shulker_box>,
        <minecraft:shulker_shell>,
        <minecraft:silver_shulker_box>,
        <minecraft:white_shulker_box>,
        <minecraft:yellow_shulker_box>,

        
        <theoneprobe:diamond_helmet_probe>.withTag({theoneprobe: 1}),
        <theoneprobe:gold_helmet_probe>.withTag({theoneprobe: 1}),
        <theoneprobe:iron_helmet_probe>.withTag({theoneprobe: 1})
    ],

    "Immersive Petroleum Buckets and shaders" : [
        <forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "diesel", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "gasoline", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "napalm", Amount: 1000})
    ],

    "Thaumic restoration buckets" : [
        <forge:bucketfilled>.withTag({FluidName: "fluid_molten_aer", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "fluid_molten_ignis", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "fluid_molten_aqua", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "fluid_molten_terra", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "fluid_molten_ordo", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "fluid_molten_perditio", Amount: 1000})
    ]
    
};

static liquids as ILiquidStack [] = [
    
    //IP liquids
        <liquid:oil>,
        <liquid:diesel>,
        <liquid:lubricant>,
        <liquid:gasoline>,
        <liquid:napalm>,

    //Thaumic restoration liquids
        <liquid:fluid_molten_aer>,
        <liquid:fluid_molten_ignis>,
        <liquid:fluid_molten_aqua>,
        <liquid:fluid_molten_terra>,
        <liquid:fluid_molten_ordo>,
        <liquid:fluid_molten_perditio>
    
];