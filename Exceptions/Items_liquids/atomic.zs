#priority 9400

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static items as IItemStack [][string]  = {
    "Extreme Reactors" : [
        <forge:bucketfilled>.withTag({FluidName: "yellorium", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "cyanite", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "dist_water", Amount: 1000}),
        <forge:bucketfilled>.withTag({FluidName: "steam", Amount: 1000})
    ]
};

static liquids as ILiquidStack [] = [
    //Extrene Reactors
    <liquid:yellorium>,
    <liquid:cyanite>,
    <liquid:fuelcolumn>,
    <liquid:dist_water>,
    <liquid:steam>
];