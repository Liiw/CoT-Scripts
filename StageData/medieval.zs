#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "medieval";

static substages as string[int] = {
    1 : "medieval_1",
    2 : "medieval_2",
    3 : "medieval_3"
};

static mods as string[][int] = {
    1 : [
        "conarm",
        "chesttransporter",
        
        
        "microblockcbe",
        
        "torchlever",
        "openglider",
        
        "ironchest",
        "solcarrot",
        "opframe",
        
        "mcjtylib_ng",
        
        "farmingforblockheads",
        "cookingforblockheads",
        "harvestcraft",
        
        
        
    ],

    2 : [
        "thaumcraft",
        "brewcraft",
        "littletiles",
        "littleopener"
    ],
    3 : [
        "tcomplement",
        "minecolonies",
        "tombstone",
        "structurize"
    ]
};

static items as IItemStack [][int] = {
    1 : [
        
       

        //Agricraft seeds
       
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:emeryllis_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:quartzanthemum_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:cuprosia_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:nether_wart_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:nitorwart_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:redstodendron_plant", agri_growth: 1 as byte}),
        
        //TiC
            <tconstruct:throwball:*>,

        //Horse armor
            <thermalfoundation:horse_armor_copper>,
            <thermalfoundation:horse_armor_tin>,
            <thermalfoundation:horse_armor_steel>,
            <thermalfoundation:horse_armor_bronze>,
            <thermalfoundation:horse_armor_silver>,
            <thermalfoundation:horse_armor_lead>,
       

          
        //Minecraft
            
            <minecraft:armor_stand>,
            <minecraft:arrow>,
            
            <minecraft:beacon>,
            
           
            <minecraft:black_glazed_terracotta>,
            <minecraft:blaze_powder>,
            <minecraft:blaze_rod>,
            <minecraft:blue_glazed_terracotta>,
           
            <minecraft:book>,
            <minecraft:bookshelf>,
            <minecraft:bow>,
            <minecraft:brewing_stand>,
            <minecraft:brown_glazed_terracotta>,
            <minecraft:carpet>,
            <minecraft:carpet:1>,
            <minecraft:carpet:2>,
            <minecraft:carpet:3>,
            <minecraft:carpet:4>,
            <minecraft:carpet:5>,
            <minecraft:carpet:6>,
            <minecraft:carpet:7>,
            <minecraft:carpet:8>,
            <minecraft:carpet:9>,
            <minecraft:carpet:10>,
            <minecraft:carpet:11>,
            <minecraft:carpet:12>,
            <minecraft:carpet:13>,
            <minecraft:carpet:14>,
            <minecraft:carpet:15>,
            <minecraft:chainmail_boots>,
            <minecraft:chainmail_chestplate>,
            <minecraft:chainmail_helmet>,
            <minecraft:chainmail_leggings>,
            
            <minecraft:chest_minecart>,
           
            <minecraft:cyan_glazed_terracotta>,
            
            <minecraft:dispenser>,
            <minecraft:dropper>,
            <minecraft:emerald>,
            <minecraft:emerald_block>,
            <minecraft:emerald_ore>,
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 0 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 0 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 0 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 0 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 1 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 1 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 1 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 1 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 2 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 2 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 2 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 2 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 3 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 3 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 3 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 3 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 4 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 4 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 4 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 4 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 5 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 5 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 5 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 6 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 7 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 7 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 7 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 8 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 8 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 8 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 9 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 9 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 10 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 11 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 12 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 12 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 12 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 13 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 14 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 15 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 16 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 16 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 16 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 16 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 16 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 17 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 17 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 17 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 17 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 17 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 18 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 18 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 18 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 18 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 18 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 19 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 19 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 20 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 20 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 21 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 21 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 21 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 22 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 22 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 22 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 23 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 23 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 23 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 23 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 24 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 25 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 26 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 26 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 26 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 26 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 26 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 27 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 28 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 28 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 28 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 28 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 28 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 29 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 29 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 29 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 32 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 32 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 32 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 32 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 32 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 33 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 34 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 34 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 34 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 35 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 35 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 35 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 48 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 48 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 48 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 48 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 48 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 49 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 49 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 50 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 51 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 61 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 61 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 61 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 62 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 62 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 62 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 70 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 71 as short}]}),
            <minecraft:enchanting_table>,
            
            <minecraft:ender_pearl>,
            <minecraft:experience_bottle>,
            <minecraft:fermented_spider_eye>,
            <minecraft:fire_charge>,
            <minecraft:firework_charge>,
            <minecraft:fireworks>,
            <minecraft:furnace_minecart>,
            <minecraft:ghast_tear>,
            <minecraft:glowstone>,
            <minecraft:glowstone_dust>,
            <minecraft:gray_glazed_terracotta>,
            <minecraft:green_glazed_terracotta>,
            <minecraft:gunpowder>,
            <minecraft:heavy_weighted_pressure_plate>,
            <minecraft:hopper>,
            <minecraft:hopper_minecart>,
            <minecraft:jukebox>,
            
            <minecraft:knowledge_book>,
            <minecraft:light_blue_glazed_terracotta>,
            <minecraft:light_weighted_pressure_plate>,
            <minecraft:lime_glazed_terracotta>,
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:thick"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:night_vision"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_night_vision"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:invisibility"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_invisibility"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:leaping"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_leaping"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_leaping"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:fire_resistance"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:swiftness"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_swiftness"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_swiftness"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:slowness"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_slowness"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:water_breathing"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_water_breathing"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:healing"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_healing"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:harming"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_harming"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:poison"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_poison"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_poison"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:regeneration"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_regeneration"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_regeneration"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strength"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_strength"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:strong_strength"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:weakness"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_weakness"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:luck"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:confusion"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:floating"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:long_floating"}),
            <minecraft:magenta_glazed_terracotta>,
            <minecraft:magma>,
            <minecraft:magma_cream>,
            <minecraft:nether_brick>,
            <minecraft:nether_brick_fence>,
            <minecraft:nether_brick_stairs>,
            <minecraft:nether_star>,
            <minecraft:nether_wart>,
            <minecraft:nether_wart_block>,
            <minecraft:netherbrick>,
            <minecraft:netherrack>,
            <minecraft:noteblock>,
            
            <minecraft:orange_glazed_terracotta>,
            <minecraft:pink_glazed_terracotta>,
            <minecraft:piston>,
            <minecraft:sticky_piston>,
            <minecraft:potion>.withTag({Potion: "minecraft:water"}),
            <minecraft:potion>.withTag({Potion: "minecraft:mundane"}),
            <minecraft:potion>.withTag({Potion: "minecraft:thick"}),
            <minecraft:potion>.withTag({Potion: "minecraft:awkward"}),
            <minecraft:potion>.withTag({Potion: "minecraft:night_vision"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_night_vision"}),
            <minecraft:potion>.withTag({Potion: "minecraft:invisibility"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_invisibility"}),
            <minecraft:potion>.withTag({Potion: "minecraft:leaping"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_leaping"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strong_leaping"}),
            <minecraft:potion>.withTag({Potion: "minecraft:fire_resistance"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
            <minecraft:potion>.withTag({Potion: "minecraft:swiftness"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_swiftness"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strong_swiftness"}),
            <minecraft:potion>.withTag({Potion: "minecraft:slowness"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_slowness"}),
            <minecraft:potion>.withTag({Potion: "minecraft:water_breathing"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_water_breathing"}),
            <minecraft:potion>.withTag({Potion: "minecraft:healing"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strong_healing"}),
            <minecraft:potion>.withTag({Potion: "minecraft:harming"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}),
            <minecraft:potion>.withTag({Potion: "minecraft:poison"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_poison"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strong_poison"}),
            <minecraft:potion>.withTag({Potion: "minecraft:regeneration"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_regeneration"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strength"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_strength"}),
            <minecraft:potion>.withTag({Potion: "minecraft:strong_strength"}),
            <minecraft:potion>.withTag({Potion: "minecraft:weakness"}),
            <minecraft:potion>.withTag({Potion: "minecraft:long_weakness"}),
            <minecraft:potion>.withTag({Potion: "minecraft:luck"}),
            <minecraft:potion>.withTag({Potion: "enderio:confusion"}),
            <minecraft:potion>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:potion>.withTag({Potion: "enderio:withering"}),
            <minecraft:potion>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:potion>.withTag({Potion: "enderio:floating"}),
            <minecraft:potion>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:potion>.withTag({Potion: "enderio:long_floating"}),
            <minecraft:prismarine>,
            <minecraft:prismarine:1>,
            <minecraft:prismarine:2>,
            <minecraft:prismarine_crystals>,
            <minecraft:prismarine_shard>,
            <minecraft:purple_glazed_terracotta>,
            <minecraft:quartz>,
            <minecraft:quartz_block>,
            <minecraft:quartz_block:1>,
            <minecraft:quartz_block:2>,
            <minecraft:quartz_ore>,
            <minecraft:quartz_stairs>,
            <minecraft:red_glazed_terracotta>,
            <minecraft:red_nether_brick>,
            
            <minecraft:redstone_block>,
            <minecraft:redstone_lamp>,
            <minecraft:redstone_ore>,
            <minecraft:redstone_torch>,
            <minecraft:sea_lantern>,
            <minecraft:silver_glazed_terracotta>,
            <minecraft:soul_sand>,
            <minecraft:spectral_arrow>,
            <minecraft:splash_potion>.withTag({Potion: "minecraft:water"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:mundane"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:thick"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_night_vision"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:invisibility"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_invisibility"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:leaping"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_leaping"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_leaping"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:fire_resistance"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_fire_resistance"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:swiftness"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_swiftness"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_swiftness"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:slowness"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_slowness"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:water_breathing"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_water_breathing"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:healing"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_healing"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:harming"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_harming"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:poison"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_poison"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_poison"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:regeneration"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_regeneration"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_regeneration"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strength"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_strength"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:strong_strength"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:weakness"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:long_weakness"}),
            <minecraft:splash_potion>.withTag({Potion: "minecraft:luck"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:confusion"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:withering"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:floating"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:long_floating"}),
            
            <minecraft:stone_pressure_plate>,
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:night_vision"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_night_vision"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:invisibility"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_invisibility"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:leaping"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_leaping"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_leaping"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:fire_resistance"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_fire_resistance"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:swiftness"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_swiftness"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_swiftness"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:slowness"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_slowness"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:water_breathing"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_water_breathing"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:healing"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_healing"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:harming"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_harming"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:poison"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_poison"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_poison"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:regeneration"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_regeneration"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_regeneration"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strength"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_strength"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:strong_strength"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:weakness"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:long_weakness"}),
            <minecraft:tipped_arrow>.withTag({Potion: "minecraft:luck"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:confusion"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:withering"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:floating"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:long_floating"}),
            <minecraft:tnt>,
            
            <minecraft:tripwire_hook>,
            <minecraft:white_glazed_terracotta>,
            <minecraft:wooden_pressure_plate>,
            <minecraft:written_book>,
            <minecraft:yellow_glazed_terracotta>,
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:mundane"}),
            <minecraft:lingering_potion>.withTag({Potion: "minecraft:water"}),
        //OMPD
            <ompd:camo_trap>,
            <ompd:fence:1>,
            <ompd:hardened:1>,
            <ompd:wall:1>,
        //Constructs armory  
            <conarm:armorforge>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),
        //Microblock
            <microblockcbe:microblock:1>.withTag({mat: "minecraft:stone[variant=stone]"}),
            <minecraft:compass>,
            <minecraft:trapped_chest>,
        
        //Some Random MAgic books again
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 25 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 25 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 25 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 27 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 27 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 27 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 5 as short, id: 27 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 15 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 15 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 15 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 11 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 11 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 25 as short}]})
    ],

    2 : [
        //Baubles
            <baubles:ring>,

    ],
    3 : [
        
    ]
};

static liquids as ILiquidStack [][int] = {   
    1 : [ 
    
    
       
    ],

    2 : [
        //Thaumcraft
        <liquid:liquid_death>,
        <liquid:purifying_fluid>,
        <liquid:flux_goo>,

    ],
    3 : []
};

static ores as IIngredient[][IItemStack][int] = 
{
    1 : {<minecraft:stone>:
        [
            <minecraft:redstone>,
            <minecraft:redstone_ore>,
            <geolosys:ore_vanilla:1>,],

        <immcraft:rock>:
        [
            <geolosys:ore_sample_vanilla:1>
        
        ]
        
    },

    2 : {
            
        <minecraft:stone>:
        [
                        
            <thaumcraft:crystal_aer:*>,
            <thaumcraft:crystal_ignis:*>,
            <thaumcraft:crystal_aqua:*>,
            <thaumcraft:crystal_terra:*>,
            <thaumcraft:crystal_ordo:*>,
            <thaumcraft:crystal_perditio:*>,
            <thaumcraft:crystal_vitium:*>,
            <thaumcraft:stone_porous:*>,
            <thaumcraft:ore_cinnabar:*>,
            <thaumcraft:ore_amber:*>
        ]
        
    },
    3 : {

        <minecraft:stone>:[
            <geolosys:ore:6>,
            <geolosys:ore_vanilla:6>,
            <geolosys:ore_vanilla:4>,
        ],


        <immcraft:rock>:
        [
            <geolosys:ore_sample:6>,
            <geolosys:ore_sample_vanilla:6>,
            <geolosys:ore_sample_vanilla:4>
        ]
    }
};




static materials as string [][int] = {
    1:[
        "prismarine",
        "firewood",
        "knightslime",
        "netherrack",
        "steel",
        "silver",
        "emerald",
        "brass",
        "quartz",
        "lead",

        //Thaumcraft TiC
        "perditio_thaumium",
        "ordo_thaumium",
        "terra_thaumium",
        "aqua_thaumium",
        "ignis_thaumium",
        "aer_thaumium",
        //ALL THE DUSTS BEFORE THIS STAGE (CUZ STAGES LOOP CHRONOLOGICALLY)
        "dust",
        //ALL THE ARMOR BEFORE THIS STAGE
        "conarm"

        

    ],

    2:[],
    3:[]
};

static recipes as string [][int] = {
    1 : [
        
    ],
    2 : [],
    3 : []
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