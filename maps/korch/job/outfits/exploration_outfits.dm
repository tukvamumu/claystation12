/decl/hierarchy/outfit/job/korch/crew/exploration/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/storage/backpack/explorer
	backpack_overrides[/decl/backpack_outfit/satchel]       = /obj/item/storage/backpack/satchel/explorer
	backpack_overrides[/decl/backpack_outfit/messenger_bag] = /obj/item/storage/backpack/messenger/explorer

/decl/hierarchy/outfit/job/korch/crew/exploration/pathfinder
	name = OUTFIT_JOB_NAME("Pathfinder")
	uniform = /obj/item/clothing/under/rank/scientist/executive/nanotrasen
	shoes = /obj/item/clothing/shoes/laceup
	id_types = list(/obj/item/card/id/korch/crew/pathfinder)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/pathfinder

/decl/hierarchy/outfit/job/korch/crew/exploration/explorer
	name = OUTFIT_JOB_NAME("NanoTrasen Research Explorer")
	uniform = /obj/item/clothing/under/rank/scientist_new
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/korch/crew/explorer)
	pda_type = /obj/item/modular_computer/pda/explorer
	l_ear = /obj/item/device/radio/headset/exploration

/decl/hierarchy/outfit/job/korch/crew/pilot
	name = OUTFIT_JOB_NAME("Nanotrasen Pilot")
	glasses = /obj/item/clothing/glasses/aviators_black
	uniform = /obj/item/clothing/under/rank/ntpilot/nanotrasen
	suit = /obj/item/clothing/suit/storage/toggle/bomber
	shoes = /obj/item/clothing/shoes/dutyboots
	l_ear = /obj/item/device/radio/headset/headset_pilot
	id_types = list(/obj/item/card/id/korch/crew/nt_pilot)
	pda_type = /obj/item/modular_computer/pda/explorer
