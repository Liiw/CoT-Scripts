#priority 9000

import scripts.classes.Stage;
import scripts.utils.AddToStage;
import scripts.utils.RemainingModsToStage;



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


import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.StageData.stone.oretest as oretest;



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

    for recipe in stage.recipes[i] {
      mods.recipestages.Recipes.setRecipeStage(stage.substages[i], recipe); 
    }  
  }
}

//mods.orestages.OreStages.addReplacement(String stage, IIngredient original, IItemStack replacement);

var oreT = oretest[2];


mods.orestages.OreStages.addReplacement(stone.substages[2], oretest[2][0][0], oretest[2][1][0]);
mods.orestages.OreStages.addReplacement(stone.substages[2], oretest[2][0][1], oretest[2][1][1]);