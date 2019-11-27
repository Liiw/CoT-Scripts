#norun
#priority 3000

import scripts.setupstages.Stone as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.stone.items;
import scripts.Exceptions.Items_liquids.stone.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);
