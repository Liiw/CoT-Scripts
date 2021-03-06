#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;


static name as string = "stone";

static substages as string[int] = {
    1 : "stone_1",
    2 : "stone_2",
    3 : "stone_3",
    4 : "stone_4",

    11 : "stone_fire"
};

static mods as string[][int] = {
    1 : [
        //"basketcase",
    ],
    2 : [
        //"immcraft",
        //"primal_tech"
    ],
    3 : [],
    4 : []
};

static items as IItemStack[][int] = {
    1 : [   
        //Pyrotech ROCK NADA
            <pyrotech:rock>,

        //Harvestcraft    
            <harvestcraft:pamcinnamon>,
            <harvestcraft:pammaple>,
            <harvestcraft:pampaperbark>,
            //<thaumcraft:log_greatwood>,
            //<thaumcraft:log_silverwood>,
        //Minecraft
            <minecraft:gravel>,
            <minecraft:stick>,
            <minecraft:flint>,
            
            <minecraft:wooden_axe>,
            
            <minecraft:wooden_pickaxe>,
            <minecraft:wooden_shovel>,
            <minecraft:wooden_sword>,

            <minecraft:log>,
            <minecraft:log:1>,
            <minecraft:log:2>,
            <minecraft:log:3>,
            <minecraft:log2>,
            <minecraft:log2:1>,
            <minecraft:planks>,
            <minecraft:planks:1>,
            <minecraft:planks:2>,
            <minecraft:planks:3>,
            <minecraft:planks:4>,
            <minecraft:planks:5>,
            <minecraft:grass>,

            <minecraft:dirt>,
            <minecraft:dirt:1>,
            <minecraft:dirt:2>,
            <minecraft:grass>,
       
            
        //Struxturize
            <structurize:blockcactusplank>
    ],

    2 : [  
        

        //Minecraft
            <minecraft:ladder>,
            <minecraft:apple>,
            <minecraft:beef>,
            <minecraft:beetroot>,
            <minecraft:bone>,
            <minecraft:bone_block>,
            <minecraft:bowl>,
            <minecraft:brown_mushroom>,
            <minecraft:brown_mushroom_block>,
            <minecraft:cactus>,
            <minecraft:clay>,
            <minecraft:clay_ball>,
            <minecraft:clownfish>,

            <minecraft:coal_block>,
            


            <minecraft:cobblestone>,
            <minecraft:cobblestone_wall>,
            <minecraft:cobblestone_wall:1>,
            <minecraft:cod>,
            <minecraft:concrete>,
            <minecraft:concrete:1>,
            <minecraft:concrete:2>,
            <minecraft:concrete:3>,
            <minecraft:concrete:4>,
            <minecraft:concrete:5>,
            <minecraft:concrete:6>,
            <minecraft:concrete:7>,
            <minecraft:concrete:8>,
            <minecraft:concrete:9>,
            <minecraft:concrete:10>,
            <minecraft:concrete:11>,
            <minecraft:concrete:12>,
            <minecraft:concrete:13>,
            <minecraft:concrete:14>,
            <minecraft:concrete:15>,
            <minecraft:deadbush>,
            
            <minecraft:double_plant>,
            <minecraft:double_plant:1>,
            <minecraft:double_plant:2>,
            <minecraft:double_plant:3>,
            <minecraft:double_plant:4>,
            <minecraft:double_plant:5>,
            <minecraft:dye>,
            <minecraft:dye:1>,
            <minecraft:dye:2>,
            <minecraft:dye:3>,
            
            <minecraft:dye:5>,
            <minecraft:dye:6>,
            <minecraft:dye:7>,
            <minecraft:dye:8>,
            <minecraft:dye:9>,
            <minecraft:dye:10>,
            <minecraft:dye:11>,
            <minecraft:dye:12>,
            <minecraft:dye:13>,
            <minecraft:dye:14>,
            <minecraft:dye:15>,
            <minecraft:feather>,
            <minecraft:fishing_rod>,
            
            <minecraft:flower_pot>,
            
            <minecraft:grass_path>,
            
            <minecraft:hardened_clay>,
            <minecraft:hay_block>,
            <minecraft:ice>,
            
           
            <minecraft:lead>,
            <minecraft:leather>,
            <minecraft:leather_boots>,
            <minecraft:leather_chestplate>,
            <minecraft:leather_helmet>,
            <minecraft:leather_leggings>,
            <minecraft:leaves>,
            <minecraft:leaves:1>,
            <minecraft:leaves:2>,
            <minecraft:leaves:3>,
            <minecraft:leaves2>,
            <minecraft:leaves2:1>,
            
            <minecraft:mossy_cobblestone>,
            <minecraft:mycelium>,
            <minecraft:packed_ice>,
            
            <minecraft:rabbit_hide>,
            <minecraft:red_flower>,
            <minecraft:red_flower:1>,
            <minecraft:red_flower:2>,
            <minecraft:red_flower:3>,
            <minecraft:red_flower:4>,
            <minecraft:red_flower:5>,
            <minecraft:red_flower:6>,
            <minecraft:red_flower:7>,
            <minecraft:red_flower:8>,
            <minecraft:red_sandstone>,
            <minecraft:red_sandstone:1>,
            <minecraft:red_sandstone:2>,
            <minecraft:red_sandstone_stairs>,
            <minecraft:sand>,
            <minecraft:sand:1>,
            <minecraft:sandstone>,
            <minecraft:sandstone:1>,
            <minecraft:sandstone:2>,
            <minecraft:skull>,
            <minecraft:skull:1>,
            <minecraft:skull:2>,
            <minecraft:skull:3>,
            <minecraft:skull:4>,
            <minecraft:skull:5>,
            <minecraft:slime>,
            <minecraft:slime_ball>,
            <minecraft:snow>,
            <minecraft:snow_layer>,
            <minecraft:snowball>,
            <minecraft:sponge>,
            <minecraft:sponge:1>,
            <minecraft:stained_hardened_clay>,
            <minecraft:stained_hardened_clay:1>,
            <minecraft:stained_hardened_clay:2>,
            <minecraft:stained_hardened_clay:3>,
            <minecraft:stained_hardened_clay:4>,
            <minecraft:stained_hardened_clay:5>,
            <minecraft:stained_hardened_clay:6>,
            <minecraft:stained_hardened_clay:7>,
            <minecraft:stained_hardened_clay:8>,
            <minecraft:stained_hardened_clay:9>,
            <minecraft:stained_hardened_clay:10>,
            <minecraft:stained_hardened_clay:11>,
            <minecraft:stained_hardened_clay:12>,
            <minecraft:stained_hardened_clay:13>,
            <minecraft:stained_hardened_clay:14>,
            <minecraft:stained_hardened_clay:15>,
            
            <minecraft:stone>,
            <minecraft:stone:1>,
            <minecraft:stone:2>,
            <minecraft:stone:3>,
            <minecraft:stone:4>,
            <minecraft:stone:5>,
            <minecraft:stone:6>,
            <minecraft:stone_axe>,
            <minecraft:stone_hoe>,
            <minecraft:wooden_hoe>,
            <minecraft:stone_pickaxe>,
            <minecraft:stone_shovel>,
            <minecraft:stone_slab>,
            <minecraft:stone_slab:1>,
            <minecraft:stone_slab:3>,
            <minecraft:stone_slab:4>,
            <minecraft:stone_slab:5>,
            <minecraft:stone_slab:6>,
            <minecraft:stone_slab:7>,
            <minecraft:stone_slab2>,
            <minecraft:stone_sword>,
            <minecraft:string>,
            <minecraft:tallgrass:1>,
            <minecraft:tallgrass:2>,
            
            <minecraft:totem_of_undying>,
            <minecraft:vine>,
            <minecraft:waterlily>,
            <minecraft:web>,
            
            <minecraft:wooden_slab>,
            <minecraft:wooden_slab:1>,
            <minecraft:wooden_slab:2>,
            <minecraft:wooden_slab:3>,
            <minecraft:wooden_slab:4>,
            <minecraft:wooden_slab:5>,
            
            <minecraft:wool>,
            <minecraft:wool:1>,
            <minecraft:wool:2>,
            <minecraft:wool:3>,
            <minecraft:wool:4>,
            <minecraft:wool:5>,
            <minecraft:wool:6>,
            <minecraft:wool:7>,
            <minecraft:wool:8>,
            <minecraft:wool:9>,
            <minecraft:wool:10>,
            <minecraft:wool:11>,
            <minecraft:wool:12>,
            <minecraft:wool:13>,
            <minecraft:wool:14>,
            <minecraft:wool:15>,
            <minecraft:yellow_flower>,
        
        //PrimalTech
            //<primal_tech:stone_anvil>,

        //Chisel       
            <chisel:marble2:7>,
            <chisel:basalt2:7>,
            <chisel:limestone2:7>,
        //Harvestcraft gardens

            <harvestcraft:frostgarden>,
            <harvestcraft:shadedgarden>,
            <harvestcraft:soggygarden>,
            <harvestcraft:tropicalgarden>,
            <harvestcraft:windygarden>,
            <harvestcraft:aridgarden>,

        //Themal foundation dyes
            <thermalfoundation:dye:*>,
            
        //Structurize
            <structurize:blockcactusslab_half>

        

    ],

    3 : [

        //Geolosys clusters
            <geolosys:coal:3>,
            <geolosys:coal:2>,
            <geolosys:coal:1>,
            <geolosys:coal>,

            

        //Minecraft
            <minecraft:lapis_block>,
            <minecraft:dye:4>,
            //<minecraft:coal>,
            //<minecraft:coal:1>

        



    ],
    
    4 : [],

    11: [//<primal_tech:stone_grill>
    ] 
};

static liquids as ILiquidStack[][int] = {   
    1 : [ 
        
    ],
    2 : [ 
       
    ],  
    3 : [
        
    ],
    4 : [] 

};



static ores as IIngredient[][IItemStack][int] = 
{
    1: {},
    2: {},
    3: {
            <minecraft:stone>:[<geolosys:ore_vanilla>,
                               <minecraft:lapis_ore>,
                               <geolosys:ore_vanilla:3>,
                               
                               <minecraft:coal_ore>],

            <pyrotech:rock>:[<geolosys:ore_sample_vanilla:0>,
                             <geolosys:ore_sample_vanilla:3>,],

            
    },
    4 : {}
};


static materials as string [][int] = {
    1:[
        "fishraw",
        "meatraw",
        
        "veggie",
        "greenveggie",
        "cropavocado",
        "grain",
        "fiber",
        "berry",
        "fruit",
        "herb",
        "croptea",
        "mushroom",
        "nut"
    ],
    2:[
        "coal",
        
    ],
    3:[],
    4 : ["fishcooked",
        "meatcooked"] 
};

static recipes as string [][int] = {
    1 : [
        //"stickfromtwigs",
        //"stoneaxe",
        "flint"
    ],
    2 : [ 
        /* "stoneClub",
        "stoneAxe",
        "stonePick",
        "stoneShovel",
        "stoneSword",
        "clayKiln",
        "boneShard",
        "strawbed" */
    ], 
    3 : [],
    4 : [] 
};

static recipeCategories as string [][int] = {
    1 : [
        "minecraft.crafting"
    ],
    2: [
        //"primal_tech.clay_kiln_recipes"
    ],

    11:[
        //"primal_tech.stone_grill_recipes",
        //"primal_tech.stone_anvil_recipes"
    ]
};

static mobs as string [][int] = {
    11 : [
        "minecraft:zombie"
    ],

    3 : [
        "minecraft:husk"
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
