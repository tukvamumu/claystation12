/datum/gear/gloves/colored

/datum/gear/gloves/latex
	allowed_roles = STERILE_ROLES

/datum/gear/gloves/nitrile
	allowed_roles = STERILE_ROLES

/datum/gear/gloves/rainbow

/datum/gear/gloves/evening

/datum/gear/gloves/botany
	allowed_roles = list(
		/datum/job/rd,
		/datum/job/scientist,
		/datum/job/chef,
		/datum/job/assistant,
		/datum/job/merchant,
		/datum/job/nt_pilot,
		/datum/job/explorer
	)

/datum/gear/gloves/dress
	display_name = "gloves, dress"
	path = /obj/item/clothing/gloves/color/white
	flags = GEAR_HAS_NO_CUSTOMIZATION

/datum/gear/gloves/duty
	display_name = "gloves, duty"
	path = /obj/item/clothing/gloves/thick/duty
	cost = 3
	flags = GEAR_HAS_NO_CUSTOMIZATION
