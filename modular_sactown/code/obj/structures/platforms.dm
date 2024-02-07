/obj/structure/platform
	name = "platform"
	desc = "A square metal surface resting on four legs."
	icon = 'modular_sactown/icons/structures/platforms.dmi'
	icon_state = "platform"
	density = TRUE
	anchored = TRUE
	layer = BELOW_OBJ_LAYER
	flags_1 = ON_BORDER_1
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	climbable = TRUE

/obj/structure/platform/Initialize(mapload)
	. = ..()
	update_icon()
	icon_state = null

/obj/structure/platform/update_overlays()
	. = ..()
	var/image/new_overlay

	if(dir & EAST)
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, EAST)
		new_overlay.pixel_x = 32
		. += new_overlay

	if(dir & WEST)
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, WEST)
		new_overlay.pixel_x = -32
		. += new_overlay

	if(dir & NORTH)
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, NORTH)
		new_overlay.pixel_y = 32
		new_overlay.layer = ABOVE_MOB_LAYER //perspective
		. += new_overlay

	if(dir & SOUTH)
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, SOUTH)
		new_overlay.pixel_y = -32
		. += new_overlay

	if(CHECK_MULTIPLE_BITFIELDS(dir, NORTHEAST))
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, NORTHEAST)
		new_overlay.pixel_y = 32
		new_overlay.pixel_x = 32
		new_overlay.layer = ABOVE_MOB_LAYER
		. += new_overlay

	if(CHECK_MULTIPLE_BITFIELDS(dir, NORTHWEST))
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, NORTHWEST)
		new_overlay.pixel_y = 32
		new_overlay.pixel_x = -32
		new_overlay.layer = ABOVE_MOB_LAYER
		. += new_overlay

	if(CHECK_MULTIPLE_BITFIELDS(dir, SOUTHEAST))
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, SOUTHEAST)
		new_overlay.pixel_y = -32
		new_overlay.pixel_x = 32
		. += new_overlay

	if(CHECK_MULTIPLE_BITFIELDS(dir, SOUTHWEST))
		new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, SOUTHWEST)
		new_overlay.pixel_y = -32
		new_overlay.pixel_x = -32
		. += new_overlay

/obj/structure/platform/CanPass(atom/movable/mover, border_dir)
	. = ..()
	if(border_dir & dir)
		return . || mover.throwing || mover.movement_type & (FLYING | FLOATING)
	return TRUE

/obj/structure/platform/do_climb(atom/movable/A)
	if(loc != A.loc)
		return ..()
	if(climbable)
		density = FALSE
		. = step(A,dir)
		density = TRUE

/obj/structure/platform/CanAStarPass(obj/item/card/id/ID, to_dir, atom/movable/caller, no_id = FALSE)
	if(!(to_dir & dir))
		return TRUE
	return ..()

/obj/structure/platform/rockcliff
	icon_state = "rockcliff"
	name = "rock cliff"
	desc = "A collection of stones and rocks that form a steep cliff, it looks climbable."

/obj/structure/platform/rockcliff/icycliff
	icon_state = "icerock"

/obj/structure/platform/metalplatform
	icon_state = "metalplatform"

/obj/structure/platform/trench
	icon_state = "platformtrench"
	name = "trench wall"
	desc = "A group of roughly cut planks forming the side of a dug in trench."

/obj/structure/platform/adobe
	name = "brick wall"
	desc = "A low adobe brick wall."
	icon_state = "adobe"

//decorative corner platform bits
/obj/structure/platform_decoration
	name = "platform"
	desc = "A square metal surface resting on four legs."
	icon = 'modular_sactown/icons/structures/platforms.dmi'
	icon_state = "platform_deco"
	flags_1 = ON_BORDER_1
	anchored = TRUE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	mouse_opacity = MOUSE_OPACITY_TRANSPARENT

/obj/structure/platform_decoration/Initialize(mapload)
	. = ..()
	switch(dir)
		if(NORTH)
			layer = ABOVE_MOB_LAYER
		if(SOUTH)
			layer = ABOVE_MOB_LAYER
		if(SOUTHEAST)
			layer = ABOVE_MOB_LAYER
		if(SOUTHWEST)
			layer = ABOVE_MOB_LAYER

/obj/structure/platform_decoration/rockcliff_deco
	icon_state = "rockcliff_deco"
	name = "rock cliff"
	desc = "A collection of stones and rocks that form a steep cliff, it looks climbable."

/obj/structure/platform_decoration/rockcliff_deco/icycliff_deco
	icon_state = "icerock_deco"

/obj/structure/platform_decoration/metalplatform_deco
	icon_state = "metalplatform_deco"

/obj/structure/platform_decoration/adobe_deco
	icon_state = "adobe_deco"

/obj/structure/platform_stairs
	name = "stairs"
	desc = "A staircase."
	icon = 'modular_sactown/icons/structures/platform_stairs.dmi'
	icon_state = "railstairs_seamless"
	layer = TURF_LAYER
	anchored = TRUE
	density = FALSE
	opacity = FALSE
	resistance_flags = INDESTRUCTIBLE | LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF

/obj/structure/platform_stairs/vert
	icon_state = "railstairs_seamless_vert"

/obj/structure/platform_stairs/adobe
	icon_state = "adobe_stairs"

/obj/structure/platform_stairs/adobe/Initialize(mapload)
	. = ..()
	update_icon()

/obj/structure/platform_stairs/adobe/update_overlays()
	. = ..()
	if(dir == WEST || dir == EAST)
		var/image/new_overlay = image(icon, src, "[initial(icon_state)]_overlay", layer, dir)
		new_overlay.layer = ABOVE_MOB_LAYER
		. += new_overlay

/obj/structure/platform_stairs/adobe/straight
	icon_state = "adobe_stairs_straight"

/obj/structure/platform_stairs/adobe_vert //north and west
	icon_state = "adobe_stairs_vertical"

/obj/structure/platform_stairs/adobe_vert/straight
	icon_state = "adobe_stairs_vertical_straight"
