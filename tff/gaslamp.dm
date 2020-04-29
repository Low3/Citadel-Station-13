#define GONDOLA_HEIGHT pick("gondola_body_long", "gondola_body_medium", "gondola_body_short")
#define GONDOLA_COLOR pick("A87855", "915E48", "683E2C")
#define GONDOLA_MOUSTACHE pick("gondola_moustache_large", "gondola_moustache_small")
#define GONDOLA_EYES pick("gondola_eyes_close", "gondola_eyes_far")

//Gaslamps for Shenya8100(copied from gondolas)

/mob/living/simple_animal/pet/gaslamp
	name = "gaslamp"
	real_name = "gaslamp"
	desc = "gaslamp"

	response_help   = "brushes"	// If clicked on help intent
	response_disarm = "pushes" // If clicked on disarm intent
	response_harm   = "swats"	// If clicked on harm intent

	faction = list("gaslamp")
	turns_per_move = 10

	icon_state = "gaslamp"
	icon_living = "gaslamp"
	icon = 'icons/mob/vore32x64.dmi'

	loot = list(/obj/effect/decal/cleanable/blood/gibs)

	//Gondolas aren't affected by cold.
	atmos_requirements = list("min_oxy" = 0, "max_oxy" = 5, "min_tox" = 1, "max_tox" = 0, "min_co2" = 0, "max_co2" = 0, "min_n2" = 0, "max_n2" = 0)
	minbodytemp = 0
	maxbodytemp = 1500

	maxHealth = 200
	health = 200
	del_on_death = TRUE

	//attacks
	melee_damage_lower = 15 // Because fuck anyone who hurts this sweet, innocent creature.
	melee_damage_upper = 15
	attacktext = "thrashed"


/mob/living/simple_animal/pet/gaslamp/Initialize()
	. = ..()

/mob/living/simple_animal/pet/gaslamp/IsVocal() //Gondolas are the silent walker.
	return FALSE

#undef GONDOLA_HEIGHT
#undef GONDOLA_COLOR
#undef GONDOLA_MOUSTACHE
#undef GONDOLA_EYES
