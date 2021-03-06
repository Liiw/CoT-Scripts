#priority 9800

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

var allLogOre = <ore:allLogs>;

static woods as IIngredient [][] =[
    [<minecraft:log>],
    [<minecraft:log:1>],
    [<minecraft:log:2>],
    [<minecraft:log:3>],
    [<minecraft:log2>],
    [<minecraft:log2:1>],
    [<harvestcraft:pamcinnamon>],
    [<harvestcraft:pammaple>],
    [<harvestcraft:pampaperbark>],
    [<minecraft:cactus>]
/*     [<primallib:log_stripped_oak>],
    [<primallib:log_stripped_spruce>], 
    [<primallib:log_stripped_birch>], 
    [<primallib:log_stripped_jungle>], 
    [<primallib:log_stripped_acacia>], 
    [<primallib:log_stripped_dark_oak>],  */                    
];



static planks as IItemStack[] = [
    <minecraft:planks>,
    <minecraft:planks:1>,
    <minecraft:planks:2>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:5>,
    <minecraft:planks:3>,
    <minecraft:planks:1>,
    <minecraft:planks:3>,
    <structurize:blockcactusplank>
/*     <minecraft:planks>,
    <minecraft:planks:1>,
    <minecraft:planks:2>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:5>, */
];

static names as string[] = [
    "minecraft:oak_planks",
    "minecraft:spruce_planks",
    "minecraft:birch_planks",
    "minecraft:jungle_planks",
    "minecraft:dark_oak_planks",
    "minecraft:acacia_planks",
    "harvestcraft:minecraft_planks_meta_3_x4_pamcinnamon",
    "harvestcraft:minecraft_planks_meta_3_x4_pampaperbark",
    "harvestcraft:minecraft_planks_meta_1_x4_pammaple",
    "structurize:blockcactusplank"
/*     "primallib:planks_oak",
    "primallib:planks_spruce",
    "primallib:planks_birch",
    "primallib:planks_jungle",
    "primallib:planks_acacia",
    "primallib:planks_dark_oak", */
];

for name in names {
    recipes.removeByRecipeName(name);
}
var i = 0;
for plank in planks {

    //recipes.removeShapeless(output, inputs, wildcard);
    //recipes.removeShapeless(plank[i]*4, wood[i]);
    //var name = "CoT_" + planks[i].displayName + i;
    //recipes.addShapeless(name, planks[i], woods[i]);

    allLogOre.add(woods[i]);

    i += 1;
} 

//some extra cases with wood
allLogOre.add(<harvestcraft:pamcinnamon:1>);
allLogOre.add(<harvestcraft:pamcinnamon:2>);
//allLogOre.add(<thaumcraft:log_greatwood:1>);
//allLogOre.add(<thaumcraft:log_greatwood:2>);
//allLogOre.add(<thaumcraft:log_silverwood:1>);
//allLogOre.add(<thaumcraft:log_silverwood:2>);
