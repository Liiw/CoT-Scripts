#//norun
#priority 9800

import mods.pyrotech.Stages;

var dustLimestone = <ore:dustLimestone>;
var dustFlint = <ore:dustFlint>;

//dustLimestone.remove(<pyrotech:material:28>);
//dustFlint.remove(<pyrotech:material:31>);


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