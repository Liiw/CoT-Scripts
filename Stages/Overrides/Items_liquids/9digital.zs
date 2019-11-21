#priority 3000

import scripts.setupstages.Digital as stage;

import scripts.utils.ChangeItemStage;
import scripts.utils.ChangeLiquidStage;

import scripts.Exceptions.Items_liquids.digital.items;
import scripts.Exceptions.Items_liquids.digital.liquids;


ChangeItemStage(stage, items);
ChangeLiquidStage(stage, liquids);

