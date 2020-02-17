#priority 9000

import scripts.classes.Stage;
import scripts.utils.AddToStage;
import scripts.utils.RemainingModsToStage;

import crafttweaker.data.IData;



//Import staging data (substages, mods, items, liquids, ores)
  //Main epochs
  import scripts.StageData.stone.class as stone;
  import scripts.StageData.early_metal.class as early_metal;
  import scripts.StageData.late_metal.class as late_metal;
  import scripts.StageData.medieval.class as medieval;
  import scripts.StageData.early_industrial.class as early_industrial;
  import scripts.StageData.late_industrial.class as late_industrial;
  import scripts.StageData.atomic.class as atomic;
  import scripts.StageData.digital.class as digital;
  //import scripts.StageData.space.class as space;
  import scripts.StageData.endgame.class as endgame;

  //Additional stages running parallel
  import scripts.StageData.culinary.class  as culinary;
  import scripts.StageData.agriculture.class  as agriculture;

  //Disabled and creative stages
  import scripts.StageData.disabled.class  as disabled;
  import scripts.StageData.creative.class  as creative;

//Utility functons
import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;
import scripts.utils.ChangeMaterialStage;




global StageList as Stage[] = [
  stone,
  early_metal,
  late_metal,
  medieval,
  early_industrial,
  late_industrial,
  atomic,
  digital,
  //space,
  endgame,
  agriculture,
  culinary,
  disabled,
  creative
];



//STAGING
//mods

//if(stage.mods[i]) does not work, implement better check

for stage in StageList {
  for i in 1 to stage.substages.length + 1 {
    
    AddToStage (stage.substages[i], stage.mods[i]);

  }
}



//Items, recipes and liquids
for stage in StageList {
  for i in 1 to stage.substages.length + 1 {

    
    ChangeItemStage (stage.substages[i], stage.items[i]);
    
    ChangeLiquidStage(stage.substages[i], stage.liquids[i]);
    
    ChangeMaterialStage(stage.substages[i], stage.materials[i]);
    
    for recipe in stage.recipes[i] {
      mods.recipestages.Recipes.setRecipeStage(stage.substages[i], recipe); 
    }
    
  }
}

for stage in StageList {
  for i in 1 to stage.substages.length + 1 {
    
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



//THE FUTURE IS NOW!

print("OREDICT ENTRY NAMES");
val allEntries= oreDict.entries;

var oth as string[]  = [
    "ore",
    "ingot",
    "block",
    //"coin",
    "dust",
    "nugget",
    //"gear",
    "plate"
];

for entry in allEntries{
    if (entry.name.toLowerCase has "copper" ){
        for e in oth {
            if (entry.name.toLowerCase has e){
                print (entry.name);
            }
        }
    }
}
