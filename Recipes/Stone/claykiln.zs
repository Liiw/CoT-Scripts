#priority 9800

var kiln = <primal_tech:clay_kiln>;
var clay = <minecraft:clay_ball>;
var terracotta = <minecraft:hardened_clay>;



recipes.removeShaped(kiln, 
     [[clay, clay, clay],
      [clay, null, clay],
      [clay, clay, clay]]
);

recipes.addShaped("clayKiln",kiln,
    [[terracotta, terracotta, terracotta],
     [terracotta, null, terracotta],
     [terracotta, terracotta, terracotta]]
);