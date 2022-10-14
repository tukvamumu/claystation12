/area/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "\improper First Deck - Engineering - CE Office"
	req_access = list(access_ce)

/area/crew_quarters/heads/office/hos
	icon_state = "heads_hos"
	name = "\improper First Deck - Command - HoS Office"
	req_access = list(access_hos)

/area/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "\improper First Deck - Command - RD Office"
	req_access = list(access_rd)
	lighting_tone = AREA_LIGHTING_COOL

/area/engineering/bluespace
	name = "First Deck - Bluespace Drive Containment"
	icon_state = "engineering"
	color = COLOR_BLUE_LIGHT
	req_access = list(list(access_engine_equip, access_heads), access_engine, access_maint_tunnels)

/area/engineering/bluespace/entrance
	name = "First Deck - Bluespace Drive Containment Entrance"
	icon_state = "engineering"
	color = COLOR_BLUE_LIGHT
	req_access = list(access_engine, access_maint_tunnels)

/area/maintenance/auxsolarport
	name = "Solar Maintenance - Port"
	icon_state = "SolarcontrolP"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)
	holomap_color = HOLOMAP_AREACOLOR_AIRLOCK

/area/maintenance/auxsolarstarboard
	name = "Solar Maintenance - Starboard"
	icon_state = "SolarcontrolS"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine_equip, access_maint_tunnels)
	holomap_color = HOLOMAP_AREACOLOR_AIRLOCK

/area/solar
	area_flags = AREA_FLAG_EXTERNAL
	requires_power = 1
	always_unpowered = 1
	has_gravity = FALSE
	base_turf = /turf/space
	req_access = list(access_engine_equip)

/area/solar/starboard
	name = "\improper Starboard Solar Array"
	icon_state = "panelsA"

/area/solar/port
	name = "\improper Port Solar Array"
	icon_state = "panelsP"

/area/engineering/atmos
	name = "\improper Atmospherics"
	icon_state = "atmos"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/engine_smes
	name = "\improper Engineering SMES"
	icon_state = "engine_smes"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engine_monitoring
	name = "\improper Engine Monitoring Room"
	icon_state = "engine_monitoring"
	req_access = list(access_engine, access_engine_equip)

/area/engineering/engine_room
	name = "\improper Engine Room"
	icon_state = "engine"
	sound_env = LARGE_ENCLOSED
	req_access = list(access_engine, access_engine_equip)

/area/engineering/atmos/storage
	name = "\improper Atmospherics Storage"
	icon_state = "atmos_storage"
	sound_env = SMALL_ENCLOSED
	req_access = list(access_atmospherics)

/area/engineering/engineering_bay
	name = "\improper Engineering Bay"
	icon_state = "engineering_locker"
	req_access = list(access_engine)

/area/tcommsat
	ambience = list('sound/ambience/ambisin2.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/signal.ogg', 'sound/ambience/ambigen10.ogg')
	req_access = list(access_tcomsat)

/area/tcommsat/chamber
	name = "\improper Telecoms Central Compartment"
	icon_state = "tcomsatcham"

/area/tcommsat/computer
	name = "\improper Telecoms Control Room"
	icon_state = "tcomsatcomp"

/area/tcommsat/storage
	name = "\improper Telecoms Storage"
	icon_state = "tcomsatstore"

/area/crew_quarters/heads/office/cmo
	icon_state = "heads_cmo"
	name = "\improper Command - CMO Office"
	req_access = list(access_cmo)
	lighting_tone = AREA_LIGHTING_COOL

/area/maintenance/firstdeck
	name = "First Deck - Maintenance"
	icon_state = "maintcentral"

/area/maintenance/firstdeck/aftstarboard
	name = "First Deck - Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/maintenance/firstdeck/aftport
	name = "First Deck - Aft Port Maintenance"
	icon_state = "apmaint"

/area/maintenance/firstdeck/forestarboard
	name = "First Deck - Fore Starboard Maintenance"
	icon_state = "fsmaint"

/area/hallway/primary/firstdeck/fore
	name = "\improper First Deck - Fore Hallway"
	icon_state = "hallF"

/area/hallway/primary/firstdeck/center
	name = "\improper First Deck - Central Hallway"
	icon_state = "hallC1"

/area/hallway/primary/firstdeck/aft
	name = "\improper First Deck - Aft Hallway"
	icon_state = "hallA"

/area/teleporter/firstdeck
	name = "\improper First Deck - Teleporter"
	icon_state = "teleporter"

/area/crew_quarters/safe_room/bridge
	name = "\improper First Deck - Bridge Bunker"

/area/eva
	name = "\improper First Deck - EVA Storage"
	icon_state = "eva"
	req_access = list(access_eva)
	holomap_color = HOLOMAP_AREACOLOR_AIRLOCK

/area/crew_quarters/heads/office/ce
	icon_state = "heads_ce"
	name = "\improper First Deck - Engineering - CE's Office"
	req_access = list(access_ce)

/area/medical/equipstorage
	name = "\improper First Deck - Medical Equipment Storage"
	icon_state = "medbay4"
	ambience = list('sound/ambience/signal.ogg')
	req_access = list(access_medical_equip)

/area/rnd/development
	name = "\improper First Deck - Fabricator Lab"
	icon_state = "devlab"

/area/rnd/xenobiology
	name = "\improper First Deck - Xenobiology"
	icon_state = "xeno_lab"

/area/rnd/xenoarcheology
	name = "\improper First Deck - Xenobiology"
	icon_state = "xeno_lab"

/area/rnd/research
	name = "\improper First Deck - Research Hallway"
	icon_state = "research"

/area/crew_quarters/heads/office/rd
	icon_state = "heads_rd"
	name = "\improper First Deck - Command - RD Office"
	req_access = list(access_rd)
	lighting_tone = AREA_LIGHTING_COOL

/area/engineering/wastetank
	name = "\improper First Deck - Waste Tank"
	icon_state = "engineering"
	req_access = list(access_atmospherics)

/area/security/firstdhall
	name = "\improper First Deck - Security - Hallway"
	icon_state = "security"
