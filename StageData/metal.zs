#priority 9400

import scripts.classes.Stage;

import crafttweaker.oredict.IOreDictEntry;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "metal";



static substages as string[int] = {
    1 : "metal_1",
    2 : "metal_2",
    3 : "metal_3",
    4 : "metal_4"
};

static mods as string[][int] = {
    1 : [        
        "comforts",
        "armorunder",
        "horsepower",
        //"primalchests"
    ],
    2 : [],
    3 : [
        "watercan"
    ],
    4 : [
        "tconstruct",
        "dynamictreestconstruct",
        "ironbackpacks",
        "torchbandolier",
        "opframe",
        "agricraft",
        "customsignposts"
    ]
};

static items as IItemStack [][int]  = {
    1 : [
        // Serene seasons
            <sereneseasons:greenhouse_glass>,

        // Simple difficulty
            <simpledifficulty:purified_water_bottle>,
            <simpledifficulty:juice>,
            <simpledifficulty:juice:1>,
            <simpledifficulty:juice:2>,
            <simpledifficulty:juice:3>,
            <simpledifficulty:juice:4>,
            <simpledifficulty:juice:5>,
            <simpledifficulty:juice:6>,
            <simpledifficulty:juice:7>,
            <simpledifficulty:juice:8>,
            <simpledifficulty:juice:9>,
        //DungPipe
            <dungpipe:dung_pipe>,

        //Pyrotech
            <pyrotech:torch_stone>,

            <pyrotech:bellows>,
            <pyrotech:bloomery>,

            <pyrotech:tongs_stone>,
            <pyrotech:tongs_flint>,
            <pyrotech:tongs_bone>,

            <pyrotech:slag>,
            <pyrotech:pile_slag>,

            <pyrotech:material:24>,
            <pyrotech:marshmallow>,
            <pyrotech:marshmallow_roasted>.withTag({}),
            <pyrotech:marshmallow_stick_empty>,
            <pyrotech:marshmallow_burned>,
            <pyrotech:material:32>,
            <pyrotech:stone_tank>,

            <pyrotech:generated_slag_copper>,
            <pyrotech:generated_pile_slag_copper>,
            
            

        //Primal tech
            //<primal_tech:fluid_bladder>,
            
            //<primal_tech:wooden_hopper>,

        //Immersive Craft
            //<immcraft:furnace>,
            

        //Agricraft
           

        //Harvestcraft
            
            <harvestcraft:hardenedleatherchestitem>,
            <harvestcraft:hardenedleatherhelmitem>,
            <harvestcraft:hardenedleatheritem>,
            <harvestcraft:hardenedleatherleggingsitem>,
        
        //Minecraft
            <minecraft:coal:1>,
            <minecraft:glass>,
            <minecraft:torch>,
            <minecraft:name_tag>,
            <minecraft:saddle>,
            <minecraft:stonebrick>,
            <minecraft:stonebrick:1>,
            <minecraft:stonebrick:2>,
            <minecraft:stonebrick:3>,
            <minecraft:brick>,
            <minecraft:brick_block>,
            <minecraft:brick_stairs>,
            
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
            //<minecraft:carrot>,
            
            <minecraft:chorus_flower>,
            <minecraft:chorus_fruit>,
            <minecraft:chorus_fruit_popped>,
            <minecraft:chorus_plant>,
            
            <minecraft:cookie>,
            <minecraft:egg>,
            //<minecraft:fish>,
            //<minecraft:fish:1>,
            //<minecraft:fish:2>,
            //<minecraft:fish:3>,
            <minecraft:golden_apple>,
            <minecraft:golden_apple:1>,
            <minecraft:melon>,
            <minecraft:melon_block>,
            <minecraft:milk_bucket>,
            <minecraft:mushroom_stew>,
            
            <minecraft:poisonous_potato>,
            
            //<minecraft:potato>,
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
            
            <tconstruct:soil>,
            <tconstruct:materials>,
            <tconstruct:seared_tank>,
            <tconstruct:faucet>,

            <tconstruct:wooden_hopper>,

        //TiC stencil tables

            <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 2 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 3 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 4 as short}}),
            <tconstruct:tooltables:1>.withTag({textureBlock: {id: "minecraft:planks", Count: 1 as byte, Damage: 5 as short}}),

        //TiC part builders and part chest

            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 2 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 3 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log2", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "minecraft:log2", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "harvestcraft:pammaple", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "harvestcraft:pampaperbark", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "harvestcraft:pamcinnamon", Count: 1 as byte, Damage: 0 as short}}),
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
            <forge:bucketfilled>.withTag({FluidName: "blood", Amount: 1000}),

        // Dynamic trees
            //<dynamictrees:dirtbucket>




    ],

    2 : [
       <minecraft:wooden_pressure_plate>,
       <minecraft:heavy_weighted_pressure_plate>,
       <minecraft:stone_pressure_plate>,
       <minecraft:light_weighted_pressure_plate>,

       //Pyrotech
            <pyrotech:refractory_door>,
            <pyrotech:refractory_brick_block>,
            <pyrotech:material:4>,
            <pyrotech:material:5>,
            <pyrotech:material:9>,
            <pyrotech:material:35>,
            <pyrotech:igniter:1>,
            <pyrotech:brick_tank>,
            <pyrotech:faucet_brick>,
            <pyrotech:brick_kiln>,
            <pyrotech:brick_oven>,
            <pyrotech:brick_sawmill>,
            <pyrotech:brick_crucible>,
            <pyrotech:tar_collector:1>,
            <pyrotech:tar_drain:1>,
            <pyrotech:refractory_brick_block>,

            <pyrotech:material:8>,
            <pyrotech:material:35>,
            <pyrotech:material:3>,
            <pyrotech:material:22>,
            <pyrotech:material:28>,
            <pyrotech:material:31>,

            <pyrotech:generated_slag_tin>,
            <pyrotech:generated_pile_slag_tin>,           

    ],

    3 : [

            //Pyrotech
                <pyrotech:cog_bone>,
                <pyrotech:cog_flint>,
                <pyrotech:cog_stone>,
                <pyrotech:cog_wood>,
                <pyrotech:mechanical_mulch_spreader>,
                <pyrotech:mechanical_compacting_bin>,
                <pyrotech:mechanical_bellows>,
                <pyrotech:mechanical_hopper>,

             //Tcomplement alloy tank
            <tcomplement:alloy_tank>,

            //Primaltech watersaw
            //<primal_tech:water_saw>,
            //<primal_tech:flint_edged_disc>,


            //Horse powered stuff
            <horsepower:hand_grindstone>,
            <horsepower:press>,
            <horsepower:chopper>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 1 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 2 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "minecraft:log", Count: 1 as byte, Damage: 3 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "minecraft:log2", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "minecraft:log2", Count: 1 as byte, Damage: 1 as short}}),
            //<horsepower:chopper>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "thaumcraft:log_greatwood", Count: 1 as byte, Damage: 0 as short}}),
            //<horsepower:chopper>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "thaumcraft:log_silverwood", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "harvestcraft:pammaple", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "harvestcraft:pampaperbark", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "harvestcraft:pamcinnamon", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "basketcase:log_stripped_oak", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "basketcase:log_stripped_spruce", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "basketcase:log_stripped_birch", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "basketcase:log_stripped_jungle", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "basketcase:log_stripped_acacia", Count: 1 as byte, Damage: 0 as short}}),
            <horsepower:chopper>.withTag({textureBlock: {id: "basketcase:log_stripped_dark_oak", Count: 1 as byte, Damage: 0 as short}}),


            //Minecraft
            <minecraft:chest>
            
            
    ],

    4:[

        //Pyrotech
            <pyrotech:anvil_iron_plated>,
            <pyrotech:bag_durable>,
            <pyrotech:material:25>,

        //Malisisdoors
            <malisisdoors:curtain_white>,
            <malisisdoors:curtain_orange>,
            <malisisdoors:curtain_magenta>,
            <malisisdoors:curtain_light_blue>,
            <malisisdoors:curtain_yellow>,
            <malisisdoors:curtain_lime>,
            <malisisdoors:curtain_pink>,
            <malisisdoors:curtain_gray>,
            <malisisdoors:curtain_silver>,
            <malisisdoors:curtain_cyan>,
            <malisisdoors:curtain_purple>,
            <malisisdoors:curtain_blue>,
            <malisisdoors:curtain_brown>,
            <malisisdoors:curtain_black>,
            <malisisdoors:curtain_red>,
            <malisisdoors:curtain_green>,
            <malisisdoors:saloon>,
            <malisisdoors:trapdoor_acacia>,
            <malisisdoors:trapdoor_birch>,
            <malisisdoors:trapdoor_dark_oak>,
            <malisisdoors:trapdoor_jungle>,
            <malisisdoors:trapdoor_spruce>,
            <malisisdoors:camofencegate>,

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
            
            //<primal_tech:charcoal_hopper>,
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
            //<agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "thaumcraft:plank_greatwood"}),
            <agricraft:grate>.withTag({agri_material_meta: 5, agri_material: "minecraft:planks"}),
            //<agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "thaumcraft:plank_silverwood"}),
            <agricraft:grate>.withTag({agri_material_meta: 4, agri_material: "minecraft:planks"}),
/*             <agricraft:grate>.withTag({agri_material_meta: 3, agri_material: "primal:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 2, agri_material: "primal:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 1, agri_material: "primal:planks"}),
            <agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "primal:planks"}), */
            <agricraft:grate>.withTag({agri_material_meta: 0, agri_material: "advancedrocketry:planks"}),
        //CompactDrawers
            //<compactdrawers:compact_drawer_2by1>.withTag({}),
            //<compactdrawers:compact_drawer_2by1_half>.withTag({}),
            //<compactdrawers:compact_drawer_half>.withTag({}),

        //Minecraft
            <minecraft:crafting_table>,
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
            
            
            
            <minecraft:glass_pane>,
            <minecraft:glass_bottle>,
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
            
            <minecraft:lava_bucket>,
            <minecraft:lever>,
            <minecraft:lit_pumpkin>,
            <minecraft:map>,
            
            <minecraft:oak_stairs>,
            <minecraft:painting>,
            <minecraft:paper>,
            
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
            <tconstruct:tooltables:1>.withTag({textureBlock: {id: "structurize:blockcactusplank", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:nuggets:5>,
            <tconstruct:ingots:5>,
            <tconstruct:metal:5>,
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "basketcase:log_stripped_oak", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "basketcase:log_stripped_spruce", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "basketcase:log_stripped_birch", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "basketcase:log_stripped_jungle", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "basketcase:log_stripped_acacia", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:tooltables:2>.withTag({textureBlock: {id: "basketcase:log_stripped_dark_oak", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 0 as short}}),
            <tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 8 as short}}),
            <tconstruct:toolforge>.withTag({textureBlock: {id: "immersiveengineering:storage", Count: 1 as byte, Damage: 1 as short}}),
            <tconstruct:bolt>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, Accuracy: 1.0 as float, MiningSpeed: 7.07 as float, FreeModifiers: 3, Durability: 111, HarvestLevel: 4, Attack: 4.2 as float}, Special: {Categories: ["no_melee", "projectile", "tool"]}, TinkerData: {Materials: ["wood", "obsidian", "feather"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "ecological", color: -7444965, level: 1}, {identifier: "duritos", color: -10478396, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["ecological", "duritos", "toolleveling"]}),

            //tcomplement clay bucket cast
            <tcomplement:cast_clay>,
            //and brass cast
            <tcomplement:cast>,

            <tconstruct:slime:2>,
            <tconstruct:slime:4>,
            <forge:bucketfilled>.withTag({FluidName: "purpleslime", Amount: 1000}), 
            <naturescompass:naturescompass>.withTag({}),

        //Structurize
            <structurize:blockcactusstair>,
            <structurize:blockcactusfencegate>,
            <structurize:cactusdoor>,
            <structurize:blockcactustrapdoor>,
            <structurize:blockcactusfence>,

        //TE
            <thermalfoundation:material:800>,


        //Pyrotech
            
            <pyrotech:obsidian_axe>,
            <pyrotech:obsidian_hoe>,
            <pyrotech:obsidian_pickaxe>,
            <pyrotech:obsidian_shovel>,
            <pyrotech:obsidian_sword>,

            <pyrotech:sawmill_blade_iron>,
            <pyrotech:sawmill_blade_gold>,
            <pyrotech:sawmill_blade_diamond>,
            <pyrotech:sawmill_blade_obsidian>,
            <pyrotech:cog_iron>,
            <pyrotech:cog_gold>,
            <pyrotech:cog_diamond>,
            <pyrotech:cog_obsidian>,

            <pyrotech:gold_shears>,
            <pyrotech:diamond_shears>,
            <pyrotech:obsidian_shears>,

            <pyrotech:tongs_iron>,
            <pyrotech:tongs_gold>,
            <pyrotech:tongs_diamond>,
            <pyrotech:tongs_obsidian>,

            <pyrotech:iron_hammer>,
            <pyrotech:gold_hammer>,
            <pyrotech:diamond_hammer>,
            <pyrotech:obsidian_hammer>,

            <pyrotech:material:33>,
            <pyrotech:material:34>,
            <pyrotech:material:19>,
            <pyrotech:material:18>,

            <pyrotech:generated_slag_gold>,
            <pyrotech:generated_pile_slag_gold>,
            <pyrotech:generated_slag_iron>,
            <pyrotech:generated_pile_slag_iron>,

        //Simple difficulty
            <simpledifficulty:rain_collector>,
            <simpledifficulty:charcoal_filter>,

        //Armor Underwear
            <armorunder:cooling_goo>,
            <armorunder:cool_liner_material>,
            <armorunder:cool_boots_liner>,
            <armorunder:cool_chestplate_liner>,
            <armorunder:cool_helmet_liner>,
            <armorunder:cool_leggings_liner>,
            <armorunder:liner_snips>
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
        
  ],
  2:[],
  3:[],
  4:[
      //TiC
            <liquid:blueslime>,
            <liquid:purpleslime>,
            <liquid:milk>

  ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {<minecraft:stone>:[<geolosys:ore:2>,
                           <geolosys:ore:3>],
        
        <pyrotech:rock>:[<geolosys:ore_sample:2>,
                         <geolosys:ore_sample:3>]
                           
       },

     
    2: {<minecraft:stone>:[<geolosys:ore:4>,
                           <geolosys:ore:5>
                           ],
        
        <pyrotech:rock>:[<geolosys:ore_sample:4>,
                         <geolosys:ore_sample:5>
                         ]
                           
       },
    3: {<minecraft:stone>:[
            <minecraft:iron_ore>,
            <geolosys:ore:1>,
            <geolosys:ore>
        ],

        <pyrotech:rock>:[
            <geolosys:ore_sample:1>,
            <geolosys:ore_sample>
        ]
            
                        
    },

    4:{
        <minecraft:stone>:[
            <geolosys:ore_vanilla:2>,
            <geolosys:ore_vanilla:5>,
            <minecraft:diamond_ore>,
            <minecraft:gold_ore>
        ],

        <pyrotech:rock>:[
            <geolosys:ore_sample_vanilla:2>,
            <geolosys:ore_sample_vanilla:5>
        ]
                           
                           
    }
};

static materials as string [][int] = {
    1:[
        "wood",
        "charcoal",
        "bone",
        "flint",
        "stone",
        "copper",
        
        "sponge",
        "cactus",
        //"clay",
        "glass",

        
        //TiC patterns and Clay casts
        "pattern",
        "clay_cast"
    ],

    2:[
        "tin",
        "bronze"
    ],
    3:[],
    4:[
        "iron",
        "gold",
        "paper",
        "pigiron",
        "diamond",
        
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
        
    ]
};

static recipes as string [][int] = {
    1 : [
        //"primal_Chest",
        //"primal_ChestAdv",
        //"woodHopper",
        "dough",
        "dough_allwater",
        "tcomplement:melter/melter",
        "COT_woodHopper"
    ],
    2:[
        //"waterSaw"
    ],
    3:[],
    4:[
        "cot_paper"
    ]
};

static recipeCategories as string [][int] = {
    1 : [
        "tconstruct.smeltery",
        "tconstruct.alloy",
        "tconstruct.casting_table",
        "horsepower.grinding",
        //"horsepower.manual_chopping",
        "tcomplement:melter",
        "minecraft.smelting"
    ],
    2:[
        "horsepower.chopping"
    ],

    4:[
        "agricraft.mutation",
        "agricraft.produce"
    ]
};

static mobs as string [][int] = {
    1 : [
        "minecraft:spider"
    ],
    
    4 : [
        "minecraft:skeleton",
        "minecraft:skeleton_horse",
        "minecraft:creeper",
        "minecraft:slime",
        "minecraft:stray"
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