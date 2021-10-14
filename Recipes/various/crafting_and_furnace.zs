#priority 9300

import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;

static ingots as IIngredient[] = [
    <ore:ingotAluminum>,
    <ore:ingotArdite>,
    <ore:ingotCobalt>,
    <ore:ingotCopper>,
    <ore:ingotGold>,
    <ore:ingotIridium>,
    <ore:ingotIron>,
    <ore:ingotLead>,
    <ore:ingotMithril>,
    <ore:ingotNickel>,
    <ore:ingotOctine>,
    <ore:ingotOsmium>,
    <ore:ingotPlatinum>,
    <ore:ingotSilver>,
    <ore:ingotSyrmorite>,
    <ore:ingotTin>,
    <ore:ingotUranium>
    ];

static nuggets as IIngredient[] = [
    <ore:nuggetAluminum>,
    <ore:nuggetArdite>,
    <ore:nuggetCobalt>,
    <ore:nuggetCopper>,
    <ore:nuggetGold>,
    <ore:nuggetIridium>,
    <ore:nuggetIron>,
    <ore:nuggetLead>,
    <ore:nuggetMithril>,
    <ore:nuggetNickel>,
    <ore:nuggetOctine>,
    <ore:nuggetOsmium>,
    <ore:nuggetPlatinum>,
    <ore:nuggetSilver>,
    <ore:nuggetSyrmorite>,
    <ore:nuggetTin>,
    <ore:nuggetUranium>
];


//var thermalcopper = <thermalfoundation:material:128>;
var i = 0;
for c in ingots{
    
    furnace.remove(c);




    var OD as IOreDictEntry = c;

    
    
        recipes.addShaped("Cot_nugget"+i,OD.firstItem,
        [[nuggets[i], nuggets[i], nuggets[i]],
         [nuggets[i], nuggets[i], nuggets[i]],
         [nuggets[i], nuggets[i], nuggets[i]]]);

    
    

    i = i + 1;

}

//furnace.remove(thermalcopper);