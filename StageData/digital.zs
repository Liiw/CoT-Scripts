#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;


static name as string = "digital";

static substages as string[int] = {
    1 : "digital_1"
};

static mods as string[][int] = {
    1 : [
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
        "immersivecables"
    ]
};

static items as IItemStack [][int]  = {
    1 : [
  
        //Thaumcomp
            <thaumcomp:sealconnector>,
        //Minecraft bedrock
            <minecraft:bedrock>,
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
            <opencomputers:storage:1>.withTag({"oc:data": {"oc:fs.label": "irc"}, "oc:color": 12, display: {Name: "OpenIRC (IRC Client)"}, "oc:lootFactory": "opencomputers:irc"})
    
            
            
    ]

    
};

static liquids as ILiquidStack [][int]  = {
    1:[   
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
        <liquid:vivid_alloy>
    ]    
};

static ores as IItemStack [][int] = {
  1 : []

};

static class as Stage  = Stage(
    name,
    substages,
    mods,
    items,
    liquids,
    ores
);