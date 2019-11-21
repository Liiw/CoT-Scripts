#priority 3000

import scripts.setupstages.EarlyIndustrial as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.early_industrial.items;
import scripts.Exceptions.Items_liquids.early_industrial.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);