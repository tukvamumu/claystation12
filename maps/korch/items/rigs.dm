/*
* EXPLORATION
*/
/obj/item/rig/exploration
	name = "heavy exploration HCM"
	suit_type = "heavy exploration hardsuit"
	icon = 'maps/torch/icons/obj/uniques.dmi'
	desc = "Expeditionary Corps' Exoplanet Exploration Armored Unit, A-Unit for short. Built for more hostile (and hungry) environments, it features additional armor and powered exoskeleton."
	icon_state = "command_exp_rig"
	armor = list(
		melee = ARMOR_MELEE_MAJOR,
		bullet = ARMOR_BALLISTIC_SMALL,
		laser = ARMOR_LASER_SMALL,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_MINOR,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)

	chest_type = /obj/item/clothing/suit/space/rig/command
	helm_type = /obj/item/clothing/head/helmet/space/rig/command/exploration
	boot_type = /obj/item/clothing/shoes/magboots/rig/hazard
	glove_type = /obj/item/clothing/gloves/rig/command/exploration


	offline_vision_restriction = TINT_BLIND

	req_access = list(access_explorer)

/obj/item/clothing/gloves/rig/command/exploration
	siemens_coefficient = 0

/obj/item/clothing/head/helmet/space/rig/command/exploration
	camera = /obj/machinery/camera/network/exploration
	icon_state = "command_exp_rig"
	light_overlay = "helmet_light_wide"
	brightness_on = 0.8

/obj/item/clothing/suit/space/rig/command/exploration
	icon_state = "command_exp_rig"
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/device/suit_cooling_unit,
		/obj/item/stack/flag,
		/obj/item/storage/excavation,
		/obj/item/device/scanner,
		/obj/item/device/depth_scanner,
		/obj/item/device/gps,
		/obj/item/pinpointer/radio,
		/obj/item/storage/plants
	)

/obj/item/rig/exploration/equipped
	initial_modules = list(
		/obj/item/rig_module/maneuvering_jets,
		/obj/item/rig_module/device/flash,
		/obj/item/rig_module/device/anomaly_scanner,
		/obj/item/rig_module/grenade_launcher/light,
		/obj/item/rig_module/cooling_unit
	)

/*
 Overrides for standard mapset rig items
 */

/obj/item/clothing/head/helmet/space/rig/industrial
	camera = /obj/machinery/camera/network/supply
