// see code/module/crafting/table.dm

////////////////////////////////////////////////"MEXICAN"////////////////////////////////////////////////

/datum/crafting_recipe/food/burrito
	name ="Burrito"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 2
	)
	result = /obj/item/reagent_containers/food/snacks/burrito
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/cheesyburrito
	name ="Cheesy burrito"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 2,
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 1
	)
	result = /obj/item/reagent_containers/food/snacks/cheesyburrito
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/enchiladas
	name = "Enchiladas"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/grown/chili = 2,
		/obj/item/reagent_containers/food/snacks/tortilla = 2
	)
	result = /obj/item/reagent_containers/food/snacks/enchiladas
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/carneburrito
	name ="Carne de asada burrito"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 2,
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 1
	)
	result = /obj/item/reagent_containers/food/snacks/carneburrito
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/fuegoburrito
	name ="Fuego plasma burrito"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/obj/item/reagent_containers/food/snacks/grown/ghost_chili = 2,
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 1
	)
	result = /obj/item/reagent_containers/food/snacks/fuegoburrito
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/taco
	name ="Classic Taco"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1,
		/obj/item/reagent_containers/food/snacks/grown/cabbage = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/taco
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/tacoplain
	name ="Plain Taco"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/tortilla = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1,
	)
	result = /obj/item/reagent_containers/food/snacks/taco/plain
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/nachos
	name ="Nachos"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/reagent_containers/food/snacks/tortilla = 1
	)
	result = /obj/item/reagent_containers/food/snacks/nachos
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/cheesynachos
	name ="Cheesy nachos"
	reqs = list(
		/datum/reagent/consumable/sodiumchloride = 1,
		/obj/item/reagent_containers/food/snacks/cheesewedge = 1,
		/obj/item/reagent_containers/food/snacks/tortilla = 1
	)
	result = /obj/item/reagent_containers/food/snacks/cheesynachos
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/cubannachos
	name ="Cuban nachos"
	reqs = list(
		/datum/reagent/consumable/ketchup = 5,
		/obj/item/reagent_containers/food/snacks/grown/chili = 2,
		/obj/item/reagent_containers/food/snacks/tortilla = 1
	)
	result = /obj/item/reagent_containers/food/snacks/cubannachos
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/chimi
	name ="Classic Chimichanga"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/meat/cutlet = 1,
		/obj/item/reagent_containers/food/snacks/grown/chili = 2,
		/obj/item/reagent_containers/food/snacks/tortilla = 1
	)
	result = /obj/item/reagent_containers/food/snacks/classicchimichanga
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/vegggiechimi
	name ="vegetiable Chimichanga"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 1,
		/obj/item/reagent_containers/food/snacks/grown/chili = 2,
		/obj/item/reagent_containers/food/snacks/tortilla = 1
	)
	result = /obj/item/reagent_containers/food/snacks/veggiechimichanga
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/refriedbeans
	name ="refried beans"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/grown/soybeans = 5
	)
	result = /obj/item/reagent_containers/food/snacks/refriedbeans
	subcategory = CAT_MEAT

/datum/crafting_recipe/food/spanishrice
	name ="spanish rice"
	reqs = list(
		/obj/item/reagent_containers/food/snacks/grown/chili = 2,
		/obj/item/reagent_containers/food/condiment/rice = 5,
		/obj/item/reagent_containers/food/snacks/grown/tomato = 1
	)
	result = /obj/item/reagent_containers/food/snacks/spanish_rice
	subcategory = CAT_MEAT
