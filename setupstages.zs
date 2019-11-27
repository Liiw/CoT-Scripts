#priority 9000

import scripts.classes.Stage;
import scripts.utils.AddToStage;
import scripts.Stages.Modstaging.stagedmods.stagedmods;




//Init stages
//static test = Stage();


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




/*
static already_staged as string [][] =[
    //prehistoric_mods,
    //Stone.mods,
    stuff, 
    early_metal_mods,
    late_metal_mods,
    medieval_mods,
    early_industrial_mods,
    late_industrial_mods,
    atomic_mods,
    digital_mods,
    space_mods,
    endgame_mods,
    creative_mods,
    agriculture_mods,
    culinary_mods
];
*/

for stage in stages {
  AddToStage (stage.name, stagedmods[stage.name]);
}
  


//print(Stone.mods[0]);