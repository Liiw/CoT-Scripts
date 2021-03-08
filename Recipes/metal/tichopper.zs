#priority 9800

var woodHopper = <tconstruct:wooden_hopper>;
var crate = <pyrotech:crate>;
var plankWood = <ore:plankWood>;

recipes.removeByRecipeName("tconstruct:gadgets/wooden_hopper");

recipes.addShaped("COT_woodHopper", woodHopper, 
    [[plankWood, null      , plankWood],
     [plankWood, crate     , plankWood],
     [null     , plankWood , null     ]]);