#priority 9800

val iron = <minecraft:iron_ingot>;
val bucket = <minecraft:bucket>;

recipes.removeShaped(bucket, 
     [[null, null, null],
     [iron, null, iron],
     [null, iron, null]]
);