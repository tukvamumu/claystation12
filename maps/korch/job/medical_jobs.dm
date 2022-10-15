/datum/job/medic_doctor
	title = "Medical Doctor"
	department = "Medical"
	department_flag = MED
	minimal_player_age = 2
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 35
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Chief Medical Officer"
	selection_color = "#013d3b"
	economic_power = 6
	outfit_type = /decl/hierarchy/outfit/job/korch/crew/medical/doctor
	min_skill = list(   SKILL_MEDICAL     = SKILL_EXPERT,
	                    SKILL_ANATOMY     = SKILL_ADEPT,
	                    SKILL_CHEMISTRY   = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 24

	access = list(
		access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
		access_crematorium, access_chemistry, access_surgery,
		access_medical_equip, access_nt_crew, access_radio_med
	)

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/empl)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/medic_doctor/get_description_blurb()
	return "You are a MD. Your job is to treat wounded crewmembers. You are expected to have a good medical knowledge. You are subordinate to CMO."

/datum/job/paramedic
	title = "Paramedic"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Medical Officer"
	economic_power = 7
	minimum_character_age = list(SPECIES_HUMAN = 19)
	ideal_character_age = 40
	minimal_player_age = 0
	alt_titles = list(
		"Paramedic",
		"Corpsman")
	outfit_type = /decl/hierarchy/outfit/job/korch/crew/medical/paramedic
	min_skill = list(   SKILL_EVA     = SKILL_BASIC,
	                    SKILL_MEDICAL = SKILL_BASIC,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	access = list(
		access_medical, access_morgue, access_maint_tunnels,
		access_external_airlocks, access_emergency_storage,
		access_eva, access_surgery, access_medical_equip,
		access_nt_crew, access_hangar, access_radio_med
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
	skill_points = 22

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/empl)

/datum/job/paramedic/get_description_blurb()
	return "You are a paramedic. Your job is to monitor suit sensors and deliver wounded crew to the medbay. You are subordinate to CMO."


/datum/job/medical_trainee
	title = "Trainee Medical Technician"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "medical personnel and the Chief Medical Officer"
	selection_color = "#013d3b"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	alt_titles = list(
		"Corpsman Trainee")

	outfit_type = /decl/hierarchy/outfit/job/korch/crew/medical/doctor

	skill_points = 12
	no_skill_buffs = TRUE

	min_skill = list(   SKILL_EVA     = SKILL_ADEPT,
	                    SKILL_HAULING = SKILL_ADEPT,
	                    SKILL_MEDICAL = SKILL_EXPERT,
	                    SKILL_ANATOMY = SKILL_BASIC)

	max_skill = list(   SKILL_MEDICAL     = SKILL_MAX,
	                    SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_CHEMISTRY   = SKILL_MAX)

	access = list(
		access_medical, access_morgue, access_maint_tunnels,
		access_external_airlocks, access_emergency_storage,
		access_surgery, access_medical_equip, access_nt_crew,
		access_radio_med
	)

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/empl)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/medical_trainee/get_description_blurb()
	return "You are a Trainee Medical Technician. You are learning how to treat and recover wounded crew from the more experienced medical personnel aboard. You are subordinate to the rest of the medical team."

/datum/job/chemist
	title = "Pharmacist"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "medical personnel and the Chief Medical Officer"
	selection_color = "#013d3b"
	economic_power = 4
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 30
	minimal_player_age = 7
	alt_titles = list(
		"Chemist"
	)
	outfit_type = /decl/hierarchy/outfit/job/korch/crew/medical/chemist
	min_skill = list(   SKILL_MEDICAL   = SKILL_BASIC,
	                    SKILL_CHEMISTRY = SKILL_ADEPT)

	max_skill = list(   SKILL_MEDICAL     = SKILL_BASIC,
						SKILL_ANATOMY	  = SKILL_BASIC,
	                    SKILL_CHEMISTRY   = SKILL_MAX)
	skill_points = 16

	access = list(
		access_medical, access_maint_tunnels, access_emergency_storage,
		access_medical_equip, access_nt_crew, access_chemistry,
	 	access_virology, access_morgue, access_crematorium, access_radio_med
	)

	allowed_branches = list(/datum/mil_branch/nanotrasen)
	allowed_ranks = list(/datum/mil_rank/nt/empl)

/datum/job/chemist/get_description_blurb()
	return "You are the Pharmacist. You make medicine and other useful substances. You are not a doctor or medic; you should not be treating patients, but rather providing the medicine to do so. You are subordinate to Medical Doctors and the CMO."

