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

static Disabled as string = "disabled";
static Creative as string = "creative";

//Setup mods to be staged
static prehistoric_mods as string [] = [
  /*  "primal",
    "minecraft",
    "immcraft",
    "tombstone" */
];

static stone_mods as string [] = [
  /*  "dungpipe",
    "primal_tech",
    "basketcase",
    "jarm"  */
]; 

static early_metal_mods as string [] = [
  /*  "composter",
    "jarm",
    "waterstrainer",
    "chesttransporter",
    "comforts",
    "horsepower",
    "primalchests",
    "astikorcarts" */
]; 

static late_metal_mods as string [] = [
  /*  "tconstruct",
    "astikorcarts",
    "storagedrawers",
    "farmingforblockheads",
    "ironbackpacks",
    "naturescompass",
    "torchbandolier",
    "opframe"   */
]; 

static medieval_mods as string [] = [
  /*  "agricraft",
    "cookingforblockheads",
    "ironchest",
    "openglider",
    "prospectors",
    "torchlever",
    "littletiles",
    "littleopener",
    "thaumcraft",
    "conarm",
    "microblockcbe",
    "tcomplement",
    "ancientwarfare",
    "ancientwarfarestructure",
    "ancientwarfarevehicle",
    "ancientwarfarenpc",
    "ancientwarfareautomation" */
];

static early_industrial_mods as string [] = [
  /*  "immersiveengineering",
    "weirdinggadget",
    "theoneprobe",
    "compactdrawers",
    "engineeredgolems",
    "immersiverailroading",
    "mctsmelteryio",
    "thaumicaugmentation"   */
];

static late_industrial_mods as string [] = [
  /*  "mts",
    "mtsofficialpack",
    "rsgauges",
    "buildinggadgets",
    "dse",
    "alternatingflux",
    "immersive_energy",
    "immersivepetroleum",
    "immersive_energy",
    "ompd",
    "thaumicrestoration"    */
];

static atomic_mods as string [] = [
  /*  "projectred-core",
    "projectred-core",
    "projectred-compat",
    "projectred-integration",
    "projectred-transmission",
    "projectred-fabrication",
    "projectred-illumination",
    "bigreactors",
    "openmodularturrets",
    "rftools",
    "immersivetech",
    "btcivil",
    "trafficcontrol",
    "unuparts"  */
];

static digital_mods as string [] = [
  /*  "appliedenergistics2",
    "ae2stuff",
    "enderio",
    "enderiointegrationtic",
    "opencomputers",
    "ocsensors",
    "openscreens",
    "opensecurity",
    "extracells",
    "immersivecables",
    "thaumicenergistics"    */
];

static space_mods as string [] = [
  /*  "advancedrocketry",
    "wpt",
    "wct",
    "wft",
    "wit"   */
];

static endgame_mods as string [] = [
  /*  "sgcraft",
    "woot"  */
];

//MOVE TO SOMEWHERE ELSE
/*static disabled_stuff as string [] =[
    ""
];*/

static creative_mods as string [] =[
    "customnpcs"
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
    creative_mods
];