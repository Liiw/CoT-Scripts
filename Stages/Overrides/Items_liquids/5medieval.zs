#priority 3000

import scripts.setupstages.Medieval as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.medieval.items;
import scripts.Exceptions.Items_liquids.medieval.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);

//<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl:  as short, id: 62 as short}]})