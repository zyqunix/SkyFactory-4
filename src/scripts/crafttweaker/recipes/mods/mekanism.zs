/*
    SkyFactory 4 Mekanism Recipe Script

    This script handles the recipes for Mekanism.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
    Shaped Recipes
*/
val DEC = <appliedenergistics2:dense_energy_cell>;
val REC = <appliedenergistics2:energy_cell>;
val LIB = <nuclearcraft:lithium_ion_battery_elite>;
val CRF = <thermaldynamics:duct_0:5>;
val US_ = <extendedcrafting:singularity_ultimate>;
val AA_ = <mekanism:atomicalloy>;
val UCC = <mekanism:controlcircuit:3>;
val NEU = <nuclearcraft:upgrade:1>;
val MEU = <mekanism:energyupgrade>;
val EU2 = <teslacorelib:energy_tier2>;
val OEU = <matteroverdrive:upgrade:2>;
val PC3 = <rftoolspower:cell3>;
val UIC = <mekanism:basicblock2:3>.withTag({tier: 3, mekData: {}});
val UIP = <mekanism:basicblock2:4>.withTag({tier: 3, mekData: {}});

static shapedRecipes as IIngredient[][][][IItemStack] = {
	// Creative Energy Cube Recipe
	<mekanism:energycube>.withTag({tier: 4, mekData: {}}): [
		// 1     2     3     4     5     6     7     8     9
		[
			AA_, NEU, OEU, NEU, OEU, NEU, OEU, NEU, AA_
		],
		[
			MEU, DEC, DEC, LIB, LIB, LIB, DEC, DEC, MEU
		],
		[
			OEU, DEC, REC, CRF, EU2, CRF, REC, DEC, OEU
		],
		[
			MEU, CRF, UIC, UIC, UIC, UIC, UIC, CRF, MEU
		],
		[
			OEU, EU2, UIC, US_, UIP, US_, UIC, EU2, OEU
		],
		[
			MEU, CRF, UIC, UIC, UIC, UIC, UIC, CRF, MEU
		],
		[
			OEU, DEC, REC, CRF, EU2, CRF, REC, DEC, OEU
		],
		[
			MEU, DEC, DEC, LIB, LIB, LIB, DEC, DEC, MEU
		],
		[
			AA_, NEU, OEU, NEU, OEU, NEU, OEU, NEU, AA_
		]
	],
	// Wind Generator
	<mekanismgenerators:generator:6>:  [
		[
			[null, <mekanismgenerators:turbineblade>, null],
			[<mekanism:ingot:1>, <mekanism:controlcircuit:3>, <mekanism:ingot:1>],
			[<mekanism:ingot:1>, <mekanism:energycube>.withTag({tier: 1, mekData: {}}), <mekanism:ingot:1>]
		]
	]

};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {
};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<mekanismgenerators:generator:6>
];

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
