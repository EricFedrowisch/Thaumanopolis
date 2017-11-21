//Fix broken Auto Crafting table recipe
recipes.remove(<betterstorage:craftingStation>);
recipes.addShaped(<betterstorage:craftingStation>, [[<minecraft:stonebrick>, <minecraft:light_weighted_pressure_plate>, <minecraft:stonebrick>], 
                                                    [<minecraft:piston>, <minecraft:crafting_table>, <minecraft:piston>],
                                                    [<ore:plankWood>, <ore:chestWood>, <ore:plankWood>] 
                                                   ]);
