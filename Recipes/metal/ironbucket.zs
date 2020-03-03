#priority 9800

val iron = <minecraft:iron_ingot>;
val bucket = <ore:bucket>;


recipes.remove(bucket);
recipes.removeShaped(bucket, 
     [[null, null, null],
     [iron, null, iron],
     [null, iron, null]]
);