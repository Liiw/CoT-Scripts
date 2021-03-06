#priority 9800
#norun

var crafting_table = <minecraft:crafting_table>;
var iron_ingot = <ore:ingotIron>;
var wood_plank = <ore:plankWood>;


recipes.removeByRecipeName("pyrotech:crafting_table");

recipes.addShaped("CoT_CraftingTable",crafting_table,
    [[wood_plank, wood_plank, wood_plank],
     [wood_plank, iron_ingot, wood_plank],
     [wood_plank, wood_plank, wood_plank]]
);