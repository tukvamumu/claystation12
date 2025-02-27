//Headwear

/obj/item/clothing/head/korch
	name = "master korch hat"
	icon = 'maps/korch/icons/obj/obj_head_korch.dmi'
	item_icons = list(slot_head_str = 'maps/korch/icons/mob/onmob_head_korch.dmi')
	siemens_coefficient = 0.9

/obj/item/clothing/head/korch/caphat
	name = "\improper Captain's cap"
	desc = "Korch captain's hat. Made from sturdy materials."
	icon_state = "whitewheelcap_com"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		)

/obj/item/clothing/head/soft/medsoft
	name = "\improper Medical soft cap"
	desc = "A baseball hat worn by medical personnel."
	icon_state = "medsoft"
	icon = 'maps/korch/icons/obj/obj_head_korch.dmi'
	item_icons = list(slot_head_str = 'maps/korch/icons/mob/onmob_head_korch.dmi')
	armor = list(
		bio = 10
		)

/obj/item/clothing/head/korch/securitycap
	name = "\improper Security cap"
	desc = "A security cap. Very hard like the head of the one who wearing it."
	icon_state = "securitycap"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		)

/obj/item/clothing/head/korch/pilot
	name = "\improper Pilot's helmet"
	desc = "A robust helmet. Drive safe!"
	icon_state = "pilotkorch"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		)


/obj/item/clothing/head/soft/paramedic
	name = "\improper Paramedic's soft cap"
	desc = "A baseball hat worn by paramedics."
	icon_state = "paramedicsoft"
	icon = 'maps/korch/icons/obj/obj_head_korch.dmi'
	item_icons = list(slot_head_str = 'maps/korch/icons/mob/onmob_head_korch.dmi')


//Shirts

/obj/item/clothing/under/korch
	name = "master korch uniform"
	desc = "You shouldn't be seeing this."
	siemens_coefficient = 0.8
	gender_icons = 1
	icon = 'maps/korch/icons/obj/obj_under_korch.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/korch/icons/mob/onmob_under_korch.dmi')

/obj/item/clothing/under/korch/turtleneck
	name = "Beige turtleneck"
	desc = "A comfy turtleneck."
	icon_state = "turtleneck"
	worn_state = "turtleneck"

/obj/item/clothing/under/korch/capshirt
	name = "Captain's uniform"
	desc = "Korch captain's shirt. Made from sturdy materials."
	icon_state = "captain"
	worn_state = "captain"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		)

/obj/item/clothing/under/korch/hazard
	name = "Engineer's jumpsuit"
	desc = "A jumpsuit with high-visibility lines usualy worn by engineers. Has radiation shielding."
	icon_state = "engine"
	worn_state = "engine"
	max_heat_protection_temperature = 30000
	armor = list("energy" = 25, "rad" = 10)

/obj/item/clothing/under/korch/hazard/atmos
	name = "Atmospheric Technician's jumpsuit"
	desc = "A bluish jumpsuit with high-visibility lines usualy worn by atmospheric technicians. Made from fire-resistant materials."
	icon_state = "atmostech"
	worn_state = "atmostech"

/obj/item/clothing/under/korch/hazard/ce
	name = "Chief Engineers's jumpsuit"
	desc = "A purplish jumpsuit with high-visibility lines worn by chief engineers. Made from fire-resistant materials."
	icon_state = "chiefeng"
	worn_state = "chiefeng"

/obj/item/clothing/under/korch/scientist
	name = "Scientist's clothes"
	desc = "Why do we all have to wear these ridiculous ties?"
	icon_state = "scientist"
	worn_state = "scientist"
	armor = list("bio" = 10)

/obj/item/clothing/under/korch/doctor
	name = "Medic's scrubs"
	desc = "Those are now worn by many hospital personnel."
	icon_state = "scrubs"
	worn_state = "scrubs"
	armor = list("bio" = 10)

/obj/item/clothing/under/korch/doctor/paramedic
	name = "Paramedic's clothes"
	desc = "Blue clothes worn by paramedics. Has high-visibility lines and a blue medical cross."
	icon_state = "paramedic"
	worn_state = "paramedic"

/obj/item/clothing/under/korch/blackutility
	name = "Black utility turtleneck"
	desc = "A comfortable tight turtleneck."
	icon_state = "blackutility"
	worn_state = "blackutility"

/obj/item/clothing/under/korch/miner
	name = "Miner overalls"
	desc = "Clothes for the working class."
	icon_state = "miner"
	worn_state = "miner"

/obj/item/clothing/under/korch/security
	name = "Security shirt"
	desc = "A red shirt with 'KORCH SECURITY' written on it."
	icon_state = "security"
	worn_state = "security"
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		)

//Overwear

/obj/item/clothing/suit/storage/toggle/labcoat/korch
	icon = 'maps/korch/icons/obj/obj_suit_korch.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/korch/icons/mob/onmob_suit_korch.dmi')
	icon_state = "labcoat"

/obj/item/clothing/suit/storage/korch
	name = "master korch jacket"
	icon = 'maps/korch/icons/obj/obj_suit_korch.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/korch/icons/mob/onmob_suit_korch.dmi')
	body_parts_covered = UPPER_TORSO|ARMS
	siemens_coefficient = 0.9
	allowed = list(
		/obj/item/tank/oxygen_emergency,
		/obj/item/tank/oxygen_emergency_extended,
		/obj/item/tank/nitrogen_emergency,
		/obj/item/device/flashlight,
		/obj/item/pen,
		/obj/item/clothing/head/soft,
		/obj/item/clothing/head/beret,
		/obj/item/storage/fancy/cigarettes,
		/obj/item/flame/lighter,
		/obj/item/device/taperecorder,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio,
		/obj/item/taperoll
	)
	valid_accessory_slots = list(
		ACCESSORY_SLOT_ARMBAND,
		ACCESSORY_SLOT_MEDAL,
		ACCESSORY_SLOT_INSIGNIA,
		ACCESSORY_SLOT_RANK,
		ACCESSORY_SLOT_DEPT,
		ACCESSORY_SLOT_DECOR
	)
	restricted_accessory_slots = list(ACCESSORY_SLOT_ARMBAND)

/obj/item/clothing/suit/storage/korch/capsuit
	name = "Captain's jacket"
	desc = "Korch captain's jacket. Made from sturdy materials."
	icon_state = "capsuit"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		)

/obj/item/clothing/suit/storage/korch/secvest
	name = "Security armor vest"
	desc = "A lightweight security armor vest with pouches"
	icon_state = "secwebvest"
	body_parts_covered = UPPER_TORSO
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_RIFLE,
		laser = ARMOR_LASER_HANDGUNS,
		)

/obj/item/clothing/suit/storage/hooded/hoodie/chap
	name = "Chaplain robes"
	desc = "A warm robe."
	icon_state = "chap"
	icon = 'maps/korch/icons/obj/obj_suit_korch.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/korch/icons/mob/onmob_suit_korch.dmi')
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK)

/obj/item/clothing/suit/storage/hooded/hoodie/security
	name = "Security raincoat"
	desc = "Taking back streets."
	icon_state = "security"
	icon = 'maps/korch/icons/obj/obj_suit_korch.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/korch/icons/mob/onmob_suit_korch.dmi')
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA,ACCESSORY_SLOT_RANK)
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_PISTOL,
		laser = ARMOR_LASER_HANDGUNS,
		)


// void

/obj/item/clothing/head/helmet/space/void/exploration
	camera = /obj/machinery/camera/network/exploration

/obj/item/clothing/head/helmet/space/void/exploration
	name = "exploration voidsuit helmet"
	desc = "A helmet of Exoplanet Exploration Unit, standard issue for away missions. It has an armored glass dome for superiour visibility and extra anti-radiation lining."
	icon = 'maps/torch/icons/obj/obj_head_solgov.dmi'
	item_icons = list(slot_head_str = 'maps/torch/icons/mob/onmob_head_solgov.dmi')
	icon_state = "rig0_explorer"
	item_state = "explorer_helm"
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_head_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_head_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_head_solgov_skrell.dmi',
		)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	light_overlay = "helmet_light_dual_alt"
	tinted = FALSE

/obj/item/clothing/suit/space/void/exploration
	name = "exploration voidsuit"
	icon = 'maps/torch/icons/obj/obj_suit_solgov.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/torch/icons/mob/onmob_suit_solgov.dmi')
	desc = "The bulky Exoplanet Exploration Unit is a standard voidsuit for field operations. It features extra padding and respectable radiation-resistant lining."
	icon_state = "rig_explorer"
	item_state = "rig_explorer"
	sprite_sheets = list(
		SPECIES_UNATHI = 'maps/torch/icons/mob/unathi/onmob_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/mob/skrell/onmob_suit_solgov_skrell.dmi',
		)
	sprite_sheets_obj = list(
		SPECIES_UNATHI = 'maps/torch/icons/obj/unathi/obj_suit_solgov_unathi.dmi',
		SPECIES_SKRELL = 'maps/torch/icons/obj/skrell/obj_suit_solgov_skrell.dmi',
		)
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_PADDED,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_RESISTANT
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/stack/flag,/obj/item/device/scanner/health,/obj/item/device/gps,/obj/item/pinpointer/radio,/obj/item/material/hatchet/machete,/obj/item/shovel)

/obj/item/clothing/suit/space/void/exploration/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/exploration
	boots = /obj/item/clothing/shoes/magboots
