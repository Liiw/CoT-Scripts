#priority 9400

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static items as IItemStack [][string]  = {
    "Minecraft" : [
        //All (sand)stones and slabs and stone bricks
            <minecraft:stone>,
            <minecraft:stone:*>,
            <minecraft:cobblestone>,
            <minecraft:sandstone>,
            <minecraft:sandstone:*>,
            <minecraft:stone_slab>,
            <minecraft:stone_slab:1>,
            <minecraft:stone_slab:3>,
            <minecraft:stone_slab:5>,
            <minecraft:mossy_cobblestone>,
            <minecraft:red_sandstone>,
            <minecraft:red_sandstone:*>,
            <minecraft:stonebrick>,
            <minecraft:stonebrick:1>,
            <minecraft:stonebrick:2>,
            <minecraft:stonebrick:3>,
        //Wood logs, planks, slabs etc
            <minecraft:planks>,
            <minecraft:planks:1>,
            <minecraft:planks:2>,
            <minecraft:planks:3>,
            <minecraft:planks:4>,
            <minecraft:planks:5>,
            <minecraft:log>,
            <minecraft:log:1>,
            <minecraft:log:2>,
            <minecraft:log:3>,
            <minecraft:wooden_slab>,
            <minecraft:wooden_slab:1>,
            <minecraft:wooden_slab:2>,
            <minecraft:wooden_slab:3>,
            <minecraft:wooden_slab:4>,
            <minecraft:wooden_slab:5>,
            <minecraft:log2>,
            <minecraft:log2:1>,
        //Clay bricks and brick block/slab
            <minecraft:stone_slab:4>,
            <minecraft:brick_block>,
            <minecraft:brick>,
        //Ice, snow
            <minecraft:snow>,
            <minecraft:snow_layer>,
            <minecraft:snowball>,
            <minecraft:ice>,
            <minecraft:packed_ice>,
        //Clay and ball
            <minecraft:clay>,
            <minecraft:clay_ball>,
        //Pumkins
            <minecraft:lit_pumpkin>,
            <minecraft:pumpkin>,
        //Melon 
            <minecraft:melon_block>,
            <minecraft:melon>,
            <minecraft:speckled_melon>,
        //Mycelium
            <minecraft:mycelium>,
        //Terracotta
            <minecraft:hardened_clay>,
            <minecraft:stained_hardened_clay>,
            <minecraft:stained_hardened_clay:*>,
        //Concrete
            <minecraft:concrete>,
            <minecraft:concrete:*>,
        //Haybale, boneblock, cobweb
            <minecraft:hay_block>,
            <minecraft:bone_block>,
            <minecraft:web>,
        //Leaves
            <minecraft:leaves>,
            <minecraft:leaves:1>,
            <minecraft:leaves:2>,
            <minecraft:leaves:3>,
            <minecraft:leaves2>,
            <minecraft:leaves2:1>,

        //Grass, flowers, shrooms, cactus, vines, lily pad
            <minecraft:tallgrass:*>,
            <minecraft:deadbush>,
            <minecraft:yellow_flower>,
            <minecraft:red_flower>,
            <minecraft:red_flower:*>,
            <minecraft:brown_mushroom>,
            <minecraft:red_mushroom>,
            <minecraft:cactus>,
            <minecraft:vine>,
            <minecraft:waterlily>,
            <minecraft:double_plant:*>,
        //Torch and skulls
            <minecraft:torch>,
            <minecraft:skull>,
            <minecraft:skull:*>
    
        
    ]
  
    




    /*
    "Rafts" : [
        <jarm:jungle_raft>,
        <jarm:acacia_raft>,
        <jarm:dark_oak_raft>
    ]
    */
};

static liquids as ILiquidStack [] = [
    //MC liquids
        <liquid:water>,
        <liquid:lava>
    
];

static ores as IItemStack [][string] = {

};