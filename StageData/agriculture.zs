#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

static name as string = "agriculture";

static substages as string[int] = {
    1 : "agriculture_1"
};

static mods as string[][int] = {
    1 : [
        "farmingforblockheads",
        "agricraft"
    ]
};

static items as IItemStack [][int]  = {
  1 : [

    //HarvestCraft
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
    //Minecraft
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
    //Agricraft seeds
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:carrot_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:daisy_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:poppy_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:nether_wart_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:osmonium_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:cactus_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:nitorwart_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:sugarcane_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:allium_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:platiolus_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:emeryllis_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:brown_mushroom_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:redstodendron_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:red_mushroom_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:ferranium_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:red_tulip_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:weed_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:aurigold_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:niccissus_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:dandelion_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:quartzanthemum_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:lapender_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:white_tulip_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:cuprosia_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:orange_tulip_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:plombean_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:jaslumine_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:potato_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:diamahlia_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "resource:petinia_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:pink_tulip_plant", agri_growth: 1 as byte}),
      <agricraft:agri_seed>.withTag({agri_analyzed: 0 as byte, agri_strength: 1 as byte, agri_gain: 1 as byte, agri_seed: "vanilla:orchid_plant", agri_growth: 1 as byte})

  ]
};

static liquids as ILiquidStack [][int]  = {
  1 : [] 
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
