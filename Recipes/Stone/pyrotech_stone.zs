#//norun
#priority 9800

import mods.pyrotech.Stages;

var magma = <minecraft:magma>;
var magmaChunk = <simpledifficulty:magma_chunk>;
var ice = <minecraft:ice>;
var iceChunk = <simpledifficulty:ice_chunk>;

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

mods.pyrotech.PitKiln.setGameStages(Stages.and(["stone_fire"]));
mods.pyrotech.Campfire.setGameStages(Stages.and(["stone_fire"]));

mods.pyrotech.StoneKiln.setGameStages(Stages.and(["stone_3"]));
mods.pyrotech.StoneOven.setGameStages(Stages.and(["stone_3"]));
mods.pyrotech.StoneSawmill.setGameStages(Stages.and(["stone_3"]));
mods.pyrotech.StoneCrucible.setGameStages(Stages.and(["stone_3"]));



mods.pyrotech.StoneOven.addRecipe(
  "CoT_purifiedWater",                // unique recipe name
  <simpledifficulty:purified_water_bottle>,         
  <minecraft:potion>.withTag({Potion: "minecraft:water"}),         
  true// true if the recipe should be inherited
);


for i in 1 to 3 {

  mods.pyrotech.StoneOven.addRecipe(
    "CoT_purifiedWaterCanteen" + i,                // unique recipe name
    <simpledifficulty:canteen>.withTag({Doses: i, CanteenType: 3}),      //output    
    <simpledifficulty:canteen>.withTag({Doses: i, CanteenType: 0}),         //input
    true// true if the recipe should be inherited
  );

}




mods.pyrotech.SoakingPot.setGameStages(Stages.and(["stone_4"]));




mods.pyrotech.DryingRack.setGameStages(Stages.and(["stone_fire"]));