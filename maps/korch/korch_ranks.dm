/datum/job/submap
	branch = /datum/mil_branch/civilian
	rank =   /datum/mil_rank/civ/civ
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)

/datum/map/korch
	branch_types = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/nanotrasen,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

	spawn_branch_types = list(
		/datum/mil_branch/civilian,
		/datum/mil_branch/nanotrasen,
		/datum/mil_branch/alien,
		/datum/mil_branch/skrell_fleet
	)

/*
 * Species restricts
 * =================
 */

	species_to_branch_blacklist = list(
		/datum/species/human    = list(
			/datum/mil_branch/alien,
			/datum/mil_branch/skrell_fleet),
		/datum/species/machine  = list(
			/datum/mil_branch/alien,
			/datum/mil_branch/skrell_fleet),
		/datum/species/adherent = list(
			/datum/mil_branch/alien,
			/datum/mil_branch/skrell_fleet),
		/datum/species/unathi   = list(
			/datum/mil_branch/alien,
			/datum/mil_branch/skrell_fleet),
		/datum/species/unathi/yeosa   = list(
			/datum/mil_branch/alien,
			/datum/mil_branch/skrell_fleet),
		/datum/species/skrell   = list(
			/datum/mil_branch/alien),
		/datum/species/nabber   = list(
			/datum/mil_branch/civilian,
			/datum/mil_branch/nanotrasen,
			/datum/mil_branch/alien,
			/datum/mil_branch/skrell_fleet),
		/datum/species/diona    = list(
			/datum/mil_branch/alien,
			/datum/mil_branch/skrell_fleet),
		/datum/species/vox      = list(
			/datum/mil_branch/nanotrasen,
			/datum/mil_branch/skrell_fleet
		)
	)

	species_to_branch_whitelist = list(
		/datum/species/diona      = list(/datum/mil_branch/civilian,
		 								 /datum/mil_branch/nanotrasen),
		/datum/species/skrell     = list(/datum/mil_branch/civilian,
		 								 /datum/mil_branch/nanotrasen,
		 								 /datum/mil_branch/skrell_fleet),
		/datum/species/unathi     = list(/datum/mil_branch/civilian,
										 /datum/mil_branch/nanotrasen),
		/datum/species/unathi/yeosa = list(/datum/mil_branch/civilian,
										 /datum/mil_branch/nanotrasen),
		/datum/species/adherent   = list(/datum/mil_branch/civilian,
										 /datum/mil_branch/nanotrasen),
		/datum/species/vox        = list(/datum/mil_branch/alien,
										 /datum/mil_branch/civilian)
	)

	species_to_rank_whitelist = list(
		/datum/species/vox = list(
			/datum/mil_branch/alien = list(
				/datum/mil_rank/alien
			)
		)
	)


/*
 *  Branches
 *  ========
 */

/datum/mil_branch/civilian
	name = "Civilian"
	name_short = "civ"
	email_domain = "freemail.net"
	allow_custom_email = TRUE

	rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/offduty,
	)

	spawn_rank_types = list(
		/datum/mil_rank/civ/civ,
		/datum/mil_rank/civ/offduty,
	)

	assistant_job = "Passenger"

/datum/mil_branch/nanotrasen
	name = "NanoTrasen"
	name_short = "NT"
	email_domain = "mail.nanotrasen.net"

	rank_types = list(
		/datum/mil_rank/nt/prop,
		/datum/mil_rank/nt/empl,
		/datum/mil_rank/nt/sec,
		/datum/mil_rank/nt/com,
		/datum/mil_rank/nt/cap
	)

	spawn_rank_types = list(
		/datum/mil_rank/nt/prop,
		/datum/mil_rank/nt/empl,
		/datum/mil_rank/nt/sec,
		/datum/mil_rank/nt/com,
		/datum/mil_rank/nt/cap
	)

	min_skill = list(	SKILL_HAULING = SKILL_BASIC,
						SKILL_SCIENCE = SKILL_BASIC,
						SKILL_EVA     = SKILL_BASIC)



/datum/mil_rank/grade() //useless, for sure
	. = ..()
	if(!sort_order)
		return ""
	if(sort_order <= 10)
		return "E[sort_order]"
	return "O[sort_order - 10]"

/*
 *  Civilians
 *  =========
 */

/datum/mil_rank/civ/civ
	name = "Civilian"
	name_short = null

/datum/mil_rank/nt/empl
	name = "NanoTrasen Employee"

/datum/mil_rank/nt/sec
	name = "NanoTrasen Security"
	accessory = list(/obj/item/clothing/accessory/badge/holo/cord)


/datum/mil_rank/nt/com
	name = "NanoTrasen Command"
	accessory = list(/obj/item/clothing/accessory/badge/nanotrasen)


/datum/mil_rank/nt/cap
	name = "NanoTrasen Captain"
	accessory = list(/obj/item/clothing/accessory/medal/gold/nanotrasen)

/datum/mil_rank/civ/offduty
	name = "Off-Duty Personnel"

/datum/mil_rank/nt/prop
	name = "NanoTrasen Property"

/*
 * Vox/foreign alien branch
 * ========================
 */

/datum/mil_branch/alien
	name = "Alien"
	name_short = "Alien"
	rank_types = list(/datum/mil_rank/alien)
	spawn_rank_types = list(/datum/mil_rank/alien)

/datum/mil_rank/alien
	name = "Alien"
