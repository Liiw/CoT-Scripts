#priority 9800

var sawDust = <thermalfoundation:material:800>;
var dustSulfur = <thermalfoundation:material:771>;
var plankWood = <ore:plankWood>;
var coaldust = <ore:dustCoal>;

var flour = <horsepower:flour>;
var grain = <ore:listAllgrain>;




mods.immersiveengineering.Crusher.addRecipe(sawDust*12, plankWood, 2048);

mods.immersiveengineering.Crusher.addRecipe(flour*8, grain, 2048);

mods.immersiveengineering.Crusher.addRecipe(dustSulfur*2, coaldust, 2048);