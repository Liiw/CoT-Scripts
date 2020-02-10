import crafttweaker.item.IIngredient;


var twig = <basketcase:item_twig>;
var cordage = <basketcase:item_cordage>;
var flint = <minecraft:flint>;
var stick = <minecraft:stick>;

var flintaxe = <tconstruct:hatchet>.withTag(
    {
        StatsOriginal: 
        {
            AttackSpeedMultiplier: 1.0 as float, 
            MiningSpeed: 5.0 as float, FreeModifiers: 3, 
            Durability: 33, HarvestLevel: 1, 
            Attack: 3.4 as float
        }, 
        display: 
            {Name: "Flint Axe"}, 
        Stats: 
        {
            AttackSpeedMultiplier: 1.0 as float, 
            MiningSpeed: 5.0 as float, 
            FreeModifiers: 3, 
            Durability: 33, 
            HarvestLevel: 1, 
            Attack: 3.4 as float}, 
            Special: 
            {
                Categories: ["harvest", "weapon", "aoe", "tool"]}, 
                TinkerData: 
                {
                    Materials: ["stone", "flint", "wood"], 
                    Modifiers: ["toolleveling"]
                }, 
                Modifiers: 
                [
                    {
                        identifier: "cheap", 
                        color: -6710887, 
                        level: 1
                    }, 
                    {
                        identifier: "crude", 
                        color: -9868951, 
                        level: 2, 
                        crude2: 1 as byte
                    }, 
                    {
                        identifier: "ecological", 
                        color: -7444965, 
                        level: 1
                    }, 
                    {
                        identifier: "toolleveling", 
                        color: 16777215, 
                        level: 1
                    }
                ], 
            Traits: 
            [
                "cheap",
                "crude2", 
                "ecological", 
                "toolleveling"
            ]
        }
    );


//recipes.addShapeless(name,output,inputs,function,action)
recipes.addShapeless("stickfromtwigs", stick, [twig, twig]);
recipes.addShapeless("flintaxe", flintaxe ,[twig, stick, flint, stick]);
