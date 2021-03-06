#norun
#priority 9800

var watersaw = <primal_tech:water_saw>;

var bronze = <ore:blockBronze>;

var pressplate = <minecraft:light_weighted_pressure_plate>;

var sawblade = <primal_tech:flint_edged_disc>;

var stick = <ore:stickWood>;

var wood = <ore:logWood>;

//recipes.replaceAllOccurences(IIngredient toReplace, IIngredient replaceWith, @Optional IIngredient forOutput);
//recipes.replaceAllOccurences(pressplate, bronze, watersaw);

recipes.removeByRecipeName("primal_tech:recipe_water_saw");

/*
recipes.removeShaped(watersaw, 
        [[pressplate, sawblade, pressplate],
         [stick, wood, stick],
         [pressplate, wood, pressplate]]
);*/


 recipes.addShaped("waterSaw",watersaw,
        [[bronze, sawblade, bronze],
         [stick, wood, stick],
         [bronze, wood, bronze]]  
);