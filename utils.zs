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

//Stage Tinkers Construct materials and tools with materials
//Stage by items in mods, liquids


function ChangeMaterialStage(stage as string,  
                             materials as string[]){
	
    var oreDictEnt = oreDict.entries;
	
    //TiC parts and equipment sorting
	for material in materials{
		for mod in loadedMods{
			for item in loadedMods[mod.id].items{
                //check if item is tool part with material
				if(item.tag.Material){
					if (item.tag.Material has material)
					{
						mods.ItemStages.removeItemStage(item);
						mods.ItemStages.addItemStage(stage, item);
						mods.recipestages.Recipes.setRecipeStage(stage, item);
					}						
				}
                //check if item is tool with TiC materials
				if(item.tag.TinkerData){
					if (item.tag.TinkerData.Materials has material)
					{
						mods.ItemStages.removeItemStage(item);
						mods.ItemStages.addItemStage(stage, item);
						mods.recipestages.Recipes.setRecipeStage(stage, item);
					}   
				}
                //check if item is bucket or similar with material fluid
                if(item.tag.FluidName){
					if (item.tag.FluidName has material)
					{
						mods.ItemStages.removeItemStage(item);
						mods.ItemStages.addItemStage(stage, item);
						mods.recipestages.Recipes.setRecipeStage(stage, item);
                        //stage the liquid as well
                        mods.ItemStages.stageLiquid(stage, item.liquid);
					}   
				}

			}
		}

        //TiC materials sorting
		mods.TinkerStages.addMaterialStage(stage, material);

        //Oredict items sorting

        for entry in oreDictEnt{
            if (entry.name.toLowerCase has material){

                for item in entry.items{    
                    mods.ItemStages.removeItemStage(item);
                    mods.ItemStages.addItemStage(stage, item);
                    mods.recipestages.Recipes.setRecipeStage(stage, item);
                }
			                   
            }
			
        }
    }  
}
