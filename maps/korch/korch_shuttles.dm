//Some helpers because so much copypasta for pods
/datum/shuttle/autodock/ferry/escape_pod/korchpod
	category = /datum/shuttle/autodock/ferry/escape_pod/korchpod
	sound_takeoff = 'sound/effects/rocket.ogg'
	sound_landing = 'sound/effects/rocket_backwards.ogg'
	warmup_time = 10

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

/obj/effect/shuttle_landmark/ert/hanger
	name =  "Southeast of Hanger deck"
	landmark_tag = "nav_ert_hanger"

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
