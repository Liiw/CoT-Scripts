#priority 4000

import scripts.setupstages.EndGame as stage;
import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.endgame.items;
import scripts.Exceptions.Items_liquids.endgame.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);
