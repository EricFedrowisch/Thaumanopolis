//Assign local variables
val wire = <powersuits:powerArmorComponent>;
val parachute = <powersuits:powerArmorComponent:8>;
val BasicPlating = <powersuits:powerArmorComponent:9>;
val AdvancedPlating = <powersuits:powerArmorComponent:10>;
val circuit = <IC2:itemPartCircuit>;
val advCircuit = <IC2:itemPartCircuitAdv>;
val controlCircuit = <powersuits:powerArmorComponent:14>;
val wiring = <powersuits:powerArmorComponent>;
val ironPlate = <IC2:itemPlates:4>;
val helmet = <powersuits:item.powerArmorHelmet>;
val chest = <powersuits:item.powerArmorChestplate>;
val leggings = <powersuits:item.powerArmorLeggings>;
val boots = <powersuits:item.powerArmorBoots>;
val fist = <powersuits:item.powerFist>;
val goldWire = <IC2:itemCable:2>;
val LVCapacitor = <powersuits:powerArmorComponent:5>;
val MVCapacitor = <powersuits:powerArmorComponent:6>;
val HVCapacitor = <powersuits:powerArmorComponent:7>;
val solenoid = <powersuits:powerArmorComponent:1>;
val wing = <powersuits:powerArmorComponent:3>;
val servo = <powersuits:powerArmorComponent:2>;
val fieldEmitter = <powersuits:powerArmorComponent:11>;
val ion = <powersuits:powerArmorComponent:4>;
val hologram = <powersuits:powerArmorComponent:12>;
//Remove broken recipes
recipes.remove(BasicPlating);
recipes.remove(AdvancedPlating);
recipes.remove(controlCircuit);
recipes.remove(<powersuits:tile.tinkerTable>);
recipes.remove(helmet);
recipes.remove(chest);
recipes.remove(leggings);
recipes.remove(boots);
recipes.remove(wire);
recipes.remove(parachute);
recipes.remove(fist);
recipes.remove(LVCapacitor);
recipes.remove(MVCapacitor);
recipes.remove(HVCapacitor);
recipes.remove(solenoid);
recipes.remove(wing);
recipes.remove(servo);
recipes.remove(fieldEmitter);
recipes.remove(ion);
recipes.remove(hologram);

recipes.addShaped(hologram, [
                            [<minecraft:glowstone_dust>, <ore:blockGlass>, <ore:dyeGreen>], 
                            [<ore:blockGlass>, <minecraft:iron_ingot>, <ore:blockGlass>],
                            [<ore:dyeBlue>, <ore:blockGlass>, <ore:dyeRed>]
                            ]);


recipes.addShapedMirrored(BasicPlating, [
                                        [<minecraft:iron_ingot>, <minecraft:iron_ingot>, null], 
                                        [circuit, <minecraft:iron_ingot>, null],
                                        [<minecraft:iron_ingot>, <minecraft:iron_ingot>, null]
                                        ]);

recipes.addShapedMirrored(AdvancedPlating, [
                                           [<minecraft:diamond>, <minecraft:diamond>, null], 
                                           [advCircuit, <minecraft:diamond>, null],
                                           [<minecraft:diamond>, <minecraft:diamond>, null]
                                           ]);

recipes.addShapedMirrored(controlCircuit, [
                                          [wiring, <ore:dyeGreen>, <ore:ingotGold>], 
                                          [<minecraft:redstone>, circuit, <ore:dyeGreen>],
                                          [<ore:ingotGold>, <ore:dyeGreen>, wiring]
                                          ]);

recipes.addShapedMirrored(<powersuits:tile.tinkerTable>, [
                                          [null, <minecraft:emerald>, null], 
                                          [ironPlate, circuit, ironPlate],
                                          [null, <IC2:blockMachine>, null]
                                          ]);

recipes.addShaped(helmet, [
                          [ironPlate, ironPlate, ironPlate], 
                          [circuit, null, circuit],
                          [null, null, null]
                          ]);

recipes.addShaped(chest, [
                          [ironPlate, null, ironPlate], 
                          [circuit, ironPlate, circuit],
                          [ironPlate, ironPlate, ironPlate]
                          ]);

recipes.addShaped(leggings, [
                          [ironPlate, ironPlate, ironPlate], 
                          [circuit, null, circuit],
                          [ironPlate, null, ironPlate]
                          ]);

recipes.addShaped(boots, [
                          [null, null, null], 
                          [circuit, null, circuit],
                          [ironPlate, null, ironPlate]
                          ]);

recipes.addShaped(fist, [
                          [null, circuit, null], 
                          [circuit, ironPlate, null],
                          [null, ironPlate, circuit]
                          ]);

recipes.addShaped(wire * 8, [
                            [null, null, null], 
                            [goldWire, <minecraft:redstone>, goldWire],
                            [null, null, null]
                            ]);

recipes.addShaped(parachute, [
                             [<minecraft:wool:*>, <minecraft:wool:*>, <minecraft:wool:*>], 
                             [<minecraft:string>, null, <minecraft:string>],
                             [<IC2:itemPartCarbonPlate>, null, <IC2:itemPartCarbonPlate>]
                             ]);

recipes.addShaped(LVCapacitor, [
                               [wiring, <IC2:blockElectric:3>, wiring], 
                               [wiring, null, wiring],
                               [null, null, null]
                               ]);

recipes.addShaped(MVCapacitor, [
                               [wiring, <IC2:blockElectric:4>, wiring], 
                               [wiring, null, wiring],
                               [null, null, null]
                               ]);

recipes.addShaped(HVCapacitor, [
                               [wiring, <IC2:blockElectric:5>, wiring], 
                               [wiring, null, wiring],
                               [null, null, null]
                               ]);

recipes.addShaped(solenoid, [
                               [wiring, ironPlate, wiring], 
                               [wiring, circuit , wiring],
                               [wiring, ironPlate, wiring]
                               ]);

recipes.addShaped(wing, [
                               [null, <IC2:itemPartCarbonPlate>, <IC2:itemPartCarbonPlate>], 
                               [<IC2:itemPartCarbonPlate>, <IC2:itemPartCarbonPlate> , solenoid],
                               [<IC2:itemPartCarbonPlate>, null, null]
                               ]);

recipes.addShaped(servo, [
                               [wiring, circuit , wiring], 
                               [solenoid, <IC2:itemPartCarbonPlate> , solenoid],
                               [wiring, circuit , wiring]
                               ]);

recipes.addShaped(fieldEmitter, [
                               [<minecraft:ender_pearl>, solenoid , <minecraft:ender_pearl>], 
                               [solenoid, advCircuit , solenoid],
                               [<minecraft:ender_pearl>, solenoid , <minecraft:ender_pearl>]
                               ]);

recipes.addShaped(ion, [
                               [null, fieldEmitter , solenoid], 
                               [<IC2:blockMachine:12>, <ore:dustGlowstone> , null],
                               [advCircuit, fieldEmitter , solenoid]
                               ]);



