#priority 9400

import scripts.classes.Stage;

import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

static name as string = "culinary";

static substages as string[int] = {
    1 : "culinary_1"
};

static mods as string[][int] = {
    1 : [
        "cookingforblockheads",
        "harvestcraft",
        "brewcraft"
    ]
};

static items as IItemStack [][int]  = {
  1 : [
    //Minecraft
      <minecraft:baked_potato>,
      <minecraft:beetroot_soup>,
      <minecraft:bread>,
      <minecraft:cake>,
      <minecraft:carrot>,
      <minecraft:chicken>,
      <minecraft:chorus_flower>,
      <minecraft:chorus_fruit>,
      <minecraft:chorus_fruit_popped>,
      <minecraft:chorus_plant>,
      <minecraft:cooked_beef>,
      <minecraft:cooked_chicken>,
      <minecraft:cooked_cod>,
      <minecraft:cooked_fish>,
      <minecraft:cooked_fish:1>,
      <minecraft:cooked_mutton>,
      <minecraft:cooked_porkchop>,
      <minecraft:cooked_rabbit>,
      <minecraft:cooked_salmon>,
      <minecraft:cookie>,
      <minecraft:egg>,
      <minecraft:fish>,
      <minecraft:fish:1>,
      <minecraft:fish:2>,
      <minecraft:fish:3>,
      <minecraft:golden_apple>,
      <minecraft:golden_apple:1>,
      <minecraft:melon>,
      <minecraft:melon_block>,
      <minecraft:milk_bucket>,
      <minecraft:mushroom_stew>,
      <minecraft:mutton>,
      <minecraft:poisonous_potato>,
      <minecraft:porkchop>,
      <minecraft:potato>,
      <minecraft:pufferfish>,
      <minecraft:pumpkin>,
      <minecraft:pumpkin_pie>,
      <minecraft:rabbit>,
      <minecraft:rabbit_foot>,
      <minecraft:rabbit_stew>,
      <minecraft:red_mushroom>,
      <minecraft:red_mushroom_block>,
      <minecraft:reeds>,
      <minecraft:rotten_flesh>,
      <minecraft:salmon>,
      <minecraft:speckled_melon>,
      <minecraft:spider_eye>,
      <minecraft:sugar>,
      <minecraft:wheat>
  ]

};

static liquids as ILiquidStack [][int] = {
  1:[
    <liquid:milk>
  ]
};

static ores as IItemStack [][int] = {
  1 : []

};

static class as Stage  = Stage(
    name,
    substages,
    mods,
    items,
    liquids,
    ores
);