#priority 3000

import scripts.setupstages.LateMetal as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.late_metal.items;
import scripts.Exceptions.Items_liquids.late_metal.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);