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
		"Otkorch" = list("nav_hangar_otkorch"),
		"Skrellian Scout" = list("nav_skrellscout_dock"), //restricts Skrell Scoutship specific docking waypoint on deck 4 portside
		"Skrellian Shuttle" = list("nav_skrellscoutsh_altdock"),
		"Rescue" = list("nav_ert_dock"), //restricts ERT Shuttle specific docking waypoint on deck 4 portside
		"ITV The Reclaimer" = list("nav_hangar_gantry_torch"), //gantry shuttles
		"ITV Vulcan" = list("nav_hangar_gantry_torch_two"),
		"ITV Spiritus" = list("nav_hangar_gantry_torch_three"),
		"SRV Venerable Catfish" = list("nav_verne_5"), //docking location for verne shuttle
		"Cyclopes" = list("nav_merc_dock"),
		"ICGNV Hound" = list("nav_hound_dock"),
		"SFV Arbiter" = list("nav_sfv_arbiter_dock")

	)

	initial_generic_waypoints = list(
	//start First Deck
	"nav_merc_deck1",
	"nav_ninja_deck1",
	"nav_skipjack_deck1",
	"nav_ert_deck1",
	"nav_deck1_charon",
	"nav_deck1_guppy",
	"nav_deck1_otkorch",

	//start Second Deck
	"nav_merc_deck2",
	"nav_ninja_deck2",
	"nav_skipjack_deck2",
	"nav_ert_deck2",
	"nav_deck2_charon",
	"nav_deck2_guppy",
	"nav_deck2_otkorch",

	//start Third Deck
	"nav_merc_deck3",
	"nav_ninja_deck3",
	"nav_skipjack_deck3",
	"nav_ert_deck3",
	"nav_deck3_charon",
	"nav_deck3_guppy",
	"nav_deck3_otkorch",
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

/obj/effect/overmap/visitable/ship/landable/otkorch
	name = "otkorch"
	desc = "A PM-24 modular transport, identified as NanoTrasen property."
	shuttle = "Otkorch"
	vessel_mass = 4000
	max_speed = 1/(1 SECONDS)
	burn_delay = 1 SECONDS
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL


/obj/machinery/computer/shuttle_control/explore/otkorch
	name = "otkorch control console"
	shuttle_tag = "Otkorch"
	req_access = list(access_captain)

/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "shuttle control console"
	shuttle_tag = "Charon"
	req_access = list(access_expedition_shuttle_helm)

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "guppy control console"
	shuttle_tag = "Guppy"
	req_access = list(access_guppy_helm)

