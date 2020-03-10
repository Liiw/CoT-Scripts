#priority 9800

import crafttweaker.item.IIngredient;

var primalChest = <primalchests:primal_chest>;
var primalChestAdv = <primalchests:primal_chest_advanced>;
var basketMedium = <basketcase:container_basket_medium>;
var basketLarge = <basketcase:container_basket_large>;
var orePlank = <ore:plankWood>;
var oreChest = <ore:chest>;


//recipes.removeShaped(output, inputs);
//recipes.addShaped(name,output,inputs,function,action);

recipes.removeShaped(primalChest, 
     [[orePlank, orePlank, orePlank],
     [orePlank, oreChest, orePlank],
     [orePlank, orePlank, orePlank]]
);

recipes.removeShaped(primalChestAdv, 
     [[orePlank, orePlank, orePlank],
     [orePlank, primalChest, orePlank],
     [orePlank, orePlank, orePlank]]
);


recipes.addShaped("primal_Chest",primalChest,
    [[orePlank, orePlank, orePlank],
     [orePlank, basketMedium, orePlank],
     [orePlank, orePlank, orePlank]]    
);

recipes.addShaped("primal_ChestAdv",primalChestAdv,
    [[orePlank, orePlank, orePlank],
     [orePlank, basketLarge, orePlank],
     [orePlank, orePlank, orePlank]]    
);

    