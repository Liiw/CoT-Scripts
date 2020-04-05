#priority 9800

var stone = <minecraft:stone>;
var cobble = <minecraft:cobblestone>;
var mossStone = <minecraft:mossy_cobblestone>;
var stick = <minecraft:stick>;

var stone_club = <primal_tech:stone_club>;
var stone_axe = <minecraft:stone_axe>;
var stone_pick = <minecraft:stone_pickaxe>;
var stone_shovel = <minecraft:stone_shovel>;
var stone_sword = <minecraft:stone_sword>;

var cobbleore = <ore:cobbleStones>;

cobbleore.add(cobble);
cobbleore.add(mossStone);



//Remove cobble recipes
    recipes.removeShaped(stone_club, 
        [[null, cobble, null],
         [null, stick, null],
         [null, null, null]]
    );

    recipes.removeShaped(stone_axe, 
        [[cobble, cobble, null],
         [cobble, stick, null],
         [null, stick, null]]
    );

    recipes.removeShaped(stone_pick, 
        [[cobble, cobble, cobble],
         [null, stick, null],
         [null, stick, null]] 
    );

    recipes.removeShaped(stone_shovel, 
        [[null, cobble, null],
         [null, stick, null],
         [null, stick, null]]
    );

    recipes.removeShaped(stone_sword, 
        [[null, cobble, null],
         [null, cobble, null],
         [null, stick, null]] 
    );



//Add stone recipes

    
    recipes.addShaped("stoneClub",stone_club,
        [[null, stone, null],
         [null, stick, null],
         [null, null, null]]    
    );

    recipes.addShaped("stoneAxe",stone_axe,
        [[stone, stone, null],
         [stone, stick, null],
         [null, stick, null]]    
    );

    recipes.addShaped("stonePick",stone_pick,
        [[stone, stone, stone],
         [null, stick, null],
         [null, stick, null]]    
    );

    recipes.addShaped("stoneShovel",stone_shovel,
        [[null, stone, null],
         [null, stick, null],
         [null, stick, null]]    
    );

    recipes.addShaped("stoneSword",stone_sword,
        [[null, stone, null],
         [null, stone, null],
         [null, stick, null]]    
    );