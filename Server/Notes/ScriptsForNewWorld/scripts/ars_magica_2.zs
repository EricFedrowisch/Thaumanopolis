//Ars Magica 2 Recipes for MagiTechCraft Lite Edition [1.7.10]
val orbBlue = <arsmagica2:rune:17>;
val orbGreen = <arsmagica2:rune:18>;
val orbRed = <arsmagica2:rune:19>;
val vinteum = <ore:dustVinteum>;
val purified = <arsmagica2:itemOre:3>; 
 
//Recipe 1 for Blue Infinity Orb
recipes.addShaped(orbBlue, [[vinteum, vinteum, vinteum],
                            [vinteum, <minecraft:diamond_block>, vinteum], 
                            [vinteum, vinteum, vinteum]]  );
//Recipe 2 for Blue Infinity Orb
recipes.addShaped(orbBlue, [[purified, purified, purified],                                         
                            [purified,  <ore:gemDiamond>, purified], 
                            [purified, purified, purified]]  );
//Recipe for Making Green Orbs from 3 Blue
recipes.addShapeless(orbGreen, [orbBlue, orbBlue, orbBlue]);
//Recipe for Making Red Orbs from 3 Green
recipes.addShapeless(orbRed, [orbGreen, orbGreen, orbGreen]);
