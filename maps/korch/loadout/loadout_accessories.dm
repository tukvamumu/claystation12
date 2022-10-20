/datum/gear/accessory/armband_security
	allowed_roles = SECURITY_ROLES

/datum/gear/accessory/armband_cargo
	allowed_roles = SUPPLY_ROLES

/datum/gear/accessory/armband_medical
	allowed_roles = MEDICAL_ROLES

/datum/gear/accessory/armband_emt
	allowed_roles = list(
		/datum/job/medic_doctor,
		/datum/job/paramedic,
		/datum/job/medical_trainee
	)
	flags = GEAR_HAS_NO_CUSTOMIZATION
/datum/gear/accessory/armband_engineering
	allowed_roles = ENGINEERING_ROLES

/datum/gear/accessory/armband_hydro
	allowed_roles = list(
		/datum/job/rd,
		/datum/job/scientist
	)
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/accessory/armband_nt

/datum/gear/accessory/ntaward

/datum/gear/accessory/tie

/datum/gear/accessory/tie_color

/datum/gear/accessory/neckerchief

/datum/gear/accessory/stethoscope
	allowed_roles = STERILE_ROLES

/datum/gear/tactical/holster
	allowed_roles = ARMED_ROLES

/datum/gear/tactical/holster/New()
	..()
	var/holsters = list()
	holsters["shoulder holster"] = /obj/item/clothing/accessory/storage/holster
	holsters["armpit holster"] = /obj/item/clothing/accessory/storage/holster/armpit
	holsters["waist holster"] = /obj/item/clothing/accessory/storage/holster/waist
	holsters["hip holster"] = /obj/item/clothing/accessory/storage/holster/hip
	holsters["thigh holster"] = /obj/item/clothing/accessory/storage/holster/thigh
	gear_tweaks += new/datum/gear_tweak/path(holsters)

/datum/gear/tactical/helmet_cover
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/sheath
	allowed_roles = list(/datum/job/explorer)

/datum/gear/tactical/armor_deco
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/press_tag
	display_name = "Press tag"
	path = /obj/item/clothing/accessory/armor_tag/press
	allowed_roles = list(
		/datum/job/assistant
	)
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/tactical/ntsectag
	display_name = "NanoTrasen Security tag"
	path = /obj/item/clothing/accessory/armor_tag/nt
	allowed_roles = SECURITY_ROLES
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/tactical/helm_covers
	allowed_roles = ARMORED_ROLES

/datum/gear/clothing/hawaii

/datum/gear/clothing/scarf

/datum/gear/clothing/flannel

/datum/gear/clothing/vest

/datum/gear/clothing/suspenders

/datum/gear/clothing/suspenders/colorable

/datum/gear/clothing/wcoat

/datum/gear/clothing/zhongshan

/datum/gear/clothing/dashiki

/datum/gear/clothing/thawb

/datum/gear/clothing/sherwani

/datum/gear/clothing/qipao

/datum/gear/clothing/sweater

/datum/gear/clothing/tangzhuang

/datum/gear/accessory/bowtie

/datum/gear/foundation_civilian

/*********************
 tactical accessories
*********************/
/datum/gear/tactical/ubac
	display_name = "black UBAC shirt"
	path = /obj/item/clothing/accessory/ubac
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/ubac/blue
	display_name = "navy blue UBAC shirt"
	path = /obj/item/clothing/accessory/ubac/blue
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/tactical/ubac/misc
	display_name = "miscellaneous UBAC shirt selection"
	path = /obj/item/clothing/accessory/ubac

/datum/gear/tactical/ubac/misc/New()
	..()
	var/shirts = list()
	shirts["green UBAC shirt"] = /obj/item/clothing/accessory/ubac/green
	shirts["tan UBAC shirt"] = /obj/item/clothing/accessory/ubac/tan
	gear_tweaks += new/datum/gear_tweak/path(shirts)

/datum/gear/tactical/armor_pouches
	display_name = "black armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches
	cost = 2
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/armor_pouches/navy
	display_name = "navy armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/navy
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/tactical/armor_pouches/misc
	display_name = "miscellaneous armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches

/datum/gear/tactical/armor_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["green armor pouches"] = /obj/item/clothing/accessory/storage/pouches/green
	pouches["tan armor pouches"] = /obj/item/clothing/accessory/storage/pouches/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)

/datum/gear/tactical/large_pouches
	display_name = "black large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large
	cost = 5
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/large_pouches/navy
	display_name = "navy large armor pouches"
	path = /obj/item/clothing/accessory/storage/pouches/large/navy
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/tactical/large_pouches/misc
	display_name = "miscellaneous large armor pouches selection"
	path = /obj/item/clothing/accessory/storage/pouches/large

/datum/gear/tactical/large_pouches/misc/New()
	..()
	var/pouches = list()
	pouches["green large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/green
	pouches["tan large armor pouches"] = /obj/item/clothing/accessory/storage/pouches/large/tan
	gear_tweaks += new/datum/gear_tweak/path(pouches)
