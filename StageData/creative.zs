#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "creative";

static substages as string[int] = {
    1 : "creative"
};

static mods as string[][int] = {
    1 : [
        "customnpcs",
        
        "omlib",
        
    ]
};

static items as IItemStack [][int]  = {
    1: [
       
        //Tconstuct
            <tconstruct:wooden_hopper>,

        //Minecraft
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:bat"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:blaze"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cave_spider"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:creeper"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:donkey"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:elder_guardian"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:enderman"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:endermite"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:evocation_illager"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:ghast"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:guardian"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:horse"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:husk"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:llama"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:magma_cube"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mooshroom"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mule"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:ocelot"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:parrot"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:pig"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:polar_bear"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:rabbit"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:sheep"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:shulker"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:silverfish"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:skeleton"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:skeleton_horse"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:slime"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:spider"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:squid"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:stray"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:vex"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:vindication_illager"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:witch"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:wither_skeleton"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:wolf"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie_horse"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie_pigman"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:zombie_villager"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistportalgreater"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistportallesser"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchwarden"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchgolem"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistleader"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintaclegiant"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:brainyzombie"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:giantbrainyzombie"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:wisp"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:firebat"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:spellbat"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:pech"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:mindspider"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchguardian"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistknight"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:cultistcleric"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:eldritchcrab"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:inhabitedzombie"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:thaumslime"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintcrawler"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintacle"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintswarm"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintseed"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thaumcraft:taintseedprime"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "tconstruct:blueslime"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:withercat"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:concussioncreeper"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:enderminy"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:witherwitch"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:direwolf"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:fallenmount"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:owl"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:lovechild"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:epicsquid"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:fallenknight"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "enderiozoo:direslime"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "primal:ovis_atre"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "primal:canis_campestris"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "primal:bear_brown"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "primal:bear_black"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "primal:creeper_nether"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "primal:gator"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "primal:shark_hammerhead"}}),

            <minecraft:monster_egg>,
            <minecraft:monster_egg:1>,
            <minecraft:monster_egg:2>,
            <minecraft:monster_egg:3>,
            <minecraft:monster_egg:4>,
            <minecraft:monster_egg:5>,
            <minecraft:command_block>,
            <minecraft:repeating_command_block>,
            <minecraft:chain_command_block>,
            <minecraft:structure_void>,
            <minecraft:structure_block>,
            <minecraft:command_block_minecart>,
            <minecraft:mob_spawner>,
            <minecraft:barrier>,
            

       
        
        //Minecolonies Barbarians
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecolonies:barbarian"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecolonies:archerbarbarian"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecolonies:chiefbarbarian"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecolonies:pirate"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecolonies:archerpirate"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecolonies:chiefpirate"}}),
        //Geolosys
            //<geolosys:pro_pick>,
            <geolosys:field_manual>,
            
            <geolosys:cluster:12>,
            
            
            <geolosys:ore_sample:10>,          
            <geolosys:cluster:10>,
            <geolosys:ore:10>,

        //Bountiful
            <bountiful:bountyboarditem>,
            <bountiful:bounty>,
        
        //Immcraft
            <immcraft:dummybook:*>,
            <immcraft:manual>,
            
            <immcraft:chisel>,
            <immcraft:saw>,
            <immcraft:workbench>,
            <immcraft:workbench_sec>,

        //Primal tech
            <primal_tech:work_stump>,
            <primal_tech:work_stump_upgraded>,
            
            <primal_tech:wooden_basin>,
            <primal_tech:rock>,

        //Thermal foundation stuff
            <thermalfoundation:material:656>,
            <thermalfoundation:glass>,
            <thermalfoundation:glass:1>,
            <thermalfoundation:glass:2>,
            <thermalfoundation:glass:3>,
            <thermalfoundation:glass:4>,
            <thermalfoundation:glass:5>,
            <thermalfoundation:glass:6>,
            <thermalfoundation:glass:7>,
            <thermalfoundation:glass:8>,
            <thermalfoundation:glass_alloy>,
            <thermalfoundation:glass_alloy:1>,
            <thermalfoundation:glass_alloy:2>,
            <thermalfoundation:glass_alloy:3>,
            <thermalfoundation:glass_alloy:4>,
            <thermalfoundation:glass_alloy:5>,
            <thermalfoundation:glass_alloy:6>,
            <thermalfoundation:glass_alloy:7>,
            <thermalfoundation:upgrade>,
            <thermalfoundation:upgrade:1>,
            <thermalfoundation:upgrade:2>,
            <thermalfoundation:upgrade:3>,
            <thermalfoundation:upgrade:33>,
            <thermalfoundation:upgrade:34>,
            <thermalfoundation:upgrade:35>,
            <thermalfoundation:upgrade:256>,
            <thermalfoundation:wrench>,
            <thermalfoundation:wrench>,
            <thermalfoundation:meter>,
            <thermalfoundation:security>,
            <thermalfoundation:diagram_redprint>,
            <thermalfoundation:tome_lexicon>,
            <thermalfoundation:tome_experience>.withTag({}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blitz"}}),
            <minecraft:spawn_egg>.withTag({EntityTag: {id: "thermalfoundation:blizz"}}),
            <thermalfoundation:material:640>,
            <thermalfoundation:material:657>,
            <thermalfoundation:coin:*>,

            <thermalfoundation:material:295>,
            <thermalfoundation:material:294>,
            <thermalfoundation:material:293>,
            <thermalfoundation:material:292>,
            <thermalfoundation:material:291>,
            <thermalfoundation:material:290>,
            <thermalfoundation:material:289>,
            <thermalfoundation:material:288>,
            <thermalfoundation:material:264>,
            <thermalfoundation:material:263>,
            <thermalfoundation:material:262>,
            <thermalfoundation:material:261>,
            <thermalfoundation:material:260>,
            <thermalfoundation:material:259>,
            <thermalfoundation:material:258>,
            <thermalfoundation:material:257>,
            <thermalfoundation:material:256>,
            <thermalfoundation:material:512>,
            <thermalfoundation:material:513>,
            <thermalfoundation:material:514>,
            <thermalfoundation:material:515>,
            <thermalfoundation:bait>,
            <thermalfoundation:bait:1>,
            <thermalfoundation:bait:2>,
            <thermalfoundation:material:832>,
            <thermalfoundation:material:833>,
            <thermalfoundation:material:24>,
            <thermalfoundation:material:25>,
            <thermalfoundation:material:26>,
            <thermalfoundation:material:27>,
            //Buckets
            <forge:bucketfilled>.withTag({FluidName: "coal", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "crude_oil", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "refined_oil", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "refined_fuel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "sap", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "syrup", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "resin", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "tree_oil", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "seed_oil", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "biocrude", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "refined_biofuel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "mushroom_stew", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "experience", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "potion_splash", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "potion_lingering", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "pyrotheum", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "cryotheum", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "aerotheum", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "petrotheum", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "mana", Amount: 1000})
            
    ]
};

static liquids as ILiquidStack [][int] = {
  1 : [
        <liquid:coal>,
        <liquid:crude_oil>,
        <liquid:refined_oil>,
        <liquid:refined_fuel>,
        <liquid:sap>,
        <liquid:syrup>,
        <liquid:resin>,
        <liquid:tree_oil>,
        <liquid:seed_oil>,
        <liquid:biocrude>,
        <liquid:refined_biofuel>,
        <liquid:mushroom_stew>,
        <liquid:experience>,
        <liquid:potion_splash>,
        <liquid:potion_lingering>,
        <liquid:pyrotheum>,
        <liquid:cryotheum>,
        <liquid:aerotheum>,
        <liquid:petrotheum>,
        <liquid:mana>
    
  ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1: {},
    2: {}
};

static TiCMat as string [][int] = {
    1:[],
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