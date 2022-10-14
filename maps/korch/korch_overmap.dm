/obj/effect/overmap/visitable/ship/korch
	name = "NSV Korch"
	desc = "WORK IN PROGRESS"
	fore_dir = WEST
	vessel_mass = 40000
	burn_delay = 2 SECONDS
	base = TRUE

	initial_restricted_waypoints = list(
		"Charon" = list("nav_hangar_charon"), 	//can't have random shuttles popping inside the ship
		"Guppy" = list("nav_hangar_guppy"),
	)

	initial_generic_waypoints = list(
		"nav_ert_hanger",
	)

/obj/effect/overmap/visitable/ship/landable/exploration_shuttle
	name = "Charon"
	desc = "An SSE-U11 long range shuttle, identified as NanoTrasen property."
	shuttle = "Charon"
	max_speed = 1/(2 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 3000
	fore_dir = NORTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_SMALL

/obj/effect/overmap/visitable/ship/landable/guppy
	name = "Guppy"
	desc = "An SSE-U3 utility pod, identified as NanoTrasen property."
	shuttle = "Guppy"
	max_speed = 1/(3 SECONDS)
	burn_delay = 2 SECONDS
	vessel_mass = 1800
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY

/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "shuttle control console"
	shuttle_tag = "Charon"
	req_access = list(access_expedition_shuttle_helm)

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "guppy control console"
	shuttle_tag = "Guppy"
	req_access = list(access_guppy_helm)

