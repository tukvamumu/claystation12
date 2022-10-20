/datum/gear/suit/blueapron

/datum/gear/suit/overalls

/datum/gear/suit/medcoat
	allowed_roles = MEDICAL_ROLES

/datum/gear/suit/trenchcoat
	allowed_roles = list(
		/datum/job/assistant,
		/datum/job/detective,
		/datum/job/merchant,
		/datum/job/submap/bearcat_captain,
		/datum/job/submap/bearcat_crewman,
		/datum/job/submap/colonist,
		/datum/job/submap/pod
	)

/datum/gear/suit/poncho

/datum/gear/suit/security_poncho
	allowed_roles = SECURITY_ROLES

/datum/gear/suit/medical_poncho
	allowed_roles = MEDICAL_ROLES

/datum/gear/suit/engineering_poncho
	allowed_roles = ENGINEERING_ROLES

/datum/gear/suit/science_poncho
	allowed_roles = RESEARCH_ROLES

/datum/gear/suit/nanotrasen_poncho

/datum/gear/suit/cargo_poncho
	allowed_roles = SUPPLY_ROLES

/datum/gear/suit/suit_jacket

/datum/gear/suit/custom_suit_jacket

/datum/gear/suit/custom_suit_jacket_double

/datum/gear/suit/hoodie

/datum/gear/suit/hoodie_sel

/datum/gear/suit/pullover

/datum/gear/suit/zipper

/datum/gear/suit/labcoat
	allowed_roles = DOCTOR_ROLES

/datum/gear/suit/labcoat_corp
	allowed_roles = DOCTOR_ROLES

/datum/gear/suit/labcoat_blue
	allowed_roles = DOCTOR_ROLES

/datum/gear/suit/wintercoat_dais
	display_name = "winter coat, DAIS"
	allowed_roles = list(
		/datum/job/engineer,
		/datum/job/roboticist,
		/datum/job/scientist,
		/datum/job/rd
	)
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/suit/coat

/datum/gear/suit/leather

/datum/gear/suit/wintercoat

/datum/gear/suit/track

/datum/gear/tactical/pcarrier
	display_name = "black plate carrier"
	path = /obj/item/clothing/suit/armor/pcarrier
	cost = 1
	slot = slot_wear_suit
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/pcarrier/navy
	display_name = "navy blue plate carrier"
	path = /obj/item/clothing/suit/armor/pcarrier/navy

/datum/gear/tactical/pcarrier/misc
	display_name = "miscellaneous plate carrier selection"
	allowed_roles = ARMORED_ROLES

/datum/gear/tactical/pcarrier/misc/New()
	..()
	var/armors = list()
	armors["green plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/green
	armors["tan plate carrier"] = /obj/item/clothing/suit/armor/pcarrier/tan
	gear_tweaks += new/datum/gear_tweak/path(armors)

/datum/gear/suit/sfp
	display_name = "Agent's jacket"
	path = /obj/item/clothing/suit/storage/toggle/agent_jacket
	allowed_roles = list(
		/datum/job/detective
	)
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/suit/ntjacket
	display_name = "NanoTrasen leather jacket"
	path = /obj/item/clothing/suit/storage/toggle/brown_jacket/nanotrasen

/datum/gear/suit/ntjacket/black
	display_name = "Black NanoTrasen leather jacket"
	path = /obj/item/clothing/suit/storage/leather_jacket/nanotrasen
