import crafttweaker.oredict.IOreDictEntry;


var orePlank = <ore:plankWood>;
var oreWood = <ore:logWood>;

print("OREDICT LISTINGS SHOULD START HERE!");

for plank in orePlank.items {
  print(plank.name);
}

for log in oreWood.items {
  print(log.name);
}