#priority 9800

var destRedstone = <liquid:redstone>;

var electrotine = <projectred-core:resource_item:105>;

var dustLapis = <ore:dustLapis>;
var dustElectrum = <ore:dustElectrum>;

//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);
//FluidToFluid.transform(ILiquidStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);
//mods.inworldcrafting.FluidToFluid.transform(<liquid:lava>, <liquid:cryotheum>, [<ore:logWood> * 4]);

mods.inworldcrafting.FluidToItem.transform(electrotine * 4, destRedstone, [dustElectrum * 4], true);

mods.inworldcrafting.FluidToFluid.transform(<liquid:water>, destRedstone, [dustElectrum * 4], false);