/singleton/hierarchy/outfit/job/korch/crew/medical
	hierarchy_type = /singleton/hierarchy/outfit/job/korch/crew/medical
	l_ear = /obj/item/device/radio/headset/headset_med
	pda_type = /obj/item/modular_computer/pda/medical
	pda_slot = slot_l_store

/singleton/hierarchy/outfit/job/korch/crew/medical/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/singleton/hierarchy/outfit/job/korch/crew/medical/doctor
	name = OUTFIT_JOB_NAME("Medic - Korch")
	head = /obj/item/clothing/head/soft/medsoft
	uniform = /obj/item/clothing/under/korch/doctor
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/korch/crew/medical)
	l_ear = /obj/item/device/radio/headset/headset_corpsman

/singleton/hierarchy/outfit/job/korch/crew/medical/paramedic
	name = OUTFIT_JOB_NAME("Paramedic - Korch")
	head = /obj/item/clothing/head/soft/paramedic
	uniform = /obj/item/clothing/under/korch/doctor/paramedic
	shoes = /obj/item/clothing/shoes/black
	l_ear = /obj/item/device/radio/headset/headset_corpsman
	id_types = list(/obj/item/card/id/korch/crew/medical/paramedic)
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL

/singleton/hierarchy/outfit/job/korch/crew/medical/chemist
	name = OUTFIT_JOB_NAME("Chemist - Korch")
	uniform = /obj/item/clothing/under/rank/chemist_new
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/chemist
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/chemistry
	id_types = list(/obj/item/card/id/korch/crew/medical/chemist)

/singleton/hierarchy/outfit/job/korch/crew/medical/chemist/New()
	..()
	BACKPACK_OVERRIDE_CHEMISTRY

/singleton/hierarchy/outfit/job/korch/crew/passanger/counselor
	name = OUTFIT_JOB_NAME("Counselor")
	uniform = /obj/item/clothing/under/rank/psych/turtleneck
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/korch/crew/medical/counselor)
