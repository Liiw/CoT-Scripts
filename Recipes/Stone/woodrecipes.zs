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
    //[<thaumcraft:log_greatwood>],
    //[<thaumcraft:log_silverwood>],

    [<basketcase:log_stripped_dark_oak>],
    [<basketcase:log_stripped_birch>],
    [<basketcase:log_stripped_oak>],
    [<basketcase:log_stripped_jungle>],
    [<basketcase:log_stripped_acacia>],
    [<basketcase:log_stripped_spruce>],

    [<minecraft:cactus>]                    
];



static planks as IItemStack[] = [
    <minecraft:planks>,
    <minecraft:planks:1>,
    <minecraft:planks:2>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:5>,

    //junglewood for cinnamon,
    <minecraft:planks:3>,
    //spruce for maple,
    <minecraft:planks:1>,
    //junglewood for paperbark,
    <minecraft:planks:3>,
    //<thaumcraft:plank_greatwood>,
    //<thaumcraft:plank_silverwood>,

    <minecraft:planks:5>,
    <minecraft:planks:2>,
    <minecraft:planks>,
    <minecraft:planks:3>,
    <minecraft:planks:4>,
    <minecraft:planks:1>,

    <structurize:blockcactusplank>
];

static names as string[] = [
    "minecraft:oak_planks",
    "minecraft:spruce_planks",
    "minecraft:birch_planks",
    "minecraft:jungle_planks",
    "minecraft:dark_oak_planks",
    "minecraft:acacia_planks",
    //"thaumcraft:plankgreatwood",
    //"thaumcraft:planksilverwood",
    "basketcase:planks_oak",
    "basketcase:planks_spruce",
    "basketcase:planks_birch",
    "basketcase:planks_jungle",
    "basketcase:planks_acacia",
    "harvestcraft:minecraft_planks_meta_3_x4_pamcinnamon",
    "harvestcraft:minecraft_planks_meta_3_x4_pampaperbark",
    "harvestcraft:minecraft_planks_meta_1_x4_pammaple",
    "structurize:blockcactusplank"

];

for name in names {
    recipes.removeByRecipeName(name);
}
var i = 0;
for plank in planks {

    //recipes.removeShapeless(output, inputs, wildcard);
    //recipes.removeShapeless(plank[i]*4, wood[i]);
    var name = "CoT_" + planks[i].displayName + i;
    recipes.addShapeless(name, planks[i], woods[i]);

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
