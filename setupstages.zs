#priority 9000

import scripts.classes.Stage;
import scripts.utils.AddToStage;
import scripts.utils.RemainingModsToStage;
import scripts.Stages.stagenames.mainstages;
import scripts.Stages.Modstaging.stagedmods.stagedmods;

/*
var Prehistoric = Stage("prehistoric");
var Stone = Stage("stone");
var EarlyMetal = Stage("early_metal");
var LateMetal = Stage("late_metal");
var Medieval = Stage("medieval");
var EarlyIndustrial = Stage("early_industrial");
var LateIndustrial = Stage("late_industrial");
var Atomic = Stage("atomic");
var Digital = Stage("digital");
var Space = Stage("space");
var EndGame = Stage("endgame");
var AgriCulture = Stage("agriculture");
var Culinary = Stage("culinary");
var Disabled = Stage("disabled");
var Creative = Stage("creative");


var stages as Stage[] = [
  Prehistoric,
  Stone,
  EarlyMetal,
  LateMetal,
  Medieval,
  EarlyIndustrial,
  LateIndustrial,
  Atomic,
  Digital,
  Space,
  EndGame,
  AgriCulture,
  Culinary,
  Disabled,
  Creative
];
*/

var stages as Stage[] = [];

for stage in mainstages {
  stages += Stage(stage);
}


//STAGING

//Mod staging
for stage in stages {
  AddToStage (stage.name, stagedmods[stage.name]);
}

//Stage left over mods to "disabled" for now
//RemainingModsToStage(Disabled.name, stagedmods);

//Itemstaging
