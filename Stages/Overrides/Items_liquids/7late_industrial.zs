#priority 3000

import scripts.setupstages.LateIndustrial as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.late_industrial.items;
import scripts.Exceptions.Items_liquids.late_industrial.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);