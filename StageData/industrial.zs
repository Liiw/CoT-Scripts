#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "industrial";

static substages as string[int] = {
    1 : "industrial_1",
    
    12: "blastfurnace",
    13: "researchtable",

    14 : "excavator",


    2 : "industrial_2",

    



    100 : "advanced_blastfurnace",
    101 : "advanced_cokeoven"
};

static mods as string[][int] = {
    1 : [
        "immersiverailroading",
        //"thaumicaugmentation",
        //"theoneprobe",
        "mctsmelteryio", 
        "immersiveengineering",
        "weirdinggadget",
        "compactdrawers",
        "storagedrawers",
        "cookingforblockheads",
        

    ],
    13 : [
        "researchtable"
    ],
    2:[
        //"thaumicrestoration",
        "immersive_energy",
        "immersivepetroleum",
        "immersiveposts",
        "mts",
        "mtsofficialpack",
        "alternatingflux",
        "rsgauges",
        "buildinggadgets",
        "dse",
        "nhc",
        "ompd",
        "immersivetech",
        "randallag",
        "spitfirepack",
        "betterrecords"
    ],

    
};

static items as IItemStack [][int] = {
    1 : [

        //Malisisdoors
            <malisisdoors:jail_door>,
            <malisisdoors:factory_door>,
            <malisisdoors:shoji_door>,
        
        //Geolosys clusters
            <geolosys:cluster:6>,
            <geolosys:cluster:7>,
            <geolosys:coal_coke:1>,
            <geolosys:coal_coke>,

        //Agricraft
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:jaslumine_plant", agri_growth: 1 as byte}),
            //<agricraft:agri_nugget:8>,
            //<agricraft:agri_nugget:10>,
            //<agricraft:agri_nugget:11>,
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:niccissus_plant", agri_growth: 1 as byte}),

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
            <forge:bucketfilled>.withTag({FluidName: "constantan", Amount: 1000}),
        //TE plates and rockwool
            <thermalfoundation:material:33>,
            <thermalfoundation:material:32>,
            <thermalfoundation:material:320>,
            <thermalfoundation:material:321>,
            <thermalfoundation:material:322>,
            <thermalfoundation:material:323>,
            <thermalfoundation:material:324>,
            <thermalfoundation:material:325>,
            <thermalfoundation:material:326>,
            <thermalfoundation:material:327>,
            <thermalfoundation:material:328>,
            <thermalfoundation:material:352>,
            <thermalfoundation:material:353>,
            <thermalfoundation:material:354>,
            <thermalfoundation:material:355>,
            <thermalfoundation:material:356>,
            <thermalfoundation:material:357>,
            <thermalfoundation:material:358>,
            <thermalfoundation:material:359>,

            <thermalfoundation:rockwool>,
            <thermalfoundation:rockwool:1>,
            <thermalfoundation:rockwool:2>,
            <thermalfoundation:rockwool:3>,
            <thermalfoundation:rockwool:4>,
            <thermalfoundation:rockwool:5>,
            <thermalfoundation:rockwool:6>,
            <thermalfoundation:rockwool:7>,
            <thermalfoundation:rockwool:8>,
            <thermalfoundation:rockwool:9>,
            <thermalfoundation:rockwool:10>,
            <thermalfoundation:rockwool:11>,
            <thermalfoundation:rockwool:12>,
            <thermalfoundation:rockwool:13>,
            <thermalfoundation:rockwool:14>,
            <thermalfoundation:rockwool:15>,

            <thermalfoundation:material:864>,

        //The One Probe
            //<theoneprobe:diamond_helmet_probe>.withTag({theoneprobe: 1}),
            //<theoneprobe:gold_helmet_probe>.withTag({theoneprobe: 1}),
            //<theoneprobe:iron_helmet_probe>.withTag({theoneprobe: 1}),
        //The One Probe
            //<theoneprobe:probe_goggles>,
        //Coke
            <thermalfoundation:material:802>,

        //HorseArmor
            <thermalfoundation:horse_armor_aluminum>,
            <thermalfoundation:horse_armor_nickel>,
            <thermalfoundation:horse_armor_electrum>,
            <thermalfoundation:horse_armor_invar>,
            <thermalfoundation:horse_armor_constantan>,

        //fancy item frame
            <tconstruct:fancy_frame:3>

        
        
    ],

    2 : [

        //MoarBoats
            /*<moarboats:boat_battery>,
            <moarboats:boat_energy_charger>,
            <moarboats:boat_energy_discharger>,
            <moarboats:helm>,
            <moarboats:boat_fluid_loader>,
            <moarboats:boat_fluid_unloader>,
            <moarboats:boat_tank>,*/

        //MALISISDOORS
            <malisisdoors:rustyhatch>,
            <malisisdoors:rustyhandle>,
            <malisisdoors:rustyladder>,
        //Minecraft
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
            <minecraft:chorus_flower>,
            <minecraft:chorus_plant>,
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
            <minecraft:ender_eye>,

        
        //Immersive Petroleum Buckets and shaders
            <forge:bucketfilled>.withTag({FluidName: "oil", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "diesel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "lubricant", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "gasoline", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "napalm", Amount: 1000}),
        //Thaumic restoration buckets
        /*
            <forge:bucketfilled>.withTag({FluidName: "fluid_molten_aer", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "fluid_molten_ignis", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "fluid_molten_aqua", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "fluid_molten_terra", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "fluid_molten_ordo", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "fluid_molten_perditio", Amount: 1000}),
            */
        //Fancy item frames
            <tconstruct:fancy_frame:4>,
            
            <tconstruct:fancy_frame:2>
    ],

    12 : [
        <immersiveengineering:stone_decoration:1>,
        <immersiveengineering:stone_decoration_slab:1>

    ],

    14 : [
        //<immersiveengineering:coresample>,
        //<immersiveengineering:metal_device1:7>
    ],


     100 : [
        
        <immersiveengineering:stone_decoration:2>,
        <immersiveengineering:stone_decoration_slab:2>,
        <immersiveengineering:metal_device1>

    ],

    101 : [
        <immersivetech:metal_device>,
        <immersivetech:stone_decoration>
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
        <liquid:constantan>,
    
    ],

    2 : [    
    //IP liquids
        <liquid:oil>,
        <liquid:diesel>,
        <liquid:lubricant>,
        <liquid:gasoline>,
        <liquid:napalm>,

    //Thaumic restoration liquids
    /*
        <liquid:fluid_molten_aer>,
        <liquid:fluid_molten_ignis>,
        <liquid:fluid_molten_aqua>,
        <liquid:fluid_molten_terra>,
        <liquid:fluid_molten_ordo>,
        <liquid:fluid_molten_perditio>
        */
    ]


   
    
};

            //<geolosys:ore_sample:10>,          
            //<geolosys:cluster:10>,
            

static ores as IIngredient[][IItemStack][int] = 
{
    1: {<minecraft:stone>:
        [
            <geolosys:ore:7>,
            <geolosys:ore:10>
        ],

        <immcraft:rock>:
        [
            <geolosys:ore_sample:7>,
            <geolosys:ore_sample:10>
        ],

        <minecraft:netherrack> : [
            <tconstruct:ore:1>
        ]

    },
    2: {
        <minecraft:netherrack> : [
            <tconstruct:ore>
        ],

        <minecraft:stone> : [
            <immersive_energy:ore:0>,
            <immersive_energy:ore:1>

        ]
    }
};


static materials as string [][int] = {
    1:[
        "ardite",
        "electrum",
        "aluminum",
        "aluminium",
        "nickel",
        "constantan",
        "invar",
        "coke",
        //ALL THE PLATES BEFORE THIS STAGE (CUZ STAGES LOOP CHRONOLOGICALLY)
        "oreplate",

        "sheetmetal"
        
        
        
    ],

    2:[
        "endstone",
        "cobalt",
        "manyullyn",
        
        "tungsten",
        "thorium",

        //Thaumcraft TiC
        /*
        "perditio_thaumium",
        "ordo_thaumium",
        "terra_thaumium",
        "aqua_thaumium",
        "ignis_thaumium",
        "aer_thaumium"
        */
    ]
};

static recipes as string [][int] = {
    1 : [
        "conc_slab",
        "CoT_conc"
        
    ],
    2 : [],

    13 : ["researchTable"]
};

static recipeCategories as string [][int] = {
    1 : [
        "ie.cokeoven",
        "ie.alloysmelter",
        "ie.blastfurnace",
        "ie.blastfurnace.fuel",
        "ie.metalPress",
        "ie.crusher",
        "ie.workbench",
        "ie.squeezer",
        "ie.fermenter",
        "ie.refinery",
        "ie.arcFurnace",
        "ie.arcFurnace.recycling",
        "ie.bottlingMachine",
        "ie.mixer",
        "mctsmelteryio:casting_machine",
        "mctsmelteryio:fuel_controller"
    ],
    2:[
        "it.distiller",
        "it.boiler",
        "it.solarTower",
        "immersivepetroleum.distillation"
    ]
};

static mobs as string [][int] = {
    1 : [
        "minecraft:silverfish",

        //TE 
        "thermalfoundation:basalz",
        "thermalfoundation:blitz",
        "thermalfoundation:blizz"
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