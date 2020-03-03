#priority 9000

import scripts.classes.Stage;
import scripts.utils.AddToStage;
import scripts.utils.RemainingModsToStage;

import crafttweaker.data.IData;



//Import staging data (substages, mods, items, liquids, ores)
  //Main epochs
  import scripts.StageData.stone.class as stone;
  import scripts.StageData.metal.class as metal;
  //import scripts.StageData.late_metal.class as late_metal;
  import scripts.StageData.medieval.class as medieval;
  import scripts.StageData.industrial.class as industrial;
  //import scripts.StageData.late_industrial.class as late_industrial;
  import scripts.StageData.information.class as information;
  //import scripts.StageData.digital.class as digital;
  //import scripts.StageData.space.class as space;
  import scripts.StageData.endgame.class as endgame;

  //Additional stages running parallel
  //import scripts.StageData.culinary.class  as culinary;
  //import scripts.StageData.agriculture.class  as agriculture;

  //Disabled and creative stages
  //import scripts.StageData.disabled.class  as disabled;
  import scripts.StageData.creative.class  as creative;

//Utility functons
import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;
import scripts.utils.ChangeMaterialStage;


//var axe = <tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 33, HarvestLevel: 1, Attack: 3.4 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.0 as float, FreeModifiers: 3, Durability: 33, HarvestLevel: 1, Attack: 3.4 as float}, Special: {Categories: ["aoe", "harvest", "weapon", "tool"]}, TinkerData: {Materials: ["stone", "flint", "wood"], Modifiers: ["toolleveling"]}, Modifiers: [{identifier: "cheap", color: -6710887 as long, level: 1}, {identifier: "crude", color: -9868951 as long, level: 2, crude2: 1 as byte}, {identifier: "ecological", color: -7444965 as long, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}], Traits: ["cheap", "crude2", "ecological", "toolleveling"]});

global StageList as Stage[] = [
  stone,
  metal,
  //late_metal,
  medieval,
  industrial,
  //late_industrial,
  information,
  //digital,
  //space,
  endgame,
  //agriculture,
  //culinary,
  //disabled,
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
    //"coin",
    "dust",
    "nugget",
    //"gear",
    "plate",
    "fish",
    "item",
    "listall"
  ],

  [
    "clathrate",
    "fused",
    "hardened"
  ]
];

//STAGING
//mods

//FOR I IN STAGE.SUBSTAGES.KEYS or something like that?

for stage in StageList {
  for i in stage.substages.keys {
    if (stage.mods.keys has i){
      AddToStage (stage.substages[i], stage.mods[i]);
    }
  }
}



//Items, recipes and liquids
for stage in StageList {
  for i in stage.substages.keys {

    if (stage.items.keys has i) {
      ChangeItemStage (stage.substages[i], stage.items[i]);
    }
    
    if (stage.liquids.keys has i) {
      ChangeLiquidStage(stage.substages[i], stage.liquids[i]);
    }
    
    if (stage.materials.keys has i) {
      ChangeMaterialStage(stage.substages[i], stage.materials[i], oreDictFilter);
    }

    if (stage.recipes.keys  has i){
      for recipe in stage.recipes[i] {
        mods.recipestages.Recipes.setRecipeStage(stage.substages[i], recipe); 
      }
    }
    
  }
}


//Staging vanilla dimensions
mods.DimensionStages.addDimensionStage("medieval_1", -1);
mods.DimensionStages.addDimensionStage("industrial_2", 1);

//Stage some IE/IP/IT advanced multiblocks separately
mods.multiblockstages.IEMultiBlockStages.addStage("blastfurnace", "IE:BlastFurnace", "Not yet! You need to master the coke oven first!");
mods.multiblockstages.IEMultiBlockStages.addStage("advanced_blastfurnace", "IE:BlastFurnaceAdvanced", "You need to research that a little bit (try the research table)");
mods.multiblockstages.IEMultiBlockStages.addStage("advanced_cokeoven", "IT:CokeOvenAdvanced", "You need to research that a little bit (try the research table)");


//Add first axe materials separately to first stage
  mods.TinkerStages.addMaterialStage(stone.substages[1], "flint");
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



