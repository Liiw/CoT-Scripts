#priority 9400

import scripts.classes.Stage;

import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "early_metal";



static substages as string[int] = {
    1 : "early_metal_1"
};

static mods as string[][int] = {
    1 : [        
        "comforts",
        "astikorcarts" ,
        "horsepower",
        "primalchests"
    ]
};

static items as IItemStack [][int]  = {
    1 : [
        
        //DungPipe
            <dungpipe:dung_pipe>,

        //METAL ITEMS
            //copper
            <thermalfoundation:material:128>,
            <immersiveengineering:metal>,
            <projectred-core:resource_item:100>,
            //tin
            <thermalfoundation:material:129>,
            <projectred-core:resource_item:101>,
            //bronze
            <thermalfoundation:material:163>,

        //ORE ITEMS
            //copper
            <thermalfoundation:ore>,
            <immersiveengineering:ore>,
            <geolosys:cluster:2>,
            //tin
            <thermalfoundation:ore:1>,
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
            <minecraft:furnace>,
            <minecraft:wooden_door>,
            <minecraft:spruce_door>,
            <minecraft:birch_door>,
            <minecraft:jungle_door>,
            <minecraft:dark_oak_door>,

           
            <minecraft:beetroot_seeds>,
            <minecraft:farmland>,
            <minecraft:melon_seeds>,
            <minecraft:pumpkin_seeds>,
            <minecraft:sapling>,
            <minecraft:sapling:1>,
            <minecraft:sapling:2>,
            <minecraft:sapling:3>,
            <minecraft:sapling:4>,
            <minecraft:sapling:5>,
            <minecraft:wheat_seeds>,

            //FOOD
            //Minecraft
            <minecraft:baked_potato>,
            <minecraft:beetroot_soup>,
            <minecraft:bread>,
            <minecraft:cake>,
            <minecraft:carrot>,
            <minecraft:chicken>,
            <minecraft:chorus_flower>,
            <minecraft:chorus_fruit>,
            <minecraft:chorus_fruit_popped>,
            <minecraft:chorus_plant>,
            <minecraft:cooked_beef>,
            <minecraft:cooked_chicken>,
            <minecraft:cooked_cod>,
            <minecraft:cooked_fish>,
            <minecraft:cooked_fish:1>,
            <minecraft:cooked_mutton>,
            <minecraft:cooked_porkchop>,
            <minecraft:cooked_rabbit>,
            <minecraft:cooked_salmon>,
            <minecraft:cookie>,
            <minecraft:egg>,
            <minecraft:fish>,
            <minecraft:fish:1>,
            <minecraft:fish:2>,
            <minecraft:fish:3>,
            <minecraft:golden_apple>,
            <minecraft:golden_apple:1>,
            <minecraft:melon>,
            <minecraft:melon_block>,
            <minecraft:milk_bucket>,
            <minecraft:mushroom_stew>,
            <minecraft:mutton>,
            <minecraft:poisonous_potato>,
            <minecraft:porkchop>,
            <minecraft:potato>,
            <minecraft:pufferfish>,
            <minecraft:pumpkin>,
            <minecraft:pumpkin_pie>,
            <minecraft:rabbit>,
            <minecraft:rabbit_foot>,
            <minecraft:rabbit_stew>,
            <minecraft:red_mushroom>,
            <minecraft:red_mushroom_block>,
            <minecraft:reeds>,
            <minecraft:rotten_flesh>,
            <minecraft:salmon>,
            <minecraft:speckled_melon>,
            <minecraft:spider_eye>,
            <minecraft:sugar>,
            <minecraft:wheat>,

        //OMPD
            <ompd:hardened>,

        //Tinkers complement + some TiC stuff

            <tcomplement:melter:8>,
            <tcomplement:melter>,
            <tcomplement:alloy_tank>,
            <tconstruct:soil>,
            <tconstruct:materials>,
            <tconstruct:seared_tank>,
            <tconstruct:faucet>,

        //TiC stencil tables

            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:planks", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:planks", Count: 1 as byte, Damage: 2 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:planks", Count: 1 as byte, Damage: 3 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:planks", Count: 1 as byte, Damage: 4 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:planks", Count: 1 as byte, Damage: 5 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "thaumcraft:plank_greatwood", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "thaumcraft:plank_silverwood", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "structurize:blockcactusplank", Count: 1 as byte, Damage: 0 as short}}),

        //TiC part builders and part chest

            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 2 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log", Count: 1 as byte, Damage: 3 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log2", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "minecraft:log2", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "thaumcraft:log_greatwood", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "thaumcraft:log_silverwood", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "harvestcraft:pammaple", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "harvestcraft:pampaperbark", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "harvestcraft:pamcinnamon", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_oak", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_spruce", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_birch", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_jungle", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_acacia", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "basketcase:log_stripped_dark_oak", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:5>,
            <tconstruct:tooltables:4>,

        //TiC toolstation

            <tconstruct:tooltables:3>,
            <tconstruct:casting>,

        //TiC stencils and clay casts (and tcomplement bucket and cast)

            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sword_blade"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:sword_blade"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:cross_guard"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:binding"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:hand_guard"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:axe_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:pick_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:shovel_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:tool_rod"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pick_head"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:binding"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:kama_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:wide_guard"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:cross_guard"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:hand_guard"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:wide_guard"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:pan_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:pan_head"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:sign_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:sign_head"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_limb"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:bow_string"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:bow_string"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:bow_limb"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:arrow_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:arrow_head"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:arrow_shaft"}),
            <tconstruct:pattern>.withTag({PartType: "tconstruct:fletching"}),
            <tcomplement:cast_clay>,
            <tcomplement:materials>,
            <tconstruct:pattern>,
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:axe_head"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:shovel_head"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:tool_rod"}),
            <tconstruct:clay_cast>.withTag({PartType: "tconstruct:kama_head"}),
            
        //Buckets

            <forge:bucketfilled>.withTag({FluidName: "clay", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "dirt", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000})




    ]

};

static liquids as ILiquidStack [][int] = {
  1 : [
        //Minecraft
            
            <liquid:lava>,

        //TiC
            <liquid:clay>,
            <liquid:dirt>,
            <liquid:blood>
        
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

static materials as string [][int] = {
    1:[
        "wood",
        "bone",
        "flint",
        "stone",
        "copper",
        "tin",
        "bronze",
        "sponge",
        "cactus",
        "clay",
        "fishcooked",
        "meatcooked",

        
        //TiC patterns and Clay casts
        "pattern",
        "clay_cast"
    ],

    2:[],
    3:[]
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
    materials,
    recipes

);