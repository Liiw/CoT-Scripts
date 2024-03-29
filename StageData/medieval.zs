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
        //"tinkerscompendium",
        "chesttransporter",
        "microblockcbe",
        "torchlever",
        "openglider", 
        "ironchest",
        
        "opframe",
        "mcjtylib_ng",
        "farmingforblockheads",
        "harvestcraft",
        "dynamictreesphc",
        "minecolonies",
        "structurize"      
    ],

    2 : [
        //"thaumcraft",
        "architecturecraft",
        "brewcraft",
        "littletiles",
        "alet",
        "littleopener",
        "astikorcarts"
    ],
    3 : [
        "tcomplement",       
        "tombstone",
        //"moarboats",
        "bonsaitrees",
        "chisel"
    ]
};

static items as IItemStack [][int] = {
    1 : [
        //Armor underwear
            <armorunder:goopak_cool>,
            <armorunder:goopak_heat>,
            <armorunder:goopak_spent>,
            <armorunder:flipflop_liner_material>,
            <armorunder:warm_liner_material>,
            <armorunder:flipflop_goo>,
            <armorunder:auto_chestplate_liner>,
            <armorunder:auto_leggings_liner>,
            <armorunder:diamond_strong_thread>,
            <armorunder:obsidian_goo>,
            <armorunder:obsidian_wrap_material>,
            <armorunder:barrier_boots_liner>,
            <armorunder:barrier_chestplate_liner>,
            <armorunder:barrier_helmet_liner>,
            <armorunder:barrier_leggings_liner>,
            <armorunder:heating_goo>,
            <armorunder:antifreeze_boots_liner>,
            <armorunder:antifreeze_chestplate_liner>,
            <armorunder:antifreeze_helmet_liner>,
            <armorunder:antifreeze_leggings_liner>,

        //Serene seasons and simple difficulty
            <sereneseasons:season_sensor_spring>,
            <sereneseasons:season_clock>,
            <sereneseasons:ss_icon>,
            <sereneseasons:season_sensor_summer>,
            <sereneseasons:season_sensor_autumn>,
            <sereneseasons:season_sensor_winter>,
            <minecraft:potion>.withTag({Potion: "simpledifficulty:cold_resist_type"}),
            <minecraft:potion>.withTag({Potion: "simpledifficulty:cold_resist_type"}),
            <minecraft:potion>.withTag({Potion: "simpledifficulty:long_cold_resist_type"}),
            <minecraft:potion>.withTag({Potion: "simpledifficulty:heat_resist_type"}),
            <minecraft:potion>.withTag({Potion: "simpledifficulty:long_heat_resist_type"}),
            <minecraft:splash_potion>.withTag({Potion: "simpledifficulty:cold_resist_type"}),
            <minecraft:splash_potion>.withTag({Potion: "simpledifficulty:long_cold_resist_type"}),
            <minecraft:splash_potion>.withTag({Potion: "simpledifficulty:heat_resist_type"}),
            <minecraft:splash_potion>.withTag({Potion: "simpledifficulty:long_heat_resist_type"}),
            <minecraft:tipped_arrow>.withTag({Potion: "simpledifficulty:cold_resist_type"}),
            <minecraft:tipped_arrow>.withTag({Potion: "simpledifficulty:long_cold_resist_type"}),
            <minecraft:tipped_arrow>.withTag({Potion: "simpledifficulty:heat_resist_type"}),
            <minecraft:tipped_arrow>.withTag({Potion: "simpledifficulty:long_heat_resist_type"}),
            <minecraft:lingering_potion>.withTag({Potion: "simpledifficulty:cold_resist_type"}),
            <minecraft:lingering_potion>.withTag({Potion: "simpledifficulty:long_cold_resist_type"}),
            <minecraft:lingering_potion>.withTag({Potion: "simpledifficulty:heat_resist_type"}),
            <minecraft:lingering_potion>.withTag({Potion: "simpledifficulty:long_heat_resist_type"}),
            <simpledifficulty:thermometer>,
        //Pyrotech
            <pyrotech:redstone_axe>.withTag({}),
            <pyrotech:redstone_hoe>.withTag({}),
            <pyrotech:redstone_pickaxe>.withTag({}),
            <pyrotech:redstone_shovel>.withTag({}),
            <pyrotech:redstone_sword>.withTag({}),
            <pyrotech:quartz_axe>.withTag({}),
            <pyrotech:quartz_hoe>.withTag({}),
            <pyrotech:quartz_pickaxe>.withTag({}),
            <pyrotech:quartz_shovel>.withTag({}),
            <pyrotech:quartz_sword>.withTag({}),

            <pyrotech:wither_forge>,
            <pyrotech:living_tar>,

            <pyrotech:igniter>,
            <pyrotech:igniter:1>,
            <pyrotech:dense_redstone_ore_large>,
            <pyrotech:dense_redstone_ore_small>,
            <pyrotech:dense_redstone_ore_rocks>,
            <pyrotech:dense_quartz_ore_large>,
            <pyrotech:dense_quartz_ore_small>,
            <pyrotech:dense_quartz_ore_rocks>,
            <pyrotech:material:36>,
            <pyrotech:material:37>,


        //Malisisdoors large doors

            <malisisdoors:carriage_door>,
            <malisisdoors:medieval_door>,
            <malisisdoors:big_door_oak_3x3>,
            <malisisdoors:big_door_spruce_3x3>,
            <malisisdoors:big_door_birch_3x3>,
            <malisisdoors:big_door_jungle_3x3>,
            <malisisdoors:big_door_acacia_3x3>,
            <malisisdoors:big_door_dark_oak_3x3>,
            <malisisdoors:big_door_iron_3x3>,
            <malisisdoors:big_door_rusty_3x3>,
        
        //Harvestrcraft stuff

            <harvestcraft:peanutbutteritem>,
            <harvestcraft:almondbutteritem>,
            <harvestcraft:cashewbutteritem>,
            <harvestcraft:chestnutbutteritem>,
            <harvestcraft:pistachiobutteritem>,
            <harvestcraft:groundbeefitem>,
            <harvestcraft:groundchickenitem>,
            <harvestcraft:groundduckitem>,
            <harvestcraft:groundfishitem>,
            <harvestcraft:groundmuttonitem>,
            <harvestcraft:groundporkitem>,
            <harvestcraft:groundrabbititem>,
            <harvestcraft:groundturkeyitem>,
            <harvestcraft:groundvenisonitem>,
            <harvestcraft:rawtofeakitem>,
            <harvestcraft:rawtofaconitem>,
            <harvestcraft:rawtofuttonitem>,
            <harvestcraft:rawtofickenitem>,
            <harvestcraft:rawtofabbititem>,
            <harvestcraft:rawtofurkeyitem>,
            <harvestcraft:rawtofenisonitem>,
            <harvestcraft:rawtofuduckitem>,
            <harvestcraft:rawtofishitem>,

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
           
            
            <minecraft:bookshelf>,
            
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
            
            <minecraft:cyan_glazed_terracotta>,
            
            <minecraft:dispenser>,
            <minecraft:dropper>,
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

            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 13 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 13 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 30 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 30 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 30 as short}]}),


            <minecraft:enchanting_table>,
            
            <minecraft:ender_pearl>,
            <minecraft:experience_bottle>,
            <minecraft:fermented_spider_eye>,
            <minecraft:fire_charge>,
            <minecraft:firework_charge>,
            <minecraft:fireworks>,
            
            <minecraft:ghast_tear>,
            <minecraft:glowstone>,
            <minecraft:glowstone_dust>,
            <minecraft:gray_glazed_terracotta>,
            <minecraft:green_glazed_terracotta>,
            <minecraft:gunpowder>,
            
            <minecraft:hopper>,
            
            <minecraft:jukebox>,
            
            <minecraft:knowledge_book>,
            <minecraft:light_blue_glazed_terracotta>,
            
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
            /*<minecraft:lingering_potion>.withTag({Potion: "enderio:confusion"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:withering"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:floating"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:lingering_potion>.withTag({Potion: "enderio:long_floating"}),*/
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
            /*<minecraft:potion>.withTag({Potion: "enderio:confusion"}),
            <minecraft:potion>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:potion>.withTag({Potion: "enderio:withering"}),
            <minecraft:potion>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:potion>.withTag({Potion: "enderio:floating"}),
            <minecraft:potion>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:potion>.withTag({Potion: "enderio:long_floating"}),*/
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
           /* <minecraft:splash_potion>.withTag({Potion: "enderio:confusion"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:withering"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:floating"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:splash_potion>.withTag({Potion: "enderio:long_floating"}),*/
            
            
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
            /*<minecraft:tipped_arrow>.withTag({Potion: "enderio:confusion"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:long_confusion"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:withering"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:long_withering"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:floating"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:strong_floating"}),
            <minecraft:tipped_arrow>.withTag({Potion: "enderio:long_floating"}),*/
            <minecraft:tnt>,
            
            <minecraft:tripwire_hook>,
            <minecraft:white_glazed_terracotta>,
            
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
            <conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),

            <forge:bucketfilled>.withTag({FluidName: "slush", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "aeonsteel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "queensgold", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "dogbearium", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "sinisterium", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "nihilite", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "orichalcum", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "pandorium", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "rosegold", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "valyriansteel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "froststeel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "chorusjuice", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "vile", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "vibrant", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "slush", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "dragonsbreath", Amount: 1000}),
        //Microblock
            <microblockcbe:microblock:1>.withTag({mat: "minecraft:stone[variant=stone]"}),
            <minecraft:compass>,
            <minecraft:trapped_chest>,
        
        //Some Random MAgic books again
            <minecraft:enchanted_book>,
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
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 25 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 14 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 14 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 14 as short}]})
    ],

    2 : [
        //Baubles
            //<baubles:ring>,
        //Some buckets again
            <forge:bucketfilled>.withTag({FluidName: "liquid_death", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "purifying_fluid", Amount: 1000}),

        // Dynamic trees potions
            /*<dynamictrees:dendropotion>,
            <dynamictrees:dendropotion:1>,
            <dynamictrees:dendropotion:2>,
            <dynamictrees:dendropotion:3>,
            <dynamictrees:dendropotion:4>,
            <dynamictrees:dendropotion:5>,
            <dynamictrees:dendropotion:6>,*/

        //Minecraft
            <minecraft:minecart>,
            <minecraft:chest_minecart>,
            <minecraft:rail>,
            <minecraft:furnace_minecart>,
            <minecraft:hopper_minecart>,
            <tconstruct:wood_rail>,
            <tconstruct:wood_rail_trapdoor>,

        // Constructs Armory
            /*<conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_aeonsteel", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_queensgold", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_dogbearium", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_sinisterium", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_nihilite", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_orichalcum", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_pandorium", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_rosegold", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_valyriansteel", Count: 1 as byte, Damage: 0 as short}}),
            <conarm:armorforge>.withTag({textureBlock: {id: "tinkerscompendium:block_froststeel", Count: 1 as byte, Damage: 0 as short}}),*/

        //Architecturecraft
            <architecturecraft:shape>.withTag({Shape: 0, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 1, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 2, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 3, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 4, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 5, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 6, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 7, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 8, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 9, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 10, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 11, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 12, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 13, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 14, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 15, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 16, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 17, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 18, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 19, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 20, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 21, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 22, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 23, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 24, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 25, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 26, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 27, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 28, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 29, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 30, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 31, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 32, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 33, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 34, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 35, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 36, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 37, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 38, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 39, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 40, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 41, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 42, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 43, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 44, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 45, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 46, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 47, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 48, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 49, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 50, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 51, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 52, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 53, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 54, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 55, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 56, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 57, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 58, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 59, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 60, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 61, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 62, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 63, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 64, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 65, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 66, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 67, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 68, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 69, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 70, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 71, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 72, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 73, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 74, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 75, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 76, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 77, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 78, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 79, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 80, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 81, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 82, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 83, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 84, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 85, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 86, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 87, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 88, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 89, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 90, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 91, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 92, BaseName: "minecraft:planks", BaseData: 0}),
            <architecturecraft:shape>.withTag({Shape: 93, BaseName: "minecraft:planks", BaseData: 0})
            
    ],
    3 : [
        <tombstone:tablet_of_home>.withTag({ancient: 1 as byte}),
        <tombstone:tablet_of_recall>.withTag({ancient: 1 as byte}),

        <malisisdoors:wood_sliding_door>,
        <malisisdoors:iron_sliding_door>,

        //<thermalfoundation:material:772>,

        //Pyrotech
            <pyrotech:generated_slag_silver>,
            <pyrotech:generated_pile_slag_silver>,
            <pyrotech:generated_slag_lead>,
            <pyrotech:generated_pile_slag_lead>
    ]
};

static liquids as ILiquidStack [][int] = {   
    1 : [ 
        //Tinkers compendium
        /*<liquid:slush>,
        <liquid:aeonsteel>,
        <liquid:queensgold>,
        <liquid:dogbearium>,
        <liquid:sinisterium>,
        <liquid:nihilite>,
        <liquid:orichalcum>,
        <liquid:pandorium>,
        <liquid:rosegold>,
        <liquid:valyriansteel>,
        <liquid:froststeel>,
        <liquid:chorusjuice>,
        <liquid:vile>,
        <liquid:vibrant>,
        <liquid:slush>,
        <liquid:dragonsbreath>*/
    
       
    ],

    2 : [
        //Thaumcraft
        //<liquid:liquid_death>,
        //<liquid:purifying_fluid>,
        //<liquid:flux_goo>,

    ],
    3 : [


    ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1 : {<minecraft:stone>:
        [
            <minecraft:redstone>,
            <minecraft:redstone_ore>,
            <geolosys:ore_vanilla:1>,
            <pyrotech:dense_redstone_ore_large>,
            <pyrotech:dense_redstone_ore_small>,
            <pyrotech:dense_redstone_ore_rocks>,
            <pyrotech:dense_redstone_ore_large_inactive>,
            <pyrotech:dense_redstone_ore_small_inactive>,
            <pyrotech:dense_redstone_ore_rocks_inactive>
            ],

        <pyrotech:rock>:
        [
            <geolosys:ore_sample_vanilla:1>
        
        ],

        <minecraft:netherrack>:
        [
            <pyrotech:dense_quartz_ore_large>,
            <pyrotech:dense_quartz_ore_small>,
            <pyrotech:dense_quartz_ore_rocks>,
        ]
        
    },

    2 : {
            
        <minecraft:stone>:
        [
                        
            /*<thaumcraft:crystal_aer:*>,
            <thaumcraft:crystal_ignis:*>,
            <thaumcraft:crystal_aqua:*>,
            <thaumcraft:crystal_terra:*>,
            <thaumcraft:crystal_ordo:*>,
            <thaumcraft:crystal_perditio:*>,
            <thaumcraft:crystal_vitium:*>,
            <thaumcraft:stone_porous:*>,
            <thaumcraft:ore_cinnabar:*>,
            <thaumcraft:ore_amber:*>*/
        ]
        
    },
    3 : {

        <minecraft:stone>:[
            <geolosys:ore:6>,
            <minecraft:emerald_ore>,
            <geolosys:ore_vanilla:6>,
            <geolosys:ore_vanilla:4>,
        ],


        <pyrotech:rock>:
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
        
        "brass",
        "quartz", 
        //ALL THE DUSTS BEFORE THIS STAGE (CUZ STAGES LOOP CHRONOLOGICALLY)
        "dust",
        //ALL THE ARMOR BEFORE THIS STAGE
        "conarm",
        "buckler",
        //"heater",
        //"tower"
    ],

    2:[
        
    ],
    3:[
        "steel",
        "silver",
        "emerald",
        "lead"
    ]
};

static recipes as string [][int] = {
    1 : [
        
    ],
    2 : [],
    3 : []
};

static recipeCategories as string [][int] = {
    3 : [
        "tcomplement:high_oven_mix",
        "tcomplement:high_oven_heat",
        "tcomplement:high_oven_melting"
    ]
};

static mobs as string [][int] = {
    1 : [
        /*"enderiozoo:fallenknight",
        "enderiozoo:fallenmount",
        "minecraft:zombie_horse",
        "minecraft:zombie_villager",
        "minecraft:witch",*/
    ],
    2 : [
        

        //Thaumcraft entities
        /*
        "thaumcraft:brainyzombie",
        "thaumcraft:cultistcleric",
        "thaumcraft:cultistknight",
        "thaumcraft:cultistleader",
        "thaumcraft:cultistportalgreater",
        "thaumcraft:cultistportallesser",
        "thaumcraft:giantbrainyzombie",
        "thaumcraft:inhabitedzombie",
        "thaumcraft:mindspider",
        "thaumcraft:wisp"*/
    ],

    3 : [
        /*"enderiozoo:enderminy",
        "enderiozoo:withercat",
        "enderiozoo:witherwitch",
        "enderiozoo:concussioncreeper",
        "enderiozoo:direslime",
        "enderiozoo:direwolf",
        "enderiozoo:lovechild",*/
        "minecraft:enderman"

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
    recipes,
    recipeCategories,
    mobs
);