/singleton/hierarchy/outfit/job/korch/crew/engineering
	hierarchy_type = /singleton/hierarchy/outfit/job/korch/crew/engineering
	l_ear = /obj/item/device/radio/headset/headset_eng
	pda_slot = slot_l_store
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL

/singleton/hierarchy/outfit/job/korch/crew/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/singleton/hierarchy/outfit/job/korch/crew/engineering/engineer
	name = OUTFIT_JOB_NAME("Engineer - Korch")
	head = /obj/item/clothing/head/hardhat/white
	uniform = /obj/item/clothing/under/korch/hazard
	shoes = /obj/item/clothing/shoes/workboots
	belt = /obj/item/storage/belt/utility/full
	id_types = list(/obj/item/card/id/korch/crew/engineering)
	pda_type = /obj/item/modular_computer/pda/engineering

/singleton/hierarchy/outfit/job/korch/crew/engineering/engineer/atmos
	name = OUTFIT_JOB_NAME("Atmos Technician - Korch")
	head = /obj/item/clothing/head/hardhat/white
	uniform = /obj/item/clothing/under/korch/hazard/atmos
	belt = /obj/item/storage/belt/utility/atmostech

/singleton/hierarchy/outfit/job/korch/crew/engineering/roboticist
	name = OUTFIT_JOB_NAME("Roboticist - Korch")
	uniform = /obj/item/clothing/under/rank/roboticist
	shoes = /obj/item/clothing/shoes/black
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/coat
	id_types = list(/obj/item/card/id/korch/crew/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

