#priority 3000

import scripts.setupstages.EarlyMetal as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.early_metal.items;
import scripts.Exceptions.Items_liquids.early_metal.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);