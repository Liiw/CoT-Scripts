#norun
/*#priority 9800


var oreplantFiber = <ore:plantFiber>;
var oreString = <ore:string>;


//var basketFiber = <basketcase:item_plant_fiber>;
var primalFiber = <primal_tech:plant_fibres>;

//var cordage = <basketcase:item_cordage>;

var twine = <primal_tech:twine>;
var fibertorch = <primal_tech:fibre_torch>;

var leafbed = <primal_tech:leaf_bed>;
var hay = <minecraft:hay_block>;
var oreSlabWood = <ore:slabWood>;
var oreLeaves = <ore:treeLeaves>;
var oreWool = <ore:wool>;

//oreplantFiber.add(basketFiber);
oreplantFiber.add(primalFiber);

//oreString.add(cordage);

recipes.replaceAllOccurences(primalFiber, oreString, fibertorch);


/*
recipes.removeShaped(leafbed, 
     [[null, null, null],
      [oreLeaves, oreLeaves, oreSlabWood],
      [hay, hay, hay]]
);*/
/*
recipes.removeByRecipeName("primal_tech:recipe_leaf_bed");

recipes.addShapedMirrored("strawbed",leafbed,
    [[oreLeaves, oreLeaves, oreLeaves],
     [oreLeaves, oreLeaves, oreWool],
     [oreSlabWood, oreSlabWood, oreSlabWood]]
);*/