//Some helpers because so much copypasta for pods
/datum/shuttle/autodock/ferry/escape_pod/korchpod
	category = /datum/shuttle/autodock/ferry/escape_pod/korchpod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	warmup_time = 2
	move_time = 5

/obj/effect/shuttle_landmark/escape_pod/start
	name = "Docked"
	base_turf = /turf/simulated/floor/reinforced/airless

/obj/effect/shuttle_landmark/escape_pod/transit
	name = "In transit"

/obj/effect/shuttle_landmark/escape_pod/out
	name = "Escaped"

//Pods
#define KORCH_ESCAPE_POD(NUMBER) \
/datum/shuttle/autodock/ferry/escape_pod/korchpod/escape_pod##NUMBER { \
	shuttle_area = /area/shuttle/escape_pod##NUMBER/station; \
	name = "Escape Pod " + #NUMBER; \
	dock_target = "escape_pod_" + #NUMBER; \
	arming_controller = "escape_pod_"+ #NUMBER +"_berth"; \
	waypoint_station = "escape_pod_"+ #NUMBER +"_start"; \
	landmark_transition = "escape_pod_"+ #NUMBER +"_internim"; \
	waypoint_offsite = "escape_pod_"+ #NUMBER +"_out"; \
} \
/obj/effect/shuttle_landmark/escape_pod/start/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_start"; \
	docking_controller = "escape_pod_"+ #NUMBER +"_berth"; \
} \
/obj/effect/shuttle_landmark/escape_pod/out/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_out"; \
} \
/obj/effect/shuttle_landmark/escape_pod/transit/pod##NUMBER { \
	landmark_tag = "escape_pod_"+ #NUMBER +"_internim"; \
}


KORCH_ESCAPE_POD(1)
KORCH_ESCAPE_POD(2)
KORCH_ESCAPE_POD(3)
KORCH_ESCAPE_POD(4)

/datum/shuttle/autodock/overmap/otkorch
	name = "Otkorch"
	move_time = 50
	shuttle_area = list(/area/otkorch/cockpit, /area/otkorch/power, /area/otkorch/storage, /area/otkorch/air, /area/otkorch/crew)
	current_location = "nav_hangar_otkorch"
	landmark_transition = "nav_transit_otkorch"
	dock_target = "otkorch_shuttle"
	range = 2
	logging_home_tag = "nav_hangar_otkorch"
	logging_access = access_captain
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/korch/hangar/otkorch
	name = "Otkorch Hangar"
	landmark_tag = "nav_hangar_otkorch"
	docking_controller = "otkorch_shuttle_dock_airlock"
	base_turf = /turf/simulated/floor/reinforced/airless

/obj/effect/shuttle_landmark/korch/deck1/otkorch
	name = "Space near First Deck"
	landmark_tag = "nav_deck1_otkorch"

/obj/effect/shuttle_landmark/korch/deck2/otkorch
	name = "Space near Second Deck"
	landmark_tag = "nav_deck2_otkorch"

/obj/effect/shuttle_landmark/korch/deck3/otkorch
	name = "Space near Third Deck"
	landmark_tag = "nav_deck3_otkorch"

/obj/effect/shuttle_landmark/transit/korch/otkorch
	name = "In transit"
	landmark_tag = "nav_transit_otkorch"


/datum/shuttle/autodock/ferry/petrov
	name = "Petrov"
	warmup_time = 10
	dock_target = "petrov_shuttle_airlock"
	waypoint_station = "nav_petrov_start"
	waypoint_offsite = "nav_petrov_out"
	logging_home_tag = "nav_petrov_start"
	logging_access = access_petrov_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/datum/shuttle/autodock/ferry/petrov/New(_name, obj/effect/shuttle_landmark/initial_location)
	shuttle_area = subtypesof(/area/shuttle/petrov)
	..()

/obj/effect/shuttle_landmark/petrov/start
	name = "First Deck"
	landmark_tag = "nav_petrov_start"
	docking_controller = "petrov_shuttle_dock_airlock"

/obj/effect/shuttle_landmark/petrov/out
	name = "Space near the ship"
	landmark_tag = "nav_petrov_out"

/datum/shuttle/autodock/overmap/exploration_shuttle
	name = "Charon"
	move_time = 60
	shuttle_area = list(/area/exploration_shuttle/cockpit, /area/exploration_shuttle/atmos, /area/exploration_shuttle/power, /area/exploration_shuttle/crew, /area/exploration_shuttle/cargo, /area/exploration_shuttle/airlock, /area/exploration_shuttle/medical, /area/exploration_shuttle/fuel)
	dock_target = "charon_shuttle"
	current_location = "nav_hangar_charon"
	landmark_transition = "nav_transit_charon"
	range = 1
	fuel_consumption = 4
	logging_home_tag = "nav_hangar_charon"
	logging_access = access_expedition_shuttle_helm
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/korch/hangar/exploration_shuttle
	name = "Charon Hangar"
	landmark_tag = "nav_hangar_charon"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/korch/deck1/exploration_shuttle
	name = "Space near First Deck"
	landmark_tag = "nav_deck1_charon"

/obj/effect/shuttle_landmark/korch/deck2/exploration_shuttle
	name = "Space near Second Deck"
	landmark_tag = "nav_deck2_charon"

/obj/effect/shuttle_landmark/korch/deck3/exploration_shuttle
	name = "Space near Third Deck"
	landmark_tag = "nav_deck3_charon"

/obj/effect/shuttle_landmark/transit/korch/exploration_shuttle
	name = "In transit"
	landmark_tag = "nav_transit_charon"

/datum/shuttle/autodock/overmap/guppy
	name = "Guppy"
	warmup_time = 5
	move_time = 20
	shuttle_area = /area/guppy_hangar/start
	dock_target ="guppy_shuttle"
	current_location = "nav_hangar_guppy"
	landmark_transition = "nav_transit_guppy"
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	fuel_consumption = 2
	logging_home_tag = "nav_hangar_guppy"
	logging_access = access_guppy_helm
	skill_needed = SKILL_NONE
	ceiling_type = /turf/simulated/floor/shuttle_ceiling

/obj/effect/shuttle_landmark/korch/hangar/guppy
	name = "Guppy Hangar"
	landmark_tag = "nav_hangar_guppy"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/korch/deck1/guppy
	name = "Space near First Deck"
	landmark_tag = "nav_deck1_guppy"

/obj/effect/shuttle_landmark/korch/deck2/guppy
	name = "Space near Second Deck"
	landmark_tag = "nav_deck2_guppy"

/obj/effect/shuttle_landmark/korch/deck3/guppy
	name = "Space near Third Deck"
	landmark_tag = "nav_deck3_guppy"

/obj/effect/shuttle_landmark/transit/korch/guppy
	name = "In transit"
	landmark_tag = "nav_transit_guppy"

//NT Rescue Shuttle

/datum/shuttle/autodock/multi/antag/rescue
	destination_tags = list(
		"nav_ert_deck1",
		"nav_ert_deck2",
		"nav_ert_deck3",
		"nav_away_4",
		"nav_derelict_4",
		"nav_cluster_4",
		"nav_ert_dock",
		"nav_ert_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)

/obj/effect/shuttle_landmark/ert/deck1
	name =  "Southwest of First deck"
	landmark_tag = "nav_ert_deck1"

/obj/effect/shuttle_landmark/ert/deck2
	name = "Northwest of Second deck"
	landmark_tag = "nav_ert_deck2"

/obj/effect/shuttle_landmark/ert/deck3
	name = "Northwest of Third deck"
	landmark_tag = "nav_ert_deck3"

//Cargo drone

/datum/shuttle/autodock/ferry/supply/drone
	name = "Supply Drone"
	location = 1
	warmup_time = 10
	shuttle_area = /area/supply/dock
	waypoint_offsite = "nav_cargo_start"
	waypoint_station = "nav_cargo_station"

/obj/effect/shuttle_landmark/supply/centcom
	name = "Offsite"
	landmark_tag = "nav_cargo_start"

/obj/effect/shuttle_landmark/supply/station
	name = "Hangar"
	landmark_tag = "nav_cargo_station"
	base_area = /area/quartermaster/hangar
	base_turf = /turf/simulated/floor/plating

//Merchant

/datum/shuttle/autodock/ferry/merchant
	name = "Merchant"
	warmup_time = 10
	shuttle_area = /area/shuttle/merchant/home
	waypoint_station = "nav_merchant_start"
	waypoint_offsite = "nav_merchant_out"
	dock_target = "merchant_ship_dock"

/obj/effect/shuttle_landmark/merchant/start
	name = "Merchant Base"
	landmark_tag = "nav_merchant_start"
	docking_controller = "merchant_station_dock"

/obj/effect/shuttle_landmark/merchant/out
	name = "Docking Bay"
	landmark_tag = "nav_merchant_out"
	docking_controller = "merchant_shuttle_station_dock"

//Ninja Shuttle.
/datum/shuttle/autodock/multi/antag/ninja
	destination_tags = list(
		"nav_ninja_deck1",
		"nav_ninja_deck2",
		"nav_ninja_deck3",
		"nav_ninja_deck4",
		"nav_ninja_deck5",
		"nav_away_6",
		"nav_derelict_5",
		"nav_cluster_6",
		"nav_ninja_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag"
		)

/obj/effect/shuttle_landmark/ninja/deck1
	name = "South of First Deck"
	landmark_tag = "nav_ninja_deck1"

/obj/effect/shuttle_landmark/ninja/deck2
	name = "Northeast of Second Deck"
	landmark_tag = "nav_ninja_deck2"

/obj/effect/shuttle_landmark/ninja/deck3
	name = "East of Third Deck"
	landmark_tag = "nav_ninja_deck3"


/obj/effect/shuttle_landmark/merc/deck1
	name = "Northeast of First Deck"
	landmark_tag = "nav_merc_deck1"

/obj/effect/shuttle_landmark/merc/deck2
	name = "Southeast of the Second deck"
	landmark_tag = "nav_merc_deck2"

/obj/effect/shuttle_landmark/merc/deck3
	name = "South of Third deck"
	landmark_tag = "nav_merc_deck3"

//Skipjack
/datum/shuttle/autodock/multi/antag/skipjack
	destination_tags = list(
		"nav_skipjack_deck1",
		"nav_skipjack_deck2",
		"nav_skipjack_deck3",
		"nav_away_7",
		"nav_derelict_7",
		"nav_cluster_7",
		"nav_skipjack_dock",
		"nav_skipjack_start",
		"nav_lost_supply_base_antag",
		"nav_marooned_antag",
		"nav_smugglers_antag",
		"nav_magshield_antag",
		"nav_casino_antag",
		"nav_yacht_antag",
		"nav_slavers_base_antag",
		)

/obj/effect/shuttle_landmark/skipjack/deck1
	name = "Northwest of First Deck"
	landmark_tag = "nav_skipjack_deck1"

/obj/effect/shuttle_landmark/skipjack/deck2
	name = "Southwest of the Second deck"
	landmark_tag = "nav_skipjack_deck2"

/obj/effect/shuttle_landmark/skipjack/deck3
	name = "Southeast of Third deck"
	landmark_tag = "nav_skipjack_deck3"

//Admin

/datum/shuttle/autodock/ferry/administration
	name = "Administration"
	warmup_time = 10	//want some warmup time so people can cancel.
	shuttle_area = /area/shuttle/administration/centcom
	dock_target = "admin_shuttle"
	waypoint_station = "nav_admin_start"
	waypoint_offsite = "nav_admin_out"

/obj/effect/shuttle_landmark/admin/start
	name = "Centcom"
	landmark_tag = "nav_admin_start"
	docking_controller = "admin_shuttle"
	base_area = /area/centcom
	base_turf = /turf/simulated/floor/plating

/obj/effect/shuttle_landmark/admin/out
	name = "Docking Bay"
	landmark_tag = "nav_admin_out"
	docking_controller = "thirddeck_station_dock"

//Specops

/datum/shuttle/autodock/ferry/specops/ert
	name = "Special Operations"
	warmup_time = 10
	shuttle_area = /area/shuttle/specops/centcom
	dock_target = "specops_shuttle_fore"
	waypoint_station = "nav_specops_start"
	waypoint_offsite = "nav_specops_out"

/obj/effect/shuttle_landmark/specops/start
	name = "Centcom"
	landmark_tag = "nav_specops_start"
	docking_controller = "specops_shuttle_port"

/obj/effect/shuttle_landmark/specops/out
	name = "Docking Bay"
	landmark_tag = "nav_specops_out"
	docking_controller = "thirddeck_station_dock"


//Transport

/datum/shuttle/autodock/ferry/centcom
	name = "Centcom"
	location = 1
	warmup_time = 10
	shuttle_area = /area/shuttle/transport1/centcom
	dock_target = "centcom_shuttle"
	waypoint_offsite = "nav_ferry_start"
	waypoint_station = "nav_ferry_out"

/obj/effect/shuttle_landmark/ferry/start
	name = "Centcom"
	landmark_tag = "nav_ferry_start"
	docking_controller = "centcom_shuttle_bay"

/obj/effect/shuttle_landmark/ferry/out
	name = "Docking Bay"
	landmark_tag = "nav_ferry_out"
	docking_controller = "centcom_shuttle_dock_airlock"

//Makes the deck management program use hangar access
/datum/nano_module/deck_management
	default_access = list(access_hangar, access_cargo, access_heads)
