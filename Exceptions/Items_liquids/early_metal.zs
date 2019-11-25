#priority 9400

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static items as IItemStack [][string]  = {
    "Early metal stuff" : [
        <agricraft:agri_nugget:4>,
        <agricraft:agri_nugget:5>,
        <agricraft:agri_nugget:6>,
        <agricraft:agri_nugget:7>,
        <astikorcarts:cargocart>,
        <astikorcarts:mobcart>,
        <astikorcarts:plowcart>,
        <astikorcarts:wheel>,
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
        <horsepower:chopper>,
        <horsepower:chopping_block>,
        <horsepower:dough>,
        <horsepower:flour>,
        <horsepower:grindstone>,
        <horsepower:hand_grindstone>,
        <horsepower:press>,
        <immersivetech:connectors>,
        <immersivetech:material>,
        <immersivetech:metal_device>,
        <immersivetech:metal_multiblock>,
        <immersivetech:stone_decoration>,
        <immersivetech:stone_multiblock>,
        <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:basic", spec: "NONE"}}),
        <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "STORAGE"}}),
        <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:iron", spec: "UPGRADE"}}),
        <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "STORAGE"}}),
        <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:gold", spec: "UPGRADE"}}),
        <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "STORAGE"}}),
        <ironbackpacks:backpack>.withTag({packInfo: {upgrade: [], type: "ironbackpacks:diamond", spec: "UPGRADE"}}),
        <ironbackpacks:upgrade>,
        <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:damage_bar"}),
        <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:lock"}),
        <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:extra_upgrade"}),
        <ironbackpacks:upgrade>.withTag({upgrade: "ironbackpacks:everlasting"}),
        <jarm:acacia_raft>,
        <jarm:birch_raft>,
        <jarm:dark_oak_raft>,
        <jarm:jungle_raft>,
        <jarm:oak_raft>,
        <jarm:spruce_raft>,
        <minecraft:name_tag>,
        <minecraft:saddle>,
        <minecraft:stonebrick>,
        <minecraft:stonebrick:1>,
        <minecraft:stonebrick:2>,
        <minecraft:stonebrick:3>,
        <ompd:hardened>,
        <primalchests:primal_chest_advanced>
    ]


    /*

    "Minecraft" : [
        //Coal
            <minecraft:coal_block>,
            <minecraft:coal>,
        //Lapis and quartz
            <minecraft:lapis_block>,
            <minecraft:dye:4>,
            <minecraft:quartz>,
            <minecraft:quartz_block>,
            <minecraft:stone_slab:7>,
            <minecraft:quartz_block:1>,
            <minecraft:quartz_block:2>,
        //ALL-STAIRS
            <minecraft:oak_stairs>,
            <minecraft:stone_stairs>,
            <minecraft:brick_stairs>,
            <minecraft:stone_brick_stairs>,
            <minecraft:nether_brick_stairs>,
            <minecraft:sandstone_stairs>,
            <minecraft:spruce_stairs>,
            <minecraft:birch_stairs>,
            <minecraft:jungle_stairs>,
            <minecraft:quartz_stairs>,
            <minecraft:acacia_stairs>,
            <minecraft:dark_oak_stairs>,
            <minecraft:red_sandstone_stairs>,
            <minecraft:purpur_stairs>,
        //ALL WOOLS
            <minecraft:wool>,
            <minecraft:wool:*>,
        //Prismarine blocks, sea lantern
            <minecraft:prismarine>,
            <minecraft:prismarine:1>,
            <minecraft:prismarine:2>,
            <minecraft:prismarine_shard>,
            <minecraft:prismarine_crystals>,
            <minecraft:sea_lantern>,
        //Concrete powder
            <minecraft:concrete_powder>,
            <minecraft:concrete_powder:*>,
        //Crafting table, furnace, ladder, sign, flower pot
            <minecraft:crafting_table>,
            <minecraft:furnace>,
            <minecraft:flower_pot>,
            <minecraft:sign>,
            <minecraft:ladder>,
        //Fences
            <minecraft:fence>,
            <minecraft:nether_brick_fence>,
            <minecraft:spruce_fence>,
            <minecraft:birch_fence>,
            <minecraft:jungle_fence>,
            <minecraft:dark_oak_fence>,
            <minecraft:acacia_fence>,
            <minecraft:fence_gate>,
            <minecraft:spruce_fence_gate>,
            <minecraft:birch_fence_gate>,
            <minecraft:jungle_fence_gate>,
            <minecraft:dark_oak_fence_gate>,
            <minecraft:acacia_fence_gate>,
        //Walls, slime, doors and trapdoors
            <minecraft:cobblestone_wall>,
            <minecraft:cobblestone_wall:1>,
            <minecraft:slime>,
            <minecraft:slime_ball>,
            <minecraft:trapdoor>,
            <minecraft:iron_trapdoor>,
            <minecraft:wooden_door>,
            <minecraft:iron_door>,
            <minecraft:spruce_door>,
            <minecraft:birch_door>,
            <minecraft:jungle_door>,
            <minecraft:acacia_door>,
            <minecraft:dark_oak_door>,
        //Carpets
            <minecraft:carpet>,
            <minecraft:carpet:*>,
        //Banners
            <minecraft:banner>,
            <minecraft:banner:*>
            

    ]

    /*
    "Minecraft" :   [
        //Random stuff
            <minecraft:flower_pot>,
            <minecraft:saddle>,
            <minecraft:shears>,
            <minecraft:lead>,
            <minecraft:name_tag>,
        
        //Glass
            <minecraft:glass>,
            <minecraft:glass_pane>,
            <minecraft:stained_glass>,
            <minecraft:stained_glass:*>,
            <minecraft:stained_glass_pane>,
            <minecraft:stained_glass_pane:*>,
            <minecraft:glass_bottle>,
        //Terracotta
            <minecraft:stained_hardened_clay>,
            <minecraft:stained_hardened_clay:*>,
            <minecraft:hardened_clay>  
        
    ],
    "Primalcore" : [
        <primal:soulglass>,
        <primal:ironglass>,
        <primal:slab_glass>,
        <primal:slab_soulglass>,
        <primal:thin_slab_glass>,
        <primal:thin_slab_soulglass>
    ]

    */
};

static liquids as ILiquidStack [] = [
   
  
    
];