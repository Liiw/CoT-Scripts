#priority 9800

import mods.dropt.Dropt;

Dropt.list("gems")

  .add(Dropt.rule()
      .matchBlocks(["geolosys:ore_vanilla:6"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
          .items([<minecraft:emerald>], Dropt.range(1, 4))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
          .items([<projectred-core:resource_item:200>], Dropt.range(1, 4))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
          .items([<projectred-core:resource_item:201>], Dropt.range(1, 4))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
          .items([<projectred-core:resource_item:202>], Dropt.range(1, 4))
      )
  );
