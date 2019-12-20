#priority 9500

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import crafttweaker.item.IIngredient;

//Add mods from list to stage
function AddToStage (stage as string, modlist as string[]){
	for mod in loadedMods {
		if (modlist has mod.id) {
			mods.ItemStages.stageModItems(stage, mod.id);
			mods.recipestages.Recipes.setRecipeStageByMod(stage, mod.id);
		}
	}
}


//Add remaining mods left over from the already staged mods to a stage.
function RemainingModsToStage(stage as string, staged_list as string[][string]){
	for mod in loadedMods {
		var inlist = false;
		for mods in staged_list {
			if (mods has mod.id) {
				inlist = true;
				break;
			}
		}

		if (!inlist) {
			mods.ItemStages.stageModItems(stage, mod.id);
			mods.recipestages.Recipes.setRecipeStageByMod(stage, mod.id);		
		} 
	}	
}

//Add items to different stage after bulk-mod-staging
function ChangeItemStage(stage as string, item_list as IIngredient []) {
	for item in item_list {		
		mods.ItemStages.removeItemStage(item);
		mods.ItemStages.addItemStage(stage, item);
		mods.recipestages.Recipes.setRecipeStage(stage, item);		
	}
}

//Add liquids to different stage after bulk-mod-staging
function ChangeLiquidStage(stage as string, liquid_list as ILiquidStack []) {
	for liquid in liquid_list {
		mods.ItemStages.stageLiquid(stage, liquid);
	}
}