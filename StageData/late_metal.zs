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
        "torchbandolier",
        "opframe",
        "agricraft"
        
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
            <harvestcraft:agaveseeditem>,
            <harvestcraft:almond_sapling>,
            <harvestcraft:amaranthseeditem>,
            <harvestcraft:apple_sapling>,
            <harvestcraft:apricot_sapling>,
            <harvestcraft:arrowrootseeditem>,
            <harvestcraft:artichokeseeditem>,
            <harvestcraft:asparagusseeditem>,
            <harvestcraft:avocado_sapling>,
            <harvestcraft:bambooshootseeditem>,
            <harvestcraft:banana_sapling>,
            <harvestcraft:barleyseeditem>,
            <harvestcraft:beanseeditem>,
            <harvestcraft:beetseeditem>,
            <harvestcraft:bellpepperseeditem>,
            <harvestcraft:blackberryseeditem>,
            <harvestcraft:blueberryseeditem>,
            <harvestcraft:breadfruit_sapling>,
            <harvestcraft:broccoliseeditem>,
            <harvestcraft:brusselsproutseeditem>,
            <harvestcraft:cabbageseeditem>,
            <harvestcraft:cactusfruitseeditem>,
            <harvestcraft:candleberryseeditem>,
            <harvestcraft:cantaloupeseeditem>,
            <harvestcraft:cashew_sapling>,
            <harvestcraft:cassavaseeditem>,
            <harvestcraft:cauliflowerseeditem>,
            <harvestcraft:celeryseeditem>,
            <harvestcraft:cherry_sapling>,
            <harvestcraft:chestnut_sapling>,
            <harvestcraft:chickpeaseeditem>,
            <harvestcraft:chilipepperseeditem>,
            <harvestcraft:cinnamon_sapling>,
            <harvestcraft:coconut_sapling>,
            <harvestcraft:coffeeseeditem>,
            <harvestcraft:cornseeditem>,
            <harvestcraft:cottonseeditem>,
            <harvestcraft:cranberryseeditem>,
            <harvestcraft:cucumberseeditem>,
            <harvestcraft:curryleafseeditem>,
            <harvestcraft:dragonfruit_sapling>,
            <harvestcraft:durian_sapling>,
            <harvestcraft:eggplantseeditem>,
            <harvestcraft:elderberryseeditem>,
            <harvestcraft:fig_sapling>,
            <harvestcraft:flaxseeditem>,
            <harvestcraft:garlicseeditem>,
            <harvestcraft:gigapickleseeditem>,
            <harvestcraft:gingerseeditem>,
            <harvestcraft:gooseberry_sapling>,
            <harvestcraft:grapefruit_sapling>,
            <harvestcraft:grapeseeditem>,
            <harvestcraft:greengrapeseeditem>,
            <harvestcraft:guava_sapling>,
            <harvestcraft:hazelnut_sapling>,
            <harvestcraft:huckleberryseeditem>,
            <harvestcraft:jackfruit_sapling>,
            <harvestcraft:jicamaseeditem>,
            <harvestcraft:juniperberryseeditem>,
            <harvestcraft:juteseeditem>,
            <harvestcraft:kaleseeditem>,
            <harvestcraft:kenafseeditem>,
            <harvestcraft:kiwiseeditem>,
            <harvestcraft:kohlrabiseeditem>,
            <harvestcraft:leekseeditem>,
            <harvestcraft:lemon_sapling>,
            <harvestcraft:lentilseeditem>,
            <harvestcraft:lettuceseeditem>,
            <harvestcraft:lime_sapling>,
            <harvestcraft:lychee_sapling>,
            <harvestcraft:mango_sapling>,
            <harvestcraft:maple_sapling>,
            <harvestcraft:milletseeditem>,
            <harvestcraft:mulberryseeditem>,
            <harvestcraft:mustardseeditem>,
            <harvestcraft:nutmeg_sapling>,
            <harvestcraft:oatsseeditem>,
            <harvestcraft:okraseeditem>,
            <harvestcraft:olive_sapling>,
            <harvestcraft:onionseeditem>,
            <harvestcraft:orange_sapling>,
            <harvestcraft:papaya_sapling>,
            <harvestcraft:paperbark_sapling>,
            <harvestcraft:parsnipseeditem>,
            <harvestcraft:passionfruit_sapling>,
            <harvestcraft:pawpaw_sapling>,
            <harvestcraft:peach_sapling>,
            <harvestcraft:peanutseeditem>,
            <harvestcraft:pear_sapling>,
            <harvestcraft:peasseeditem>,
            <harvestcraft:pecan_sapling>,
            <harvestcraft:peppercorn_sapling>,
            <harvestcraft:persimmon_sapling>,
            <harvestcraft:pineappleseeditem>,
            <harvestcraft:pistachio_sapling>,
            <harvestcraft:plum_sapling>,
            <harvestcraft:pomegranate_sapling>,
            <harvestcraft:quinoaseeditem>,
            <harvestcraft:rambutan_sapling>,
            <harvestcraft:raspberryseeditem>,
            <harvestcraft:rhubarbseeditem>,
            <harvestcraft:riceseeditem>,
            <harvestcraft:rutabagaseeditem>,
            <harvestcraft:scallionseeditem>,
            <harvestcraft:seaweedseeditem>,
            <harvestcraft:sesameseedsseeditem>,
            <harvestcraft:sisalseeditem>,
            <harvestcraft:soursop_sapling>,
            <harvestcraft:soybeanseeditem>,
            <harvestcraft:spiceleafseeditem>,
            <harvestcraft:spiderweb_sapling>,
            <harvestcraft:spinachseeditem>,
            <harvestcraft:starfruit_sapling>,
            <harvestcraft:strawberryseeditem>,
            <harvestcraft:sunflowerseedsitem>,
            <harvestcraft:tamarind_sapling>,
            <harvestcraft:taroseeditem>,
            <harvestcraft:teaseeditem>,
            <harvestcraft:tomatilloseeditem>,
            <harvestcraft:tomatoseeditem>,
            <harvestcraft:turnipseeditem>,
            <harvestcraft:vanillabean_sapling>,
            <harvestcraft:walnut_sapling>,
            <harvestcraft:waterchestnutseeditem>,
            <harvestcraft:whitemushroomseeditem>,
            <harvestcraft:wintersquashseeditem>,
            <harvestcraft:zucchiniseeditem>,

        //Dungpipe sever pipe
            <dungpipe:sewer_pipe>,

        //Primal_tech 
            
            <primal_tech:charcoal_hopper>,
        //Geolosys clusters
            <geolosys:cluster>,
            <geolosys:cluster:1>,

        //Agricraft 

            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:daisy_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:allium_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:potato_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:petinia_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:pink_tulip_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:orchid_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:sugarcane_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:brown_mushroom_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:lapender_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:white_tulip_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:orange_tulip_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:plombean_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:diamahlia_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:cactus_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:aurigold_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:poppy_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:red_mushroom_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:ferranium_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:red_tulip_plant", agri_growth: 1 as byte}),
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:dandelion_plant", agri_growth: 1 as byte}),


            //<agricraft:agri_nugget>,
            //<agricraft:agri_nugget:1>,
            //<agricraft:agri_nugget:2>,
            //<agricraft:agri_nugget:3>,
            //<agricraft:agri_nugget:9>,
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

            <minecraft:bed>,
            <minecraft:bed:1>,
            <minecraft:bed:2>,
            <minecraft:bed:3>,
            <minecraft:bed:4>,
            <minecraft:bed:5>,
            <minecraft:bed:6>,
            <minecraft:bed:7>,
            <minecraft:bed:8>,
            <minecraft:bed:9>,
            <minecraft:bed:10>,
            <minecraft:bed:11>,
            <minecraft:bed:12>,
            <minecraft:bed:13>,
            <minecraft:bed:14>,
            <minecraft:bed:15>,

            <minecraft:obsidian>,
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
            //<minecraft:birch_door>,
            <minecraft:birch_fence>,
            <minecraft:birch_fence_gate>,
            <minecraft:birch_stairs>,
            
            <minecraft:bucket>,
            <minecraft:cauldron>,
            <minecraft:acacia_boat>,
            <minecraft:birch_boat>,
            <minecraft:boat>,
            <minecraft:dark_oak_boat>,
            <minecraft:jungle_boat>,
            <minecraft:spruce_boat>,
            
            //<minecraft:dark_oak_door>,
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
            //<minecraft:jungle_door>,
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
            //<minecraft:spruce_door>,
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
            
            <minecraft:stone_brick_stairs>,
            <minecraft:stone_button>,
            <minecraft:stone_stairs>,
            <minecraft:trapdoor>,
            <minecraft:water_bucket>,
            <minecraft:wooden_button>,
            //<minecraft:wooden_door>,
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

            //tcomplement clay bucket cast
            <tcomplement:cast_clay>,

            <tconstruct:slime:2>,
            <tconstruct:slime:4>,
            <forge:bucketfilled>.withTag({FluidName: "purpleslime", Amount: 1000}), 

    ]

};

static liquids as ILiquidStack [][int] = {   
    1 : [ 
         //TiC
            <liquid:blueslime>,
            <liquid:purpleslime>,
            <liquid:milk>


    ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {<minecraft:stone>:[<geolosys:ore_vanilla:2>,
                           <geolosys:ore_vanilla:5>,
                           
                           <minecraft:iron_ore>,
                           <geolosys:ore:1>,
                           <minecraft:diamond_ore>,
                           <minecraft:gold_ore>],

          <immcraft:rock>:[<geolosys:ore_sample_vanilla:2>,
                           <geolosys:ore_sample_vanilla:5>,
                           
                           <geolosys:ore_sample:1>]},
    2: {}
};




static materials as string [][int] = {
    1:[
        "iron",
        "gold",
        "paper",
        "pigiron",
        "diamond",
        "glass",
        "alubrass",
        "obsidian",

        "blockslime",
        "blueslime",
        "magmaslime",

        //TiC parts
        "hammer",
        "tough",
        "excavator",
        "broad",
        "lumber",
        "crossbow",
        "scythe",
        "bolt",
        "large_sword",
        "cleaver",
        
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