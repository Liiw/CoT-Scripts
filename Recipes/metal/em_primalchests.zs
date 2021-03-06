#norun
/* #priority 9800

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

static medBaskets as IItemStack[] = [

     <basketcase:basket_medium_generic>,
     <basketcase:basket_medium_bark_acacia>,
     <basketcase:basket_medium_bark_birch>,
     <basketcase:basket_medium_bark_dark_oak>,
     <basketcase:basket_medium_bark_jungle>,
     <basketcase:basket_medium_bark_oak>,
     <basketcase:basket_medium_bark_spruce>,
     <basketcase:basket_medium_twig_acacia>,
     <basketcase:basket_medium_twig_birch>,
     <basketcase:basket_medium_twig_dark_oak>,
     <basketcase:basket_medium_twig_jungle>,
     <basketcase:basket_medium_twig_oak>,
     <basketcase:basket_medium_twig_spruce>    

];

static largeBaskets as IItemStack[] = [

     <basketcase:basket_large_generic>,
     <basketcase:basket_large_bark_acacia>,
     <basketcase:basket_large_bark_birch>,
     <basketcase:basket_large_bark_dark_oak>,
     <basketcase:basket_large_bark_jungle>,
     <basketcase:basket_large_bark_oak>,
     <basketcase:basket_large_bark_spruce>,
     <basketcase:basket_large_twig_acacia>,
     <basketcase:basket_large_twig_birch>,
     <basketcase:basket_large_twig_dark_oak>,
     <basketcase:basket_large_twig_jungle>,
     <basketcase:basket_large_twig_oak>,
     <basketcase:basket_large_twig_spruce>

];

var medBasketOre = <ore:mediumBasket>;
var largeBasketOre = <ore:largeBasket>;

for basket in medBaskets {
    medBasketOre.add(basket);
}

for basket in largeBaskets{
    largeBasketOre.add(basket);
}



var primalChest = <primalchests:primal_chest>;
var primalChestAdv = <primalchests:primal_chest_advanced>;
var basketMedium = <ore:mediumBasket>;
var basketLarge = <ore:largeBasket>;
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

     */