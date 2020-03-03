#priority 9800

var researchtable = <researchtable:table>;

var vacuumtube = <ore:electronTube>;
var aluminumscaffolding = <ore:scaffoldingAluminum>;
var currenttransformer = <immersiveengineering:connector:11>;
var clock = <minecraft:clock>;
var fluidrouter = <immersiveengineering:wooden_device0:7>;
var itemrouter = <immersiveengineering:wooden_device0:3>;



recipes.addShaped("researchTable",researchtable,
    [[vacuumtube, currenttransformer, vacuumtube],
     [itemrouter, clock, fluidrouter],
     [aluminumscaffolding, aluminumscaffolding, aluminumscaffolding]]    
);