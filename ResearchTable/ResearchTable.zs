import mods.ResearchTable;

// use `/researchtable @p all 0` to clear all progress

var cat = ResearchTable.addCategory(<immersiveengineering:material:26>);

ResearchTable.builder("AdvBlastFurn", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("research.adv_blastfurnace.title") // I18n support: use language key
  .setDescription("research.adv_blastfurnace.description")
  .addCondition(<ore:blockSteel> * 50, <ore:blockFuelCoke> * 25)
  .setRewardStages("advanced_blastfurnace")
  .setRequiredStages("industrial_1")
  //.setRewardCommands("/gamestage silentadd @p advanced_blastfurnace")

  .build();


ResearchTable.builder("AdvCokeOven", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("research.adv_cokeoven.title") // I18n support: use language key
  .setDescription("research.adv_cokeoven.description")
  .addCondition(<liquid:creosote> * 50000, <ore:blockFuelCoke> * 50)
  .setRewardStages("advanced_cokeoven")
  .setRequiredStages("industrial_1")

  .build();


ResearchTable.builder("Excavator", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:5>)
  .setTitle("research.ecvavator.title") // I18n support: use language key
  .setDescription("research.ecvavator.description")
  .addCondition(<ore:blockIron> * 99, <ore:blockRedstone> * 10)
  .setRewardStages("excavator")
  .setRequiredStages("industrial_1")
 

  .build();
/*
  ResearchTable.builder("Pumpjack", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:jerrycan>)
  .setTitle("Pumping License") // I18n support: use language key
  .setDescription("You cannot keep using carts to haul everything around. Buildings conveyors over long distances is tiresome. Maintaining a proper rail network is possible, but costly for the starting engineer. A far better alternative in the beginning is to use car transport. But a car needs fuel. For fuel you would need some crude oil. Get a pumping license to start exploring the new possibilities!")
  .addCondition(<minecraft:iron_block> * 1000, <liquid:concrete> * 150000)
  .setRewardStages("pumpjack")
 
//  .setRewardItems(<minecraft:gold_ingot>, <minecraft:gold_nugget>)
//.setNoMaxCount()
  .build();
*/


ResearchTable.builder("Upgrade", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:sheetmetal:8>)
  .setTitle("research.upgrade.title") // I18n support: use language key
  .setDescription("research.upgrade.description")
  .addCondition(<ore:blockSheetmetalSteel> * 750, <liquid:concrete> * 100000)
  .setRewardStages("industrial_2")
  .setRequiredStages("industrial_1")
 

  .build();

  
ResearchTable.builder("Upgradeend", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:3>)
  .setTitle("research.upgrade_end.title") // I18n support: use language key
  .setDescription("research.upgrade_end.description")
  .addCondition(<liquid:diesel> * 100000)
  .addEnergyCondition(1000000)
  .setRewardStages("industrial_end")
  .setRequiredStages("industrial_2")

  .build();

  //INFORMATION AGE

  var cat_inf = ResearchTable.addCategory(<projectred-fabrication:ic_chip>);

ResearchTable.builder("Info_upgrade", cat_inf) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:3>)
  .setTitle("research.info_upgrade.title") // I18n support: use language key
  .setDescription("research.info_upgrade.description")
  .addCondition(<ore:blockBlutonium> * 25, <liquid:gasoline> * 150000)
  .addEnergyCondition(500000000)
  .setRewardStages("information_2")
  .setRequiredStages("information_1")

  .build();


ResearchTable.builder("Info_end", cat_inf) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:3>)
  .setTitle("research.info_end.title") // I18n support: use language key
  .setDescription("research.info_end.description")
  .addCondition(
    <ore:oc:ram6> * 5,
    <ore:oc:cpu3>* 5,
    <ore:oc:graphicsCard3> * 5,
    <ore:oc:hdd3> * 5,
    <ore:oc:materialInterweb> * 1,
    <ore:blockPlatinum> * 25,
    <ore:blockVibrantAlloy> * 25,
    <extracells:storage.component:3> * 5,
    <extracells:storage.component:10> * 7,
    <appliedenergistics2:material:34> * 5,
    <ore:compressed3xDustBedrock> * 25,
    <appliedenergistics2:material:47> * 10)
  .addCondition(<liquid:water>, 10000000 as long)
  .addCondition(<liquid:lava>, 10000000 as long)
  .addEnergyCondition(20000000000)
  .setRewardStages("endgame_1")
  .setRequiredStages("information_2")

  .build();