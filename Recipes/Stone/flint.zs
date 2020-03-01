#priority 9800

var wicker = <ore:wicker>;
var flint = <minecraft:flint>;
var gravel = <ore:gravel>;

//recipes.addShapeless(output,inputs,function,action)

recipes.addShapeless("flint", flint, [wicker.reuse(), gravel]);