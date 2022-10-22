/area/maintenance/seconddeck
	name = "Second Deck - Maintenance"
	icon_state = "maintcentral"

/area/maintenance/seconddeck/aftstarboard
	name = "Second Deck  - Aft Starboard Maintenance"
	icon_state = "asmaint"

/area/maintenance/seconddeck/aftport
	name = "Second Deck - Aft Port Maintenance"
	icon_state = "apmaint"

/area/maintenance/seconddeck/foreport
	name = "Second Deck - Fore Port Maintenance"
	icon_state = "fpmaint"

/area/thruster/d2port
	name = "\improper Second Deck  - Port Nacelle"

/area/thruster/d2starboard
	name = "\improper Second Deck - Starboard Nacelle"

/area/crew_quarters/restroom
	name = "\improper Second Deck - Restrooms"
	icon_state = "toilet"
	sound_env = SMALL_ENCLOSED

/area/crew_quarters/bar
	name = "\improper Second Deck - Bar"
	icon_state = "bar"
	sound_env = LARGE_SOFTFLOOR
	req_access = list(access_kitchen)
	lighting_tone = AREA_LIGHTING_WARM

/area/crew_quarters/gym
	name = "\improper Second Deck - Gym"
	icon_state = "fitness"

/area/crew_quarters/head/sauna
	name = "\improper Second Deck - Sauna"
	icon_state = "sauna"

/area/crew_quarters/mess
	name = "\improper Second Deck - Mess Hall"
	icon_state = "cafeteria"
	lighting_tone = AREA_LIGHTING_WARM

/area/crew_quarters/galley
	name = "\improper Second Deck - Galley"
	icon_state = "kitchen"
	req_access = list(access_kitchen)
	lighting_tone = AREA_LIGHTING_COOL

/area/crew_quarters/galleybackroom
	name = "\improper Second Deck - Galley Cold Storage"
	icon_state = "kitchen"
	req_access = list(access_kitchen)
	lighting_tone = AREA_LIGHTING_COOL

/area/crew_quarters/sleep/cryo/aux
	name = "\improper Sedond Deck - Cryogenic Storage"
	icon_state = "Sleep"
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/storage/primary
	name = "Second Deck - Primary Tool Storage"
	icon_state = "primarystorage"

/area/hallway/primary/seconddeck/fore
	name = "\improper Second Deck - Fore Hallway"
	icon_state = "hallF"

/area/hallway/primary/seconddeck/aft
	name = "\improper Second Deck - Aft Hallway"
	icon_state = "hallA"

/area/hallway/primary/seconddeck/central
	name = "\improper Second Deck - central Hallway"
	icon_state = "hallC1"

/area/hallway/primary/seconddeck/fore_stairwell
	name = "Second Deck - Stairwell - Fore"
	icon_state = "hallC2"

/area/assembly/robotics
	name = "\improper Second Deck - Robotics Workshop"
	icon_state = "robotics"

/area/assembly/robotics/laboratory
	name = "\improper Second Deck - Robotics Laboratory"
	req_access = list(list(access_medical,access_robotics))

/area/medical/chemistry
	name = "\improper Second Deck - Chemistry"
	icon_state = "chem"
	req_access = list(access_chemistry)

/area/medical/exam_room
	name = "\improper Second Deck - Exam Room"
	icon_state = "exam_room"

/area/medical/surgery
	name = "\improper Second Deck - Operating Theatre"
	icon_state = "surgery"
	req_access = list(access_surgery)

/area/medical/medicalhallway
	name = "\improper Second Deck - Medical Public Hallway"
	icon_state = "medbay"

/area/medical/morgue
	name = "\improper Second Deck - Morgue"
	icon_state = "morgue"
	ambience = list('sound/ambience/ambimo1.ogg','sound/ambience/ambimo2.ogg','sound/music/main.ogg')
	req_access = list(list(access_morgue,access_forensics_lockers))

/area/hydroponics
	name = "\improper Second Deck - Hydroponics"
	icon_state = "hydro"
	lighting_tone = AREA_LIGHTING_COOL

/area/hydroponics/garden
	name = "\improper Second Deck - Garden"
	icon_state = "hydro"
	lighting_tone = AREA_LIGHTING_WARM

/area/janitor
	name = "\improper Second Deck - Custodial Closet"
	icon_state = "janitor"
	req_access = list(access_janitor)

/area/chapel/main
	name = "\improper Second Deck - Chapel"
	icon_state = "chapel"
	ambience = list('sound/ambience/ambicha1.ogg','sound/ambience/ambicha2.ogg','sound/ambience/ambicha3.ogg','sound/ambience/ambicha4.ogg','sound/music/traitor.ogg')
	sound_env = LARGE_ENCLOSED


/area/security/bo
	name = "\improper Second Deck - Security - Brig Chief"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/storage
	name = "\improper Second Deck - Security - Equipment Storage"
	icon_state = "security"
	req_access = list(access_brig)

/area/security/armoury
	name = "\improper Second Deck - Security - Armory"
	icon_state = "Warden"
	req_access = list(access_armory)

/area/security/questioning
	name = "\improper Second Deck - Security - Interview Room"
	icon_state = "security"

/area/security/locker
	name = "\improper Second Deck - Security - Locker Room"
	icon_state = "security"

/area/security/evidence
	name = "\improper Second Deck - Security - Evidence Storage"
	icon_state = "security"

/area/security/wing
	name = "\improper Second Deck - Security Wing"
	icon_state = "security"

/area/security/detectives_office
	name = "\improper Second Deck - Security - Investigations Office"
	icon_state = "detective"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_forensics_lockers)
	lighting_tone = AREA_LIGHTING_COOL

/area/prison/perma
	name = "Second Deck - Prison"
	icon_state = "brig"
	req_access = list(access_brig)

/area/crew_quarters/sleep/dorms
	name = "\improper Second Deck - Dormitory"
	icon_state = "Sleep"
	sound_env = SMALL_SOFTFLOOR
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	lighting_tone = AREA_LIGHTING_WARM

/area/crew_quarters/office
	name = "\improper Second Deck - Computer Lab"
	icon_state = "conference"

/area/bridge/meeting_room
	name = "\improper Second Deck - Command Meeting Room"
	icon_state = "bridge_meeting"
	ambience = list()
	sound_env = MEDIUM_SOFTFLOOR

/area/crew_quarters/heads/office/hop
	icon_state = "heads_hop"
	name = "\improper Second Deck - Command - HoP's Office"
	req_access = list(access_hop)
	lighting_tone = AREA_LIGHTING_WARM

/area/crew_quarters/heads/cobed
	icon_state = "heads_cap"
	name = "\improper Second Deck - Command - CO's Quarters"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)
	lighting_tone = AREA_LIGHTING_WARM

/area/crew_quarters/heads/office/co
	icon_state = "heads_cap"
	name = "\improper Second Deck - Command - CO's Office"
	sound_env = MEDIUM_SOFTFLOOR
	req_access = list(access_captain)
	lighting_tone = AREA_LIGHTING_WARM


/area/command/disperser
	name = "\improper Second Deck - Obstruction Field Disperser"
	icon_state = "disperser"
	req_access = list(access_bridge)

/area/crew_quarters/casinomaint
	name = "\improper Second Deck - Casino"
	icon_state = "bar"
	lighting_tone = AREA_LIGHTING_WARM

