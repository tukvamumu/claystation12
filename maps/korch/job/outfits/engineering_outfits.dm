/decl/hierarchy/outfit/job/korch/crew/engineering
	hierarchy_type = /decl/hierarchy/outfit/job/korch/crew/engineering
	l_ear = /obj/item/device/radio/headset/headset_eng
	pda_slot = slot_l_store
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/korch/crew/engineering/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/korch/crew/engineering/engineer
	name = OUTFIT_JOB_NAME("Engineer - Korch")
	head = /obj/item/clothing/head/hardhat/orange
	uniform = /obj/item/clothing/under/hazard
	shoes = /obj/item/clothing/shoes/workboots
	id_types = list(/obj/item/card/id/korch/crew/engineering)
	pda_type = /obj/item/modular_computer/pda/engineering

/decl/hierarchy/outfit/job/korch/crew/engineering/roboticist
	name = OUTFIT_JOB_NAME("Roboticist - Korch")
	uniform = /obj/item/clothing/under/rank/roboticist
	shoes = /obj/item/clothing/shoes/black
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/coat
	id_types = list(/obj/item/card/id/korch/crew/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

