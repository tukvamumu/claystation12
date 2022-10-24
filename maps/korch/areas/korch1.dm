/area/hallway/primary/thirddeck/fore
	name = "Third Deck - Hallway - Fore"
	icon_state = "hallF"

/area/hallway/primary/thirddeck/aft
	name = "Third Deck - Hallway - Aft"
	icon_state = "hallA"

/area/hallway/primary/thirddeck/fore_stairwell
	name = "Third Deck - Stairwell - Fore"
	icon_state = "hallC2"

/area/maintenance/thirddeck
	name = "Third Deck - Maintenance"
	icon_state = "maintcentral"

/area/maintenance/thirddeck/aftstarboard
	name = "Third Deck - Maintenance - Aft-Starboard"
	icon_state = "amaint"

/area/maintenance/thirddeck/foreport
	name = "Third Deck - Maintenance - Fore-Port "
	icon_state = "fpmaint"

/area/maintenance/thirddeck/forestarboard
	name = "Third Deck - Maintenance - Fore-Starboard "
	icon_state = "fsmaint"

/area/maintenance/thirddeck/aftport
	name = "Third Deck - Maintenance - Aft-Port"
	icon_state = "pmaint"

/area/medical/foyer/storeroom
	name = "\improper Medical Storeroom"
	icon_state = "medbay"

/area/crew_quarters/bar/abandoned
	name = "\improper Abandoned Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_kitchen)
	lighting_tone = AREA_LIGHTING_WARM

/area/quartermaster
	req_access = list(access_cargo)
	holomap_color = HOLOMAP_AREACOLOR_CARGO

/area/quartermaster/office
	name = "\improper Supply Office"
	icon_state = "quartoffice"

/area/quartermaster/hangar
	name = "\improper Hangar Deck"
	icon_state = "hangar"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_hangar)

/area/quartermaster/sorting
	name ="\improper Supply Sorting"
	icon_state = "quartstorage"

/area/quartermaster/deckchief
	name = "\improper Deck Chief's Office"
	icon_state = "quart"
	req_access = list(access_qm)

/area/quartermaster/mining
	name = "\improper Mining Preparation"
	icon_state = "mining"
	req_access = list(access_mining)

/area/quartermaster/mining/eva
	name = "\improper Mining EVA"
	icon_state = "mining"
	req_access = list(list(access_mining, access_xenoarch))

/area/quartermaster/expedition/storage
	name = "\improper Hangar Storage"
	icon_state = "mining"
	req_access = list(list(access_mining, access_explorer, access_xenoarch))

/area/quartermaster/expedition
	name = "\improper Expedition Preparation"
	icon_state = "mining"
	req_access = list(list(access_explorer, access_xenoarch))

/area/command/pilot
	name = "\improper Pilot's Lounge"
	icon_state = "pilot_lounge"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_pilot)
	holomap_color = HOLOMAP_AREACOLOR_EXPLORATION

