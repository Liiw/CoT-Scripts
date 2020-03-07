import mods.ResearchTable;

// use `/researchtable @p all 0` to clear all progress

var cat = ResearchTable.addCategory(<immersiveengineering:material:26>);

ResearchTable.builder("AdvBlastFurn", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("Advanced Blast Furnace") // I18n support: use language key
  .setDescription("To complete research for a more efficient method of producing steel, you need to spend some steel and coal coke. Input the required amount into this research table by means of some item/fluid transportation system (a hopper will do fine for now)")
  .addCondition(<ore:blockSteel> * 200, <ore:blockFuelCoke> * 200)
  .setRewardStages("advanced_blastfurnace")
  .setRequiredStages("industrial_1")

  .build();


ResearchTable.builder("AdvCokeOven", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("Advanced Coke Oven") // I18n support: use language key
  .setDescription("To complete research for a more efficient method of producing coal coke and creosote, you need to spend some. Input the required amount into this research table by means of some item/fluid transportation system (for items: a hopper for example, for fluids: by bucket or some piping")
  .addCondition(<liquid:creosote> * 50000, <ore:blockFuelCoke> * 100)
  .setRewardStages("advanced_cokeoven")
  .setRequiredStages("industrial_1")

  .build();


ResearchTable.builder("Excavator", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:5>)
  .setTitle("Drilling License") // I18n support: use language key
  .setDescription("Mining all the ores by hand can be tiring. Get yourself a drilling license for just 99 iron blocks and a little redstone! Just enjoy the evening while the machines work for you!")
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
  .setTitle("Industrial Upgrade") // I18n support: use language key
  .setDescription("You have come a long way already and gained a lot of knowledge. It is time to take another step forward! Complete this research to advance in the Industrial Age")
  .addCondition(<ore:blockSheetmetalSteel> * 1000, <liquid:concrete> * 150000)
  .setRewardStages("industrial_2")
  .setRequiredStages("industrial_1")
 

  .build();

  
ResearchTable.builder("Upgradeend", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:3>)
  .setTitle("Information Starter") // I18n support: use language key
  .setDescription("As you would imagine, combining fucktons of diesel with electricity always yields good results. Complete this research to unlock the next age!")
  .addCondition(<liquid:diesel> * 1000000)
  .addEnergyCondition(1000000)
  .setRewardStages("industrial_end")
  .setRequiredStages("industrial_2")

  .build();

  //INFORMATION AGE

  var cat_inf = ResearchTable.addCategory(<projectred-fabrication:ic_chip>);

ResearchTable.builder("Info_upgrade", cat_inf) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:3>)
  .setTitle("Information Upgrade") // I18n support: use language key
  .setDescription("Channel more power, blutonium and gasoline to unlock more of the Information Age. It would probably make sense to construct a reactor for that.")
  .addCondition(<ore:blockBlutonium> * 50, <liquid:gasoline> * 1000000)
  .addEnergyCondition(1000000000003)
  .setRewardStages("information_2")
  .setRequiredStages("information_1")

  .build();


ResearchTable.builder("Info_end", cat_inf) // The second parameter has no use currently
  .setIcons(<immersiveengineering:metal_decoration0:3>)
  .setTitle("The Start of The End") // I18n support: use language key
  .setDescription("You have been contacted by the guys living on the nearby planet. They like what you got going on here. They are willing to trade some knowledge about Stargates, wireless terminals and mob farming to you in return for some supplies and gear for a kick-ass LAN party.")
  .addCondition(
    <ore:oc:ram6> * 10,
    <ore:oc:cpu3>* 10,
    <ore:oc:graphicsCard3> * 10,
    <ore:oc:hdd3> * 10,
    <ore:oc:materialInterweb> * 1,
    <liquid:vapor_of_levity> * 50000, 
    <liquid:fire_water> * 150000, 
    <ore:blockPlatinum> * 50,
    <ore:blockVibrantAlloy> * 50,
    <extracells:storage.component:3> * 10,
    <extracells:storage.component:10> * 10,
    <appliedenergistics2:material:34> * 10,
    <ore:compressed3xDustBedrock> * 50,
    <appliedenergistics2:material:47> * 25)
  .addCondition(<liquid:water>, 1000000000 as long)
  .addCondition(<liquid:lava>, 1000000000 as long)
  .addEnergyCondition(1000000000000000)
  .setRewardStages("endgame_1")
  .setRequiredStages("information_2")

  .build();