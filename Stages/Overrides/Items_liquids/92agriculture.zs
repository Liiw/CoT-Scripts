#priority 4000

import scripts.setupstages.AgriCulture as stage;
import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.agriculture.items;
import scripts.Exceptions.Items_liquids.agriculture.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);