#priority 9000
//#norun

import scripts.classes.Stage;
import scripts.utils.AddToStage;
import scripts.utils.RemainingModsToStage;

import crafttweaker.data.IData;



//Import staging data (substages, mods, items, liquids, ores)
  //Main epochs
  import scripts.StageData.stone.class as stone;
  import scripts.StageData.metal.class as metal;

  import scripts.StageData.medieval.class as medieval;
  import scripts.StageData.industrial.class as industrial;

  import scripts.StageData.information.class as information;
  import scripts.StageData.endgame.class as endgame;
  import scripts.StageData.creative.class  as creative;

//Utility functons
import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;
import scripts.utils.ChangeMaterialStage;


//var axe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 33, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 33, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "harvest", "weapon", "tool"]}, TinkerData: {Materials: ["stone", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -6710887 as long, level: 1}, {identifier: "crude", color: -9868951 as long, level: 2, crude2: 1 as byte}, {identifier: "ecological", color: -7444965 as long, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "crude2", "ecological", "toolleveling"]});

static StageNames as string[] = [
  "stone_1",
  "stone_2",
  "stone_3",
  "stone_4",
  "stone_fire",
  "metal_1",
  "metal_2",
  "metal_3",
  "metal_4",

  "medieval_1",
  "medieval_2",
  "medieval_3",

  "industrial_1",
  "blastfurnace",
  "researchtable",
  "excavator",
  "industrial_2",
  "advanced_blastfurnace",
  "advanced_cokeoven",

  "information_1",
  "information_2",

  "endgame_1"
];

static StageList as Stage[] = [
  stone,
  metal,
  medieval,
  industrial,
  information,
  endgame,
  creative
];

//Filter for oredict staging as string [included][excluded]
static oreDictFilter as string[][] = 
[
  [
    "gem",
    "ore",
    "ingot",
    "block",
  //  "coin",
    "dust",
    "nugget",
    "gear",
    "plate",
    "fish",
    "item",
    "listall"
  ],

  [
    "clathrate",
    "fused",
    "hardened",
    "sawdust",
    "wood",
    "soup",
    "burrito",
    "flint",
    "limestone"
  ]
];

//STAGING
//mods

//FOR I IN STAGE.SUBSTAGES.KEYS or something like that?


for stage in StageList {
  for i in stage.substages.keys {
    if (stage.mods.keys has i){
      AddToStage (stage.substages[i], stage.mods[i], StageList);
    }
  }
}



//Items, recipes and liquids
for stage in StageList {
  for i in stage.substages.keys {

    
    if (stage.recipeCategories.keys has i){
      for recCat in stage.recipeCategories[i]{
        mods.ItemStages.stageRecipeCategory(stage.substages[i], recCat);
        //print("I WAS GONNA STAGE: " + recCat);
      }    
    }


    if (stage.materials.keys has i) {
      ChangeMaterialStage(stage.substages[i], stage.materials[i], oreDictFilter);
    }

    if (stage.items.keys has i) {
      ChangeItemStage (stage.substages[i], stage.items[i]);
    }
    
    if (stage.liquids.keys has i) {
      ChangeLiquidStage(stage.substages[i], stage.liquids[i]);
    }
    
    

    if (stage.recipes.keys  has i){
      for recipe in stage.recipes[i] {
        mods.recipestages.Recipes.setRecipeStage(stage.substages[i], recipe); 
      }
    }


    

    if (stage.mobs.keys has i){
      for mob in stage.mobs[i]{
        mods.MobStages.addStage(stage.substages[i], mob);
        mods.MobStages.toggleSpawner(mob, true);
      }
    }
    
  }
}


//Staging vanilla dimensions
mods.DimensionStages.addDimensionStage("medieval_1", -1);
mods.DimensionStages.addDimensionStage("industrial_2", 1);

//Stage some IE/IP/IT advanced multiblocks separately
mods.multiblockstages.IEMultiBlockStages.addStage("industrial_1", "IE:Assembler", "You must construct additional Pylons!");  

mods.multiblockstages.IEMultiBlockStages.addStage("blastfurnace", "IE:BlastFurnace", "Not yet! You need to master the coke oven first!");
mods.multiblockstages.IEMultiBlockStages.addStage("advanced_blastfurnace", "IE:BlastFurnaceAdvanced", "You need to research that a little bit (try the Research Table)");
//mods.multiblockstages.IEMultiBlockStages.addStage("advanced_cokeoven", "CokeOvenAdvanced", "You need to research that a little bit (try the research table)");
mods.multiblockstages.IEMultiBlockStages.addStage("excavator", "IE:Excavator", "Please purchase a drilling license first! Look for the Research Table for more info.");



//Add first axe materials separately to first stage
  //mods.TinkerStages.addMaterialStage(stone.substages[1], "flint");
  mods.TinkerStages.addMaterialStage(stone.substages[1], "stone");
  mods.TinkerStages.addMaterialStage(stone.substages[1], "wood");
//

//ore masking etc
for stage in StageList {
  for i in stage.substages.keys {
    

    if (stage.ores.keys has i){
      var entry = stage.ores[i];
        
      for cover in entry.keys{
        for ore in entry[cover]{
          mods.orestages.OreStages.addReplacement(stage.substages[i], ore, cover);
          //ChangeItemStage (stage.substages[i], ore);
          mods.ItemStages.removeItemStage(ore);
          mods.ItemStages.addItemStage(stage.substages[i], ore);
          mods.recipestages.Recipes.setRecipeStage(stage.substages[i], ore);
        }
      }
    }
    
  }
}

//CONTAINER STAGING

//AE2
mods.recipestages.Recipes.setPackageStage("appeng", StageNames);
//IE
//mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering.common", StageNames);
//blusunrize/immersiveengineering/common/gui/IEBaseContainer.java 
//mods.recipestages.Recipes.setContainerStage("blusunrize.immersiveengineering.common.gui.AssemblerContainer" , StageNames);
mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering", StageNames);
//mods.recipestages.Recipes.setPackageStage("blusunrize.immersiveengineering.common.util.Utils$InventoryCraftingFalse$1", StageNames);

//TC
//mods.recipestages.Recipes.setPackageStage("thaumcraft", StageNames);
//RFTools
mods.recipestages.Recipes.setPackageStage("mcjty.rftools.blocks.crafter", StageNames);
//StorageDrawers
mods.recipestages.Recipes.setPackageStage("com.jaquadro.minecraft.storagedrawers", StageNames);



/*
{
			"blocks": [
				"minecraft:stone:1",
				34,
				"minecraft:stone:3",
				33,
				"minecraft:stone:5",
				33
			],
			"samples": [
				"pyrotech:rock:1",
				34,
				"pyrotech:rock:2",
				33,
				"pyrotech:rock:3",
				33
			],
			"yMin": 8,
			"yMax": 84,
			"chance": 15,
			"size": 380,
			"dimBlacklist": [
				-1,
				1
			],
			"density": 1.0
		}		,
  */