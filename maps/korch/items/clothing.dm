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

//Shirts

/obj/item/clothing/under/korch
	name = "master korch uniform"
	desc = "You shouldn't be seeing this."
	siemens_coefficient = 0.8
	gender_icons = 1

/obj/item/clothing/under/korch/capshirt
	name = "Captain's uniform"
	desc = "Korch captain's shirt. Made from sturdy materials."
	icon = 'maps/korch/icons/obj/obj_under_command.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/korch/icons/mob/onmob_under_command.dmi')
	icon_state = "cargo"
	armor = list(
		melee = ARMOR_MELEE_RESISTANT,
		bullet = ARMOR_BALLISTIC_MINOR,
		laser = ARMOR_LASER_MINOR,
		)

/obj/item/clothing/under/korch/hazard
	name = "Engineer's jumpsuit"
	desc = "A jumpsuit with high-visibility lines usualy worn by engineers. Has radiation shielding."
	icon = 'maps/korch/icons/obj/obj_under_engineering.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/korch/icons/mob/onmob_under_engineering.dmi')
	icon_state = "hazard"
	max_heat_protection_temperature = 30000
	armor = list("energy" = 25, "rad" = 10)

/obj/item/clothing/under/korch/hazard/atmos
	name = "Atmospheric Technician's jumpsuit"
	desc = "A bluish jumpsuit with high-visibility lines usualy worn by atmospheric technicians. Made from fire-resistant materials."
	icon_state = "atmos"

/obj/item/clothing/under/korch/scientist
	name = "Scientist's clothes"
	desc = "Why do we all have to wear these ridiculous ties?"
	icon = 'maps/korch/icons/obj/obj_under_science.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/korch/icons/mob/onmob_under_science.dmi')
	icon_state = "cargo"
	armor = list("bio" = 10)

/obj/item/clothing/under/korch/doctor
	name = "Medic's scrubs"
	desc = "Those are now worn by many hospital personnel."
	icon = 'maps/korch/icons/obj/obj_under_medical.dmi'
	item_icons = list(slot_w_uniform_str = 'maps/korch/icons/mob/onmob_under_medical.dmi')
	icon_state = "cargo"
	armor = list("bio" = 10)

/obj/item/clothing/suit/storage/korch
	name = "master korch jacket"
	icon = 'maps/korch/icons/obj/obj_suit_korch.dmi'
	item_icons = list(slot_wear_suit_str = 'maps/korch/icons/mob/onmob_suit_korch.dmi')


//Overwear

/obj/item/clothing/suit/storage/korch
	name = "service jacket"
	desc = "A uniform service jacket, plain and undecorated."
	icon_state = "blackservice"
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
