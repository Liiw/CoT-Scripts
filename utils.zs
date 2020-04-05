#priority 9500

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

import crafttweaker.item.IIngredient;

//Add mods from list to stage
function AddToStage (stage as string, modlist as string[], allStages as Stage[]){
	for mod in loadedMods {
		
		if (modlist has mod.id) {
			mods.ItemStages.stageModItems(stage, mod.id);

			
				for item in mod.items{
					var isListed = false;
					mods.ItemStages.removeItemStage(item);
					mods.ItemStages.addItemStage(stage, item);
					
					for stage in allStages{
						for i in stage.items{
							for src in stage.items[i]{
								//print ("THE ITEM I AM LOOKING AT: " + src.commandString);
								if (item.commandString == src.commandString){
									//print ("THE ITEM IS LISTED: " + item.commandString);
									isListed = true;
								}
							}
						}
					}
					if (!isListed){
						mods.recipestages.Recipes.setRecipeStage(stage, item);

						var itemRecipes = recipes.getRecipesFor(item);

						for rec in itemRecipes{
							mods.recipestages.Recipes.setRecipeStage(stage, rec.name);
						}		
					}
					
				}
			
			
			
			//TESTmods.recipestages.Recipes.setRecipeStageByMod(stage, mod.id);
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

		var itemRecipes = recipes.getRecipesFor(item);

		for rec in itemRecipes{
			mods.recipestages.Recipes.setRecipeStage(stage, rec.name);
		}		
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
                             materials as string[],
                             oreDictFilter as string[/*include*/][/*exclude*/]){                       

    var oreDictEnt = oreDict.entries;
	
    var stageItem = false;
    var stageItemOD = true;

	
    //TiC parts and equipment sorting
	for material in materials{
		for mod in loadedMods{
            
			for item in loadedMods[mod.id].items{
                
                stageItem = false;
                
                //check if item is tool part with material
				if(item.tag.Material){
					if (item.tag.Material has material || 
                        item.definition.owner has material ||
                        item.name has material)
					{
						stageItem = true;
					}

					//If it has a Material tag, it probably is a TiC part
					if (item.tag.Material has material){
						//TiC materials sorting
						mods.TinkerStages.addMaterialStage(stage, material);
					}

				}
                //check if item is cast or pattern
                if(item.tag.PartType){
                   if (item.tag.PartType.asString() has material){
                       stageItem = true;
                   }
                   //SPECIAL CASE if clay cast then put it to early_metal basically
                   if (item.name has material){
                       stageItem = true;
                   }
                }

                //check if item is tool with TiC materials
				if(item.tag.TinkerData){
					if (item.tag.TinkerData.Materials has material || 
                        item.definition.owner has material ||
                        item.name has material)
					{
						stageItem = true;
					}   
				}
                //check if item is bucket or similar with material fluid
                if(item.tag.FluidName){
					if (item.tag.FluidName has material || item.definition.owner has material)
					{
						stageItem = true;
                        //stage the liquid as well
                        mods.ItemStages.stageLiquid(stage, item.liquid);
					}   
				}

				

                //STAGE ITEM IF CONDITION TRIGGERED
                if (stageItem)
                {
                    mods.ItemStages.removeItemStage(item);
                    mods.ItemStages.addItemStage(stage, item);
                    mods.recipestages.Recipes.setRecipeStage(stage, item);

					var itemRecipes = recipes.getRecipesFor(item);

						for rec in itemRecipes{
							mods.recipestages.Recipes.setRecipeStage(stage, rec.name);
						}

					
                }
			}
		}

        

        //Oredict items sorting
		
		
		for entry in oreDictEnt{
			if (entry.name.toLowerCase has material){
				stageItemOD = true;
				//Stage only stuff that also has a part from the list
				for X in oreDictFilter[1]{
					if(entry.name.toLowerCase has X){
						stageItemOD = false;
					}

					if (stageItemOD) {
						for I in oreDictFilter[0]{
							if(entry.name.toLowerCase has I){

								for item in entry.items{
									mods.ItemStages.removeItemStage(item);
									mods.ItemStages.addItemStage(stage, item);
									mods.recipestages.Recipes.setRecipeStage(stage, item);

									var itemRecipes = recipes.getRecipesFor(item);

										for rec in itemRecipes{
											mods.recipestages.Recipes.setRecipeStage(stage, rec.name);
										}
								}						
							}
						}                   
					}  
				}                                
			}
		}
    }  
}
