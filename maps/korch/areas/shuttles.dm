//Merchant

/area/shuttle/merchant/home
	name = "\improper Merchant Vessel"
	icon_state = "shuttlegrn"
	req_access = list(access_merchant)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

//Escape

/area/shuttle/escape_pod1/station
	name = "Shuttle - Escape - Pod One"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT


/area/shuttle/escape_pod2/station
	name = "Shuttle - Escape - Pod Two"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod3/station
	name = "Shuttle - Escape - Pod Three"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

/area/shuttle/escape_pod4/station
	name = "Shuttle - Escape - Pod Four"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_IS_NOT_PERSISTENT

//Charon

/area/exploration_shuttle
	name = "\improper Charon"
	icon_state = "shuttlered"
	base_turf = /turf/simulated/floor/plating
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_HIDE_FROM_HOLOMAP
	base_turf_special_handling = TRUE

/area/exploration_shuttle/cockpit
	name = "\improper Charon - Cockpit"
	req_access = list(access_expedition_shuttle)

/area/exploration_shuttle/atmos
	name = "\improper Charon - Atmos Compartment"

/area/exploration_shuttle/power
	name = "\improper Charon - Power Compartment"

/area/exploration_shuttle/crew
	name = "\improper Charon - Crew Compartment"

/area/exploration_shuttle/cargo
	name = "\improper Charon - Cargo Bay"

/area/exploration_shuttle/airlock
	name = "\improper Charon - Airlock Compartment"

/area/exploration_shuttle/fuel
	name = "\improper Charon - Fuel Compartment"

/area/exploration_shuttle/medical
	name = "\improper Charon - Medical Compartment"

//Guppy

/area/guppy_hangar/start
	name = "\improper Guppy"
	icon_state = "shuttlered"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED | AREA_FLAG_HIDE_FROM_HOLOMAP
	req_access = list(access_guppy)
	base_turf_special_handling = TRUE


//Petrov

/area/shuttle/petrov
	name = "\improper SRV Petrov"
	requires_power = 1
	dynamic_lighting = 1
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	req_access = list(access_petrov)
	lighting_tone = AREA_LIGHTING_COOL

/area/shuttle/petrov/cell1
	name = "\improper SRV Petrov - Isolation Cell 1"
	icon_state = "shuttle"
/area/shuttle/petrov/cell2
	name = "\improper SRV Petrov - Isolation Cell 2"
	icon_state = "shuttlegrn"
/area/shuttle/petrov/cell3
	name = "\improper SRV Petrov - Isolation Cell 3"
	icon_state = "shuttle"

/area/shuttle/petrov/hallwaya
	name = "\improper SRV Petrov - Lower Hallway"
	icon_state = "hallA"

/area/shuttle/petrov/control
	name = "\improper SRV Petrov - Control Room"
	icon_state = "checkpoint1"
	req_access = list(access_petrov_control)

/area/shuttle/petrov/rd
	icon_state = "heads_rd"
	name = "\improper SRV Petrov - CSO's Office"
	icon_state = "head_quarters"
	req_access = list(access_petrov_rd)

/area/shuttle/petrov/cockpit
	name = "\improper SRV Petrov - Cockpit"
	icon_state = "shuttlered"
	req_access = list(access_petrov_helm)

/area/shuttle/petrov/maint
	name = "\improper SRV Petrov - Maintenance"
	icon_state = "engine"
	req_access = list(access_petrov_maint)
	lighting_tone = AREA_LIGHTING_DEFAULT

/area/shuttle/petrov/analysis
	name = "\improper SRV Petrov - Analysis Lab"
	icon_state = "devlab"
	req_access = list(access_petrov_analysis)

/area/shuttle/petrov/toxins
	name = "\improper SRV Petrov - Toxins Lab"
	icon_state = "toxstorage"
	req_access = list(access_petrov_toxins)

/area/shuttle/petrov/rnd
	name = "\improper SRV Petrov - Fabricator Lab"
	icon_state = "devlab"

/area/shuttle/petrov/isolation
	name = "\improper SRV Petrov - Isolation Lab"
	icon_state = "xeno_lab"

/area/shuttle/petrov/phoron
	name = "\improper SRV Petrov - Sublimation Lab"
	icon_state = "toxstorage"
	req_access = list(access_petrov_phoron)

/area/shuttle/petrov/custodial
	name = "\improper SRV Petrov - Custodial"
	icon_state = "decontamination"
	lighting_tone = AREA_LIGHTING_DEFAULT

/area/shuttle/petrov/equipment
	name = "\improper SRV Petrov - Equipment Storage"
	icon_state = "locker"

/area/shuttle/petrov/eva
	name = "\improper SRV Petrov - EVA Storage"
	icon_state = "locker"

/area/supply/dock
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	requires_power = 0
	req_access = list(access_cent_storage)

/area/shuttle/administration/centcom
	name = "\improper Administration Shuttle"
	icon_state = "shuttlered"
	req_access = list(access_cent_general)
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
