import mods.ResearchTable;

// use `/researchtable @p all 0` to clear all progress

var cat = ResearchTable.addCategory(<immersiveengineering:material:26>);

ResearchTable.builder("AdvBlastFurn", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("Advanced Blast Furnace") // I18n support: use language key
  .setDescription("To complete research for a more efficient method of producing steel, you need to spend some steel and coal coke. Input the required amount into this research table by means of some item/fluid transportation system (a hopper will do fine for now)")
  .addCondition(<ore:blockSteel> * 200, <ore:blockFuelCoke> * 200)
  .setRewardStages("advanced_blastfurnace")
 
//  .setRewardItems(<minecraft:gold_ingot>, <minecraft:gold_nugget>)
//.setNoMaxCount()
  .build();


ResearchTable.builder("AdvCokeOven", cat) // The second parameter has no use currently
  .setIcons(<immersiveengineering:stone_decoration:2>)
  .setTitle("Advanced Coke Oven") // I18n support: use language key
  .setDescription("To complete research for a more efficient method of producing coal coke and creosote, you need to spend some. Input the required amount into this research table by means of some item/fluid transportation system (for items: a hopper for example, for fluids: by bucket or some piping")
  .addCondition(<liquid:creosote> * 50000, <ore:blockFuelCoke> * 100)
  .setRewardStages("advanced_cokeoven")
 
//  .setRewardItems(<minecraft:gold_ingot>, <minecraft:gold_nugget>)
//.setNoMaxCount()
  .build();