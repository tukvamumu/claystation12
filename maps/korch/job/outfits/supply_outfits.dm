/singleton/hierarchy/outfit/job/korch/crew/supply
	l_ear = /obj/item/device/radio/headset/headset_cargo
	hierarchy_type = /singleton/hierarchy/outfit/job/korch/crew/supply

/singleton/hierarchy/outfit/job/korch/crew/supply/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/singleton/hierarchy/outfit/job/korch/crew/supply/qm
	name = OUTFIT_JOB_NAME("Quartermaster")
	l_ear = /obj/item/device/radio/headset/headset_qm
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/korch/crew/supply/qm)
	pda_type = /obj/item/modular_computer/pda/cargo

/singleton/hierarchy/outfit/job/korch/crew/supply/tech
	name = OUTFIT_JOB_NAME("Cargo Technician")
	uniform = /obj/item/clothing/under/rank/cargotech
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/korch/crew/supply)
	pda_type = /obj/item/modular_computer/pda/cargo

/singleton/hierarchy/outfit/job/korch/crew/supply/mining
	name = OUTFIT_JOB_NAME("Miner")
	uniform = /obj/item/clothing/under/rank/miner
	shoes = /obj/item/clothing/shoes/workboots
	id_types = list(/obj/item/card/id/korch/crew/supply/mining)
	pda_type = /obj/item/modular_computer/pda/mining
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL
	l_ear = /obj/item/device/radio/headset/headset_mining
