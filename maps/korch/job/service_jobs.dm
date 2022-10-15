/datum/job/chaplain
	title = "Chaplain"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 40
	economic_power = 6
	minimal_player_age = 0
	supervisors = "the Executive Officer"
	outfit_type = /decl/hierarchy/outfit/job/korch/crew/service/chaplain
	access = list(
		access_morgue, access_chapel_office,
		access_crematorium, access_nt_crew,
		access_radio_serv
	)

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/empl)

/datum/job/janitor
	title = "Sanitation Technician"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Head of Personnel"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	alt_titles = list(
		"Janitor")
	outfit_type = /decl/hierarchy/outfit/job/korch/crew/service/janitor
	min_skill = list(   SKILL_HAULING = SKILL_BASIC)

	access = list(
		access_maint_tunnels, access_emergency_storage,
		access_janitor, access_nt_crew,
		access_radio_serv
	)

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/empl)

/datum/job/chef
	title = "Cook"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 18)
	supervisors = "the Executive Officer"
	alt_titles = list(
		"Bartender",
		"Steward",
		"Culinary Specialist"
	)
	outfit_type = /decl/hierarchy/outfit/job/korch/crew/service/cook
	min_skill = list(
		SKILL_BOTANY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_BASIC,
		SKILL_COOKING = SKILL_ADEPT
	)
	access = list(
		access_commissary,
		access_hydroponics,
		access_kitchen,
		access_radio_serv,
		access_nt_crew
	)
	
	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/empl)
