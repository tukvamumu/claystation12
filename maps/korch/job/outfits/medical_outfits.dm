/decl/hierarchy/outfit/job/korch/crew/medical
	hierarchy_type = /decl/hierarchy/outfit/job/korch/crew/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/korch/crew/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/korch/crew/medical/doctor
	name = OUTFIT_JOB_NAME("Medic - Korch")
	uniform = /obj/item/clothing/under/rank/medical/scrubs/teal
	suit = /obj/item/clothing/suit/storage/toggle/labcoat
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/korch/crew/medical)
	l_ear = /obj/item/device/radio/headset/headset_corpsman

/decl/hierarchy/outfit/job/korch/crew/medical/paramedic
	name = OUTFIT_JOB_NAME("Paramedic - Korch")
	uniform = /obj/item/clothing/under/rank/medical/paramedic
	suit = /obj/item/clothing/suit/storage/toggle/fr_jacket
	shoes = /obj/item/clothing/shoes/white
	l_ear = /obj/item/device/radio/headset/headset_corpsman/alt
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/korch/crew/medical/chemist
	name = OUTFIT_JOB_NAME("Chemist - Korch")
	uniform = /obj/item/clothing/under/rank/chemist_new
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/chemist
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/chemistry
	id_types = list(/obj/item/card/id/korch/crew/medical/chemist)

/decl/hierarchy/outfit/job/korch/crew/medical/chemist/New()
	..()
	BACKPACK_OVERRIDE_CHEMISTRY

/decl/hierarchy/outfit/job/korch/crew/passanger/counselor
	name = OUTFIT_JOB_NAME("Counselor")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/korch/crew/medical/counselor)
