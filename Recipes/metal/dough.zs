#priority 9800

var flour = <ore:foodFlour>;
//var transbladder = <primal_tech:fluid_bladder:1>.withTag({Fluid: {FluidName: "water", Amount: 1000}}).transformReplace(<primal_tech:fluid_bladder>);

var dough = <horsepower:dough>;
var water = <ore:listAllwater>;

//recipes.addShapeless("dough", dough, [transbladder, flour]);

recipes.removeByRecipeName("horsepower:dough");

recipes.addShapeless("dough_allwater", dough, [water, flour]);