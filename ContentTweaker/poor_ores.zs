#norun
#priority 10500
#loader contenttweaker


import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;

static matCols as string[string] = {
    "Iron":"f6dcb4",
    "Copper": "b05a09",
    "Tin":"b5b48a",
    "Lead":"555c73",
    "Aluminum":"dab2b2",
    "Platinum":"25a7c4",
    "Uranium":"36472f",
    "Nickel":"7f9974",
    "Coal":"2b2b2b",
    "Redstone":"b80606",
    "Gold":"e6c700",
    "Lapis":"143cb5",
    "Quartz":"afafb3",
    "Diamond":"bdfffe",
    "Emerald":"16f56f",
};


for i in matCols.keys {
    //print("MATERIAL IS: " + i);
    
    var mat = MaterialSystem.getMaterialBuilder()
        .setName(i)
        .setColor(Color.fromHex(matCols[i]))
        .build();


    mat.registerParts(["poor_ore"] as string[]);
}





//registerPartsForMaterial(Material material, String[] partNames);

//MaterialSystem.registerPartsForMaterial(iron as IMaterial, ["poor_ore"]);
//print("TEST2");
//iron.registerPart("poor_ore");