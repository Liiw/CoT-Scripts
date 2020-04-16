#priority 9800

var concSheet = <immersiveengineering:stone_device:3>;
var concPanel = <immersiveengineering:stone_device:4>;
var concSlab = <immersiveengineering:stone_decoration_slab:5>;
var concChunk = <immersiveengineering:stone_device:5>;
var concrete = <immersiveengineering:stone_decoration:5>;

recipes.addShapeless("conc_panel", concPanel, [concSheet, concSheet]);
recipes.addShapeless("conc_slab", concSlab, [concPanel, concPanel]);
recipes.addShapeless("CoT_conc", concrete, [concChunk, concChunk]);