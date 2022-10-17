//korch ID Cards (they have to be here to make the outfits work, no way around it)

/obj/item/card/id/korch
	name = "identification card"
	desc = "An identification card issued to personnel aboard the NSV korch."
	job_access_type = DEFAULT_JOB_TYPE

/obj/item/card/id/korch/silver
	desc = "A silver identification card belonging to heads of staff."
	item_state = "silver_id"
	job_access_type = /datum/job/hop
	extra_details = list("goldstripe")
	color = "#ccecff"

/obj/item/card/id/korch/gold
	desc = "A golden identification card belonging to the Commanding Officer."
	item_state = "gold_id"
	job_access_type = /datum/job/captain
	color = "#d4c780"
	extra_details = list("goldstripe")

/obj/item/card/id/korch/contractor
	desc = "An identification card issued to private contractors aboard the NSV korch."
	job_access_type = DEFAULT_JOB_TYPE
	color = COLOR_GRAY80


/obj/item/card/id/korch/silver/medical
	job_access_type = /datum/job/cmo
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/korch/crew/medical
	job_access_type = /datum/job/medic_doctor
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/korch/crew/medical/chemist
	job_access_type = /datum/job/chemist
	detail_color = COLOR_PALE_BLUE_GRAY

/obj/item/card/id/korch/crew/medical/counselor
	job_access_type = /datum/job/psychiatrist

/obj/item/card/id/korch/silver/security
	job_access_type = /datum/job/hos
	detail_color = "#e00000"

/obj/item/card/id/korch/crew/security
	job_access_type = /datum/job/officer
	detail_color = "#e00000"

/obj/item/card/id/korch/crew/security/warden
	job_access_type = /datum/job/warden
	extra_details = list("onegoldstripe")

/obj/item/card/id/korch/crew/security/forensic
	job_access_type = /datum/job/detective

/obj/item/card/id/korch/silver/engineering
	job_access_type = /datum/job/chief_engineer
	detail_color = COLOR_SUN

/obj/item/card/id/korch/crew/engineering
	job_access_type = /datum/job/engineer
	detail_color = COLOR_SUN

/obj/item/card/id/korch/crew/engineering/roboticist
	job_access_type = /datum/job/roboticist

/obj/item/card/id/korch/crew/supply/qm
	job_access_type = /datum/job/qm
	detail_color = COLOR_BROWN
	extra_details = list("onegoldstripe")

/obj/item/card/id/korch/crew/supply
	job_access_type = /datum/job/cargo_tech
	detail_color = COLOR_BROWN

/obj/item/card/id/korch/crew/service //unused
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_CIVIE_GREEN

/obj/item/card/id/korch/crew/service/janitor
	job_access_type = /datum/job/janitor

/obj/item/card/id/korch/crew/service/chef
	job_access_type = /datum/job/chef

/obj/item/card/id/korch/crew/service/chaplain
	job_access_type = /datum/job/chaplain

/obj/item/card/id/korch/crew/bridgestaff
	job_access_type = /datum/job/bridgestaff
	detail_color = COLOR_COMMAND_BLUE

/obj/item/card/id/korch/crew/explorer
	job_access_type = /datum/job/explorer
	detail_color = COLOR_PURPLE

/obj/item/card/id/korch/crew/nt_pilot
	job_access_type = /datum/job/nt_pilot
	detail_color = COLOR_PURPLE

// EC Science
/obj/item/card/id/korch/silver/research
	job_access_type = /datum/job/rd
	detail_color = COLOR_RESEARCH
	color = COLOR_WHITE

/obj/item/card/id/korch/crew/research
	desc = "A card issued to science personnel aboard the NSV korch."
	detail_color = COLOR_RESEARCH

/obj/item/card/id/korch/crew/research/scientist
	job_access_type = /datum/job/scientist

/obj/item/card/id/korch/crew/supply/mining
	job_access_type = /datum/job/mining

//NanoTrasen and Passengers

/obj/item/card/id/korch/passenger
	desc = "A card issued to passengers aboard the NSV korch."
	job_access_type = DEFAULT_JOB_TYPE
	detail_color = COLOR_PAKISTAN_GREEN

/obj/item/card/id/korch/passenger/corporate
	color = COLOR_BOTTLE_GREEN
	detail_color = COLOR_OFF_WHITE

//Merchant
/obj/item/card/id/korch/merchant
	desc = "An identification card issued to Merchants, indicating their right to sell and buy goods."
	job_access_type = /datum/job/merchant
	color = COLOR_OFF_WHITE
	detail_color = COLOR_BEIGE
