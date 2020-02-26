#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "information";

static substages as string[int] = {
    1 : "information_1",
    2 : "information_2"
};

static mods as string[][int] = {
    1 : [
        "trafficcontrol",
        "btcivil",   
        "unuparts",
        "projectred-core",
        "projectred-core",
        "projectred-compat",
        "projectred-integration",
        "projectred-transmission",
        "projectred-fabrication",
        "projectred-illumination",
        "bigreactors"
        
        
        
    ],
    2:[
        "openmodularturrets",
        "opensecurity",
        "extracells",
        "enderio",
        "opencomputers",
        "appliedenergistics2",
        "thaumicenergistics",
        "ae2stuff",  
        "enderiointegrationtic",
        "opencomputers",
        "ocsensors",
        "openscreens",   
        "immersivecables",
        "rftools"
    ]
};

static items as IItemStack [][int]  = {
  1 : [
    //PR electrotine
      <projectred-core:resource_item:104>,
    //Geolysys ore clusters
      <geolosys:cluster:11>,
      <geolosys:cluster:9>,

    //Open modular passive defence
      <ompd:fence:3>,
      <ompd:hardened:3>,
      <ompd:wall:3>,
    //Openglider
      <openglider:hang_glider_advanced>,
    
    //Extreme Reactors
      <forge:bucketfilled>.withTag({FluidName: "yellorium", Amount: 1000}),
      <forge:bucketfilled>.withTag({FluidName: "cyanite", Amount: 1000}),
      <forge:bucketfilled>.withTag({FluidName: "dist_water", Amount: 1000}),
      <forge:bucketfilled>.withTag({FluidName: "steam", Amount: 1000}),

      <bigreactors:ingotsteel>,
      <bigreactors:dustcyanite>,
      <bigreactors:dustgraphite>,
      <bigreactors:dustblutonium>,
      <bigreactors:dustludicrite>,
      <bigreactors:duststeel>,
    //IE
      <immersiveengineering:storage_slab:5>
  ],

  2 : [
        //Geolysys clusters
            <geolosys:cluster:8>,
        //Thaumcomp
            <thaumcomp:sealconnector>,
        //Minecraft bedrock
            <minecraft:bedrock>,
        //Agricraft
            <agricraft:peripheral>,
            <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:platiolus_plant", agri_growth: 1 as byte}),
        //AE2
            <appliedenergistics2:material:46>,
        //EnderIO
            //buckets
            <forge:bucketfilled>.withTag({FluidName: "nutrient_distillation", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "ender_distillation", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "vapor_of_levity", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "hootch", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "rocket_fuel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "fire_water", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "xpjuice", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "liquid_sunshine", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "cloud_seed", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "cloud_seed_concentrated", Amount: 1000}),
            //ench-books (id-s might change for some reason)
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 2 as short, id: 24 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 3 as short, id: 24 as short}]}),
            <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 4 as short, id: 24 as short}]}),
            //Some soul vial thing
            <enderio:item_soul_vial:1>.withTag({entityId: "minecraft:pig", customName: "Bacon in a Bottle"}),
            //idk
            <enderio:item_material:63>,
            <enderio:item_material:21>,
            <enderio:item_material:23>,
            <enderio:item_material:24>,
            <enderio:item_material:25>,
            <enderio:item_material:29>,
            <enderio:item_material:32>,
            <enderio:item_material:33>,
            <enderio:item_material:61>,
        //EIO_TiC
            <forge:bucketfilled>.withTag({FluidName: "glowstone", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "redstone", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "ender", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "electrical_steel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "energetic_alloy", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "vibrant_alloy", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "redstone_alloy", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "conductive_iron", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "pulsating_iron", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "dark_steel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "soularium", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "end_steel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "construction_alloy", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "crude_steel", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "crystalline_alloy", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "melodic_alloy", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "stellar_alloy", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "crystalline_pink_slime", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "energetic_silver", Amount: 1000}),
            <forge:bucketfilled>.withTag({FluidName: "vivid_alloy", Amount: 1000}),
        //OC RS card and Disks
            <opencomputers:card:5>,
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "plan9k"}, "oc:color": 1, display: {Name: "Plan9k (Operating System)"}, "oc:lootFactory": "opencomputers:plan9k"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "network"}, "oc:color": 10, display: {Name: "Network (Network Stack)"}, "oc:lootFactory": "opencomputers:network"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "openos"}, "oc:color": 2, display: {Name: "OpenOS (Operating System)"}, "oc:lootFactory": "opencomputers:openos"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "data"}, "oc:color": 9, display: {Name: "Data Card Software"}, "oc:lootFactory": "opencomputers:data"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "openloader"}, "oc:color": 13, display: {Name: "OpenLoader (Boot Loader)"}, "oc:lootFactory": "opencomputers:openloader"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "builder"}, "oc:color": 11, display: {Name: "Builder"}, "oc:lootFactory": "opencomputers:builder"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "generator"}, "oc:color": 5, display: {Name: "Generator Upgrade Software"}, "oc:lootFactory": "opencomputers:generator"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "oppm"}, "oc:color": 6, display: {Name: "OPPM (Package Manager)"}, "oc:lootFactory": "opencomputers:oppm"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "dig"}, "oc:color": 3, display: {Name: "Digger"}, "oc:lootFactory": "opencomputers:dig"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "maze"}, "oc:color": 14, display: {Name: "Mazer"}, "oc:lootFactory": "opencomputers:maze"}),
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "irc"}, "oc:color": 12, display: {Name: "OpenIRC (IRC Client)"}, "oc:lootFactory": "opencomputers:irc"}),
        //TE stuff
            <thermalfoundation:material:22>,
            <thermalfoundation:material:23>,
            //Buckets
            <forge:bucketfilled>.withTag({FluidName: "enderium", Amount: 1000}),

        //horsearmor
            <thermalfoundation:horse_armor_platinum>,
        //EIO glass
            <enderio:block_fused_quartz:*>,
            <enderio:block_fused_glass:*>,

        //TiC
            <conarm:armorforge>.withTag({textureBlock: {ForgeCaps: {"customnpcs:itemscripteddata": {}}, id: "thermalfoundation:storage_alloy", Count: 1 as byte, Damage: 7 as short}})

            
            
    ]


};

static liquids as ILiquidStack [][int] = {
  1 : [
    //Extrene Reactors
      <liquid:yellorium>,
      <liquid:cyanite>,
      <liquid:fuelcolumn>,
      <liquid:dist_water>,
      <liquid:steam>
  ],

  2:[   
    //EIO
        <liquid:nutrient_distillation>,
        <liquid:ender_distillation>,
        <liquid:vapor_of_levity>,
        <liquid:hootch>,
        <liquid:rocket_fuel>,
        <liquid:fire_water>,
        <liquid:xpjuice>,
        <liquid:liquid_sunshine>,
        <liquid:cloud_seed>,
        <liquid:cloud_seed_concentrated>,
    //EIO-TiC
        <liquid:glowstone>,
        <liquid:redstone>,
        <liquid:ender>,
        <liquid:electrical_steel>,
        <liquid:energetic_alloy>,
        <liquid:vibrant_alloy>,
        <liquid:redstone_alloy>,
        <liquid:conductive_iron>,
        <liquid:pulsating_iron>,
        <liquid:dark_steel>,
        <liquid:soularium>,
        <liquid:end_steel>,
        <liquid:construction_alloy>,
        <liquid:crude_steel>,
        <liquid:crystalline_alloy>,
        <liquid:melodic_alloy>,
        <liquid:stellar_alloy>,
        <liquid:crystalline_pink_slime>,
        <liquid:energetic_silver>,
        <liquid:vivid_alloy>,
    //TE
        <liquid:enderium>
    ]
};

static ores as IIngredient[][IItemStack][int] = 
{
    1 : {<minecraft:stone>:[<geolosys:ore:9>],
    
         <immcraft:rock>:[<geolosys:ore_sample:9>]
    },
    2 : {<minecraft:stone>:[<geolosys:ore:8>],

    
         <immcraft:rock>:[<geolosys:ore_sample:8>]}
};


static materials as string [][int] = {
    1:[
        "enderium",
        //"yellorium",
        "uranium"
    ],
    2:[
        "electrical_steel",
        "electricalsteel",
        "energetic_alloy",
        "energeticsilver",
        "vibrant_alloy",
        "redstone_alloy",
        "redstonealloy",
        "conductive_iron",
        "pulsating_iron",
        "dark_steel",
        "darksteel",
        "soularium",
        "construction_alloy",
        "end_steel",
        "endsteel",
        "platinum",
        "pulsatingiron",
        "conductiveiron",
        "certusquartz",
        "darksteel",
        "bedrock",
        "crudesteel",
    ],
    3:[]
};

static recipes as string [][int] = {
    1 : [
        
    ],

    2 : []
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