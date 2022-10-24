/area/bridge
	name = "\improper NSV Korch Bridge"
	icon_state = "bridge"
	req_access = list(access_bridge)
	holomap_color = HOLOMAP_AREACOLOR_COMMAND

/area/maintenance
	name = "Maintenance"
	area_flags = AREA_FLAG_RAD_SHIELDED

/area/quartermaster
	req_access = list(access_cargo)
	holomap_color = HOLOMAP_AREACOLOR_CARGO

/area/crew_quarters
	holomap_color = HOLOMAP_AREACOLOR_CREW

/area/crew_quarters/safe_room
	name = "\improper Safe Room"
	icon_state = "crew_quarters"
	sound_env = SMALL_ENCLOSED
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/teleporter
	name = "\improper Teleporter"
	icon_state = "teleporter"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_teleporter)
	holomap_color = HOLOMAP_AREACOLOR_COMMAND

/area/aux_eva
	name = "\improper Command EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)
	holomap_color = HOLOMAP_AREACOLOR_AIRLOCK

/area/thruster
	icon_state = "thruster"
	req_access = list(access_engine)
	holomap_color = HOLOMAP_AREACOLOR_ENGINEERING

/area/assembly
	req_access = list(access_robotics)

/area/turbolift/korch_second
	name = "lift (third deck)"
	lift_floor_label = "Deck 1"
	lift_floor_name = "Top Deck"
	lift_announce_str = "Arriving at Top Deck: NSV Korch Bridge, HoS, Telecommunications. RnD. RD. Evacuation shuttles. Medbay Storage. CMO. Engineering. CE."

/area/turbolift/korch_first
	name = "lift (Middle deck)"
	lift_floor_label = "Deck 2"
	lift_floor_name = "Middle Deck"
	lift_announce_str = "Arriving at Middle Deck: Bridge meeting room. HoP's desk. Security. Mess hall. Medbay. Cryogenic Storage. Gym. Restroom. Janitor."

/area/turbolift/korch_ground
	name = "lift (Bottom deck)"
	lift_floor_label = "Deck 3"
	lift_floor_name = "Hangar Deck"
	lift_announce_str = "Arriving at Hangar Deck: Main Hangar. Supply. Exploration Preparation. Mineral Processing."
	base_turf = /turf/simulated/floor
