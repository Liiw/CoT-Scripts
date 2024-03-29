#//norun
#priority 9800

import mods.pyrotech.Stages;

var magma = <minecraft:magma>;
var magmaChunk = <simpledifficulty:magma_chunk>;
var ice = <minecraft:ice>;
var iceChunk = <simpledifficulty:ice_chunk>;
var oreLimestone = <ore:stoneLimestone>;
var cobbledLimestone = <pyrotech:cobblestone:3>;



mods.pyrotech.GraniteAnvil.setGameStages(Stages.and(["stone_2"]));


mods.pyrotech.GraniteAnvil.addRecipe(
  "magmaChunk",                // unique recipe name
  magmaChunk*4,          // recipe output
  magma,          // recipe input
  4,                   // base number of hammer hits required
  "pickaxe",                // hammer | pickaxe
  true // true if the recipe should be inherited
);

mods.pyrotech.GraniteAnvil.addRecipe(
  "iceChunk",                // unique recipe name
  iceChunk*4,          // recipe output
  ice,          // recipe input
  4,                   // base number of hammer hits required
  "pickaxe",                // hammer | pickaxe
  true // true if the recipe should be inherited
);

mods.pyrotech.GraniteAnvil.addRecipe(
  "chiselLimestone",                // unique recipe name
  cobbledLimestone*1,          // recipe output
  oreLimestone,          // recipe input
  8,                   // base number of hammer hits required
  "hammer",                // hammer | pickaxe
  true // true if the recipe should be inherited
);



mods.pyrotech.Worktable.setGameStages(Stages.and(["stone_fire"]));
mods.pyrotech.PitKiln.setGameStages(Stages.and(["stone_fire"]));
mods.pyrotech.Campfire.setGameStages(Stages.and(["stone_fire"]));

mods.pyrotech.StoneKiln.setGameStages(Stages.and(["stone_3"]));

mods.pyrotech.StoneKiln.addRecipe(
  "CoT_searedbrick",                // unique recipe name
  <tconstruct:materials>,          // recipe output
  <tconstruct:soil>,          // recipe input
  8400,          // recipe duration in ticks
  0.1,        // chance for item to fail conversion
  [<pyrotech:material:7>, //pottery shard
   <pyrotech:material:6>, //pottery fragments
   <pyrotech:material>,   //ash
   <pyrotech:material:10>], //flint   // array of randomly chosen failure items
  true // true if the recipe should be inherited
);


mods.pyrotech.StoneOven.setGameStages(Stages.and(["stone_3"]));

mods.pyrotech.StoneOven.addRecipe(
  "CoT_purifiedWater",                // unique recipe name
  <simpledifficulty:purified_water_bottle>,         
  <minecraft:potion>.withTag({Potion: "minecraft:water"}),         
  true// true if the recipe should be inherited
);


for i in 1 to 4 {

  mods.pyrotech.StoneOven.addRecipe(
    "CoT_purifiedWaterCanteen" + i,                // unique recipe name
    <simpledifficulty:canteen>.withTag({Doses: i, CanteenType: 3}),      //output    
    <simpledifficulty:canteen>.withTag({Doses: i, CanteenType: 0}),         //input
    true// true if the recipe should be inherited
  );

}


mods.pyrotech.StoneSawmill.setGameStages(Stages.and(["stone_3"]));


mods.pyrotech.StoneCrucible.setGameStages(Stages.and(["stone_4"]));


mods.pyrotech.SoakingPot.setGameStages(Stages.and(["stone_4"]));

mods.pyrotech.DryingRack.setGameStages(Stages.and(["stone_fire"]));


mods.pyrotech.Bellows.setGameStages(Stages.and(["metal_1"]));
mods.pyrotech.Bloomery.setBloomeryGameStages(Stages.and(["metal_1"]));

mods.pyrotech.BrickKiln.setGameStages(Stages.and(["metal_2"]));
mods.pyrotech.BrickOven.setGameStages(Stages.and(["metal_2"]));
mods.pyrotech.BrickSawmill.setGameStages(Stages.and(["metal_2"]));
mods.pyrotech.BrickCrucible.setGameStages(Stages.and(["metal_2"]));

mods.pyrotech.MechanicalBellows.setGameStages(Stages.and(["metal_3"]));
//mods.pyrotech.MechanicalCompactor.setGameStages(Stages.and(["metal_3"]));
mods.pyrotech.MechanicalHopper.setGameStages(Stages.and(["metal_3"]));
mods.pyrotech.MechanicalMulcher.setGameStages(Stages.and(["metal_3"]));


mods.pyrotech.IroncladAnvil.setGameStages(Stages.and(["metal_4"]));
mods.pyrotech.DurableRockBag.setGameStages(Stages.and(["metal_4"]));


//Re-add recipes

//worktable
//recipes.remove(<pyrotech:worktable>);
//recipes.addShapeless("CoT_pyrotech_worktable",<pyrotech:worktable>,[<ore:slabWood>,<ore:allLogs>]);
