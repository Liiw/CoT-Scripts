#norun
//the burning aint working for now
#priority 9800


import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var strippedLogOre = <ore:logStripped>;

static strippedLogs as IItemStack[]  = [
    <basketcase:log_stripped_dark_oak>,
    <basketcase:log_stripped_birch>,
    <basketcase:log_stripped_oak>,
    <basketcase:log_stripped_jungle>,
    <basketcase:log_stripped_acacia>,
    <basketcase:log_stripped_spruce>
];

for log in strippedLogs {
    strippedLogOre.add(log);
}

mods.inworldcrafting.FireCrafting.addRecipe(<primal_tech:charcoal_block>, <basketcase:log_stripped_oak> * 4, 60);