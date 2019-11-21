#priority 3000

import scripts.setupstages.Atomic as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.atomic.items;
import scripts.Exceptions.Items_liquids.atomic.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);