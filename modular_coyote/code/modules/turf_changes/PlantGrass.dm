// Refactors plant grass to work on multiple turfs.
// I'm going to grab you by the antlers and stick every point of it up your ass

// pascal deez nuts
/turf/open/proc/plantGrass(Plantforce = FALSE)
	if(!prob(RAND_PLANT_CHANCE))
		return FALSE
	if(locate(/obj/structure/flora) in src)
		return FALSE
	if((locate(/obj/structure) in src))
		return FALSE
	if((locate(/obj/machinery) in src))
		return FALSE
	var/obj/structure/flora/randPlant
	var/floratype = pickweight(GLOB.plant_type_weighted)
	switch(floratype)
		if("medicinal")
			randPlant = pickweight(GLOB.medicinal_plant_list)
		if("tree")
			randPlant = pickweight(GLOB.tree_plant_list)
		if("grass")
			randPlant = pickweight(GLOB.grass_plant_list)
	if(randPlant)
		new randPlant(src)
		return TRUE

/turf/open/
	var/spawnPlants = FALSE
	// var/obj/structure/flora/turfPlant // jon, this dels harder than my dick in ur ass

/turf/open/Initialize(mapload)
	if(mapload && spawnPlants && !is_reserved_level(z))
		plantGrass()
	. = ..()

/turf/open/ChangeTurf(path, new_baseturf, flags)
	for(var/obj/structure/flora/turfPlant in contents)
		qdel(turfPlant)
	. =  ..()

/turf/open/indestructible/ground/outside/dirt
	spawnPlants = TRUE

/turf/open/indestructible/ground/outside/savannah
	spawnPlants = TRUE

/turf/open/indestructible/ground/outside/dirt_s
	spawnPlants = TRUE

/turf/open/indestructible/ground/outside/grass_s
	spawnPlants = TRUE

/turf/open/indestructible/ground/outside/desert
	spawnPlants = TRUE

// lets do shit by hand for this
/turf/open/indestructible/ground/outside/desert/adobe
	spawnPlants = FALSE

/turf/open/floor/plating/f13/outside/desert
	spawnPlants = TRUE
