#priority 9000


//Init stages
static Prehistoric as string = "prehistoric";
static Stone as string = "stone";
static EarlyMetal as string = "early_metal";
static LateMetal as string = "late_metal";
static Medieval as string = "medieval";
static EarlyIndustrial as string = "early_industrial";
static LateIndustrial as string = "late_industrial";
static Atomic as string = "atomic";
static Digital as string = "digital";
static Space as string = "space";
static EndGame as string = "endgame";

static AgriCulture as string = "agriculture";
static Culinary as string = "culinary";

static Disabled as string = "disabled";
static Creative as string = "creative";

//Setup mods to be staged
static prehistoric_mods as string [] = [
  /*  "primal",
    "minecraft",
     */
];

static stone_mods as string [] = [
  "tombstone",
  "primal",
  "basketcase",
  "comforts",
  "bountiful",
  "primal_tech",
  "immcraft"
]; 

static early_metal_mods as string [] = [
  "dungpipe",
  "jarm",
  "primalchests",
  "composter", 
  "waterstrainer",
  "comforts",
  "horsepower",
  "astikorcarts" 
]; 

static late_metal_mods as string [] = [
  "tconstruct",
  "ironbackpacks",
  "naturescompass",
  "torchbandolier",
  "opframe"   
]; 

static medieval_mods as string [] = [
  "conarm",
  "chesttransporter",
  "storagedrawers",
  "littletiles",
  "littleopener",
  "microblockcbe",
  "thaumcraft",
  "ancientwarfare",
  "ancientwarfarestructure",
  "ancientwarfarevehicle",
  "ancientwarfarenpc",
  "ancientwarfareautomation",
  "tcomplement",
  "torchlever",
  "openglider",
  "thaumcraft",
  "openglider",
  "torchlever",
  "thaumcraft",
  "ironchest",
  "solcarrot",
  "opframe"
];

static early_industrial_mods as string [] = [
  "immersiverailroading",
  "thaumicaugmentation",
  "theoneprobe",
  "mctsmelteryio", 
  "immersiveengineering",
  "weirdinggadget",
  "compactdrawers"
  
];    
    
      

static late_industrial_mods as string [] = [
  "thaumicrestoration",
  "immersive_energy",
  "immersivepetroleum",
  "immersive_energy",
  "immersiveposts",
  "mts",
  "mtsofficialpack",
  "alternatingflux",
  "rsgauges",
  "buildinggadgets",
  "dse",
  "alternatingflux",  
  "ompd",
  "engineeredgolems"
];

static atomic_mods as string [] = [
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
  "bigreactors",
  "openmodularturrets",
  "rftools",
  "immersivetech"
   
];

static digital_mods as string [] = [
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
];

static space_mods as string [] = [
  "advancedrocketry",
  "libvulpes",
  "wpt",
  "wct",
  "wft",
  "wit"   
];

static endgame_mods as string [] = [
   "sgcraft",
   "woot"  
];

//MOVE TO SOMEWHERE ELSE
/*static disabled_stuff as string [] =[
    ""
];*/

static creative_mods as string [] =[
  "customnpcs"
];

static agriculture_mods as string [] = [
  "farmingforblockheads",
  "agricraft"
  
];

static culinary_mods as string [] = [
  "cookingforblockheads",
  "harvestcraft"
];

static already_staged as string [][] =[
    prehistoric_mods,
    stone_mods,
    early_metal_mods,
    late_metal_mods,
    medieval_mods,
    early_industrial_mods,
    late_industrial_mods,
    atomic_mods,
    digital_mods,
    space_mods,
    endgame_mods,
    creative_mods,
    agriculture_mods,
    culinary_mods
];