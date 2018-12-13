
if mods["angelspetrochem"] then

if mods["pyhightech"] then

data.raw.entity["chipshooter"].ingredient_count = 15

local OV = angelsmods.functions.OV

OV.global_replace_item('basic-circuit-board', 'pcb1')
OV.global_replace_item('solid-clay', 'clay')
OV.global_replace_item('phenolic-board','phenolicboard')
OV.global_replace_item('glass-fiber','angels-coil-glass-fiber')
OV.global_replace_item('fibreglass-board','fiberglass')
OV.global_replace_item('fertiliser','py-fertilizer')
OV.global_replace_item('solid-fertilizer','py-fertilizer')
OV.global_replace_item("benzene", "gas-benzene")
OV.global_replace_item('propene','gas-propene')
OV.global_replace_item('acetone','gas-acetone')
OV.global_replace_item('chloromethane','gas-chlor-methane')
OV.global_replace_item('methane','gas-methane')
OV.global_replace_item('methanal','gas-formaldehyde')
OV.global_replace_item('ammonia','gas-ammonia')
--OV.global_replace_item('solid-clay','clay')
OV.global_replace_item('ech','gas-epichlorhydrin')
OV.global_replace_item('ethylene','gas-ethylene')


data.raw.resource["phosphate-rock"].minable.required_fluid = "gas-synthesis"

if mods["omnimatter_permutation"] then

	data:extend(
	{
		{
		type = "recipe",
		name = "nitrobenzene",
		category = "fbreactor",
		enabled = false,
		energy_required = 4,
		ingredients = 
			{
				{type = "fluid", name = "benzene", amount = 50},
				{type = "fluid", name = "sulfuric-acid", amount = 100},
				{type = "fluid", name = "ammonia", amount = 30}
			},
		results = 
			{
				{type = "fluid", name = "nitrobenzene", amount = 100}
			}
		}
	}
	)
	
end

--fix tech replacement
table.insert(data.raw["technology"] ["angels-sulfur-processing-1"].effects, { type = "unlock-recipe", recipe = "nitrobenzene" })

if mods["bobelectronics"] then

OV.global_replace_item('wooden-board','fiberboard')
OV.global_replace_item('advanced-processing-unit','intelligent-unit')
OV.global_replace_item('multi-layer-circuit-board','pcb4')
OV.global_replace_item('electronic-components','transistor')

	if mods["MomoTweak"] then
	
		data:extend(
		{
			{
				type = "recipe",
				name = "carbon-to-carbon",
				category = "crafting",
				energy_required = .1,
				enabled = "true",
				ingredients = 
					{
					{type = "item", name = "solid-carbon", amount = 1}
					},
				results = 
					{
					{type = "item", name = "carbon", amount = 1}
					},
				icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
				icon_size = 32,
				
			}
		}
		)
	end

end

if mods["bobmodules"] then

OV.global_replace_item('basic-electronic-components','resistor2')
OV.global_replace_item('processing-electronics','kondo-processor')
OV.global_replace_item('intergrated-electronics','microchip')
OV.global_replace_item('module-processor-board','pcb2')
OV.global_replace_item('module-processor-board-2','pcb3')
OV.global_replace_item('module-processor-board-3','pcb4')

end

if mods["angelsbioprocessing"] then
OV.global_replace_item('black-liquor','liquid-black-liquor')
OV.global_replace_item('acetic-acid','liquid-acetic-acid')
OV.global_replace_item('bio-raw-meat','meat')
angelsmods.functions.make_converter("black-liquor","liquid-black-liquor")
angelsmods.functions.make_converter("acetic-acid","liquid-acetic-acid")

	OV.patch_recipes(
	
		{
			{
				name = "solid-alginic-acid",
				category = "crafting"
			},
			
			{
				name = "wooden-board-paper",
				category = "crafting",
				ingredients = 
				{
					{type = "item", name = "solid-paper", amount = 4}
				}
			},
			
			{
				name = "biter-small-butchering",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 20},
						{type = "item", name = "bones", amount = 3}
					}
			},
		
			{
				name = "biter-medium-butchering",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 30},
						{type = "item", name = "bones", amount = 3}
					}
			},
		
			{
				name = "biter-big-butchering",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 60},
						{type = "item", name = "bones", amount = 5}
					}
			},
		
			{
				name = "fish-butchery-1",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 15},
						{type = "item", name = "bones", amount = 3}
					},
				main_product = "meat"
			},
		
			{
				name = "fish-butchery-2",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 25},
						{type = "item", name = "bones", amount = 2}
					},
				main_product = "meat"
			},
		
			{
				name = "fish-butchery-3",
				category = "crafting-with-fluid",
				results =
				
					{
						{type = "fluid", name = "blood", amount = 40},
						{type = "item", name = "bones", amount = 5}
					},
				main_product = "meat"
			}
		}
		
	)

end

if mods["angelssmelting"] then
OV.patch_recipes(
	{
		{
			name = "angels-glass-fiber-board", 
			energy_required = 25,
			ingredients = 
			{
			{"!!"},
			{type = "item", name = "angels-coil-glass-fiber", amount = 5},
			{type = "item", name = "epoxy", amount = 7},
			{type = "item", name = "plastic-bar", amount = 3},
			{type = "fluid", name = "boric-acid", amount = 150},
			{type = "fluid", name = "steam", amount = 200}
			
			},
			results = 
			{
			{type = "item", name = "fiberglass", amount = 1},
			},
		}
	}
)
end


if mods["Clowns-Processing"] then
data:extend({
{
type = "recipe",
    name = "phosphoric-acid-1",
    category = "distilator",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "fluid", name = "phosphorous-acid", amount = 30},
        {type = "fluid", name = "steam", amount = 120, temperature = 165},
        {type = "item", name = "raw-wood", amount = 10},
    },
    results = {
        {type = "fluid", name = "phosphoric-acid", amount = 15},
		{type = "fluid", name = "phosphine-gas", amount = 15},
    },
    main_product = "phosphine-gas",
}
})
table.insert(data.raw["technology"] ["basic-electronics"].effects, {type = "unlock-recipe", recipe = "phosphoric-acid-1"})
OV.global_replace_item('phosphorus-ore','phosphate-rock')
OV.global_replace_item('liquid-phosphoric-acid','phosphoric-acid')
angelsmods.functions.make_converter("liquid-phosphoric-acid","phosphoric-acid")
end

--Fluid Converter Recipes
angelsmods.functions.make_converter("gas-benzene", "benzene")
angelsmods.functions.make_converter("gas-propene","propene")
angelsmods.functions.make_converter("chloromethane","gas-chlor-methane")
angelsmods.functions.make_converter("methane","gas-methane")
angelsmods.functions.make_converter("ammonia","gas-ammonia")
angelsmods.functions.make_converter("ech","gas-epichlorhydrin")


data:extend({
	{
		type = "recipe",
		name = "steak",
		category = "hpf",
		enabled = false,
		energy_required = .75,
		ingredients = 
			{
				{type = "item", name = "meat", amount = 1}
			},
		results = 
			{
				{type = "item", name = "solid-carbon", amount = 1}
			}
	}
})			
		
table.insert(data.raw["technology"] ["bio-refugium-puffer"].effects, {type = "unlock-recipe", recipe = "steak"})	

end

end

if mods["KaoExtended"] then

	-- all the i/o parts are not updateing to use pyht parts
	RECIPE("simple-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("standart-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("advanced-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("predictive-io"):replace_ingredient('basic-electronic-components','resistor1')
	
	RECIPE("intelligent-unit"):add_ingredient({type = 'item', name = 'predictive-io', amount = 2})
end