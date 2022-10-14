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
