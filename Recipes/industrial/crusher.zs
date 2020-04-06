#priority 9800

var sawDust = <thermalfoundation:material:800>;
var plankWood = <ore:plankWood>;

var flour = <horsepower:flour>;
var grain = <ore:listAllgrain>;


mods.immersiveengineering.Crusher.addRecipe(sawDust*12, plankWood, 2048);

mods.immersiveengineering.Crusher.addRecipe(flour*12, grain, 2048);
