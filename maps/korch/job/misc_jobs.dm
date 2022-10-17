/********
Synthetic
********/

/datum/job/cyborg
	total_positions = 1
	spawn_positions = 1
	supervisors = "your laws"
	minimal_player_age = 3

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/prop)

/datum/job/ai
	minimal_player_age = 7
	total_positions = 0
	spawn_positions = 0

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/prop)

/*******
Civilian
*******/

/datum/job/assistant
	title = "Passenger"
	total_positions = 12
	spawn_positions = 12
	supervisors = "the Head of Personnel"
	economic_power = 6
	announced = FALSE
	alt_titles = list("Psychologist" = /decl/hierarchy/outfit/job/korch/crew/passanger/counselor, "Clown" = /decl/hierarchy/outfit/job/korch/passenger/clown)
	outfit_type = /decl/hierarchy/outfit/job/korch/passenger/passenger
	min_goals = 2
	max_goals = 7

/datum/job/merchant
	title = "Merchant"
	department = "Civilian"
	department_flag = CIV
	total_positions = 1
	spawn_positions = 1
	availablity_chance = 100
	supervisors = "the invisible hand of the market"
	ideal_character_age = 30
	minimal_player_age = 0
	create_record = 0
	outfit_type = /decl/hierarchy/outfit/job/korch/merchant
	latejoin_at_spawnpoints = 1
	access = list(access_merchant, access_external_airlocks)
	announced = FALSE
	min_skill = list(   SKILL_FINANCE = SKILL_ADEPT,
	                    SKILL_PILOT	  = SKILL_BASIC)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX)
	
	skill_points = 24
	required_language = null
	give_psionic_implant_on_join = FALSE

	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
