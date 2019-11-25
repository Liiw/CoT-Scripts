#priority 4000

import scripts.setupstages.Culinary as stage;
import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.culinary.items;
import scripts.Exceptions.Items_liquids.culinary.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);