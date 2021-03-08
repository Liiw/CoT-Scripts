#priority 9800

var chestLiner = <armorunder:warm_chestplate_liner>;
var bootsLiner = <armorunder:warm_boots_liner>;
var helmetLiner = <armorunder:warm_helmet_liner>;
var leggingsLiner = <armorunder:warm_leggings_liner>;
var tarredWool = <pyrotech:wool_tarred>;

recipes.removeByRecipeName("armorunder:warm_chestplate_liner");
recipes.removeByRecipeName("armorunder:warm_boots_liner");
recipes.removeByRecipeName("armorunder:warm_helmet_liner");
recipes.removeByRecipeName("armorunder:warm_leggings_liner");


recipes.replaceAllOccurences(<minecraft:slime_ball>, <ore:slimeball>);

recipes.addShaped("COT_warm_chestplate_liner", chestLiner, 
    [[tarredWool, null      , tarredWool],
     [tarredWool, tarredWool, tarredWool],
     [tarredWool, tarredWool, tarredWool]]);

recipes.addShaped("COT_warm_boots_liner", bootsLiner, 
    [[null      , null      , null      ],
     [tarredWool, null      , tarredWool],
     [tarredWool, null      , tarredWool]]);

recipes.addShaped("COT_warm_helmet_liner", bootsLiner, 
    [[tarredWool, tarredWool, tarredWool],
     [tarredWool, null      , tarredWool],
     [null      , null      , null      ]]);

recipes.addShaped("COT_warm_leggings_liner", leggingsLiner, 
    [[tarredWool, tarredWool, tarredWool],
     [tarredWool, null      , tarredWool],
     [tarredWool, null      , tarredWool]]);


    