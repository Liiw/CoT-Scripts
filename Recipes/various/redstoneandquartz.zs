#priority 9800

import crafttweaker.item.IItemStack;

var redOre = <ore:oreRedstone>;
var quartzOre = <ore:oreBlockQuartz>;

static redStones as IItemStack[] = [
    <pyrotech:dense_redstone_ore_large>,
    <pyrotech:dense_redstone_ore_small>,
    <pyrotech:dense_redstone_ore_rocks>,
    <pyrotech:dense_redstone_ore_large_inactive>,
    <pyrotech:dense_redstone_ore_small_inactive>,
    <pyrotech:dense_redstone_ore_rocks_inactive>

];

static quartzStones as IItemStack[] = [
    <pyrotech:dense_quartz_ore_large>,
    <pyrotech:dense_quartz_ore_small>,
    <pyrotech:dense_quartz_ore_rocks>

];


for stone in redStones {
    redOre.add(stone);
}

for q in quartzStones {
    quartzOre.add(q);
}