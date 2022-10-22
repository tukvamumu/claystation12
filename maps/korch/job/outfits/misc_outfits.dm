/decl/hierarchy/outfit/job/korch/passenger/passenger
	name = OUTFIT_JOB_NAME("Passenger - Korch")
	uniform = /obj/item/clothing/under/color/grey
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda
	id_types = list(/obj/item/card/id/korch/passenger)

/decl/hierarchy/outfit/job/korch/passenger/clown
	name = OUTFIT_JOB_NAME("Passenger - Korch")
	mask = /obj/item/clothing/mask/gas/clown_hat
	uniform = /obj/item/clothing/under/rank/clown
	l_ear = /obj/item/device/radio/headset
	shoes = /obj/item/clothing/shoes/clown_shoes
	pda_type = /obj/item/modular_computer/pda
	id_types = list(/obj/item/card/id/korch/passenger)


/decl/hierarchy/outfit/job/korch/merchant
	name = OUTFIT_JOB_NAME("Merchant - Korch")
	uniform = /obj/item/clothing/under/color/black
	shoes = /obj/item/clothing/shoes/black
	l_ear = /obj/item/device/radio/headset
	pda_type = /obj/item/modular_computer/pda
	id_types = list(/obj/item/card/id/korch/merchant)

/decl/hierarchy/outfit/job/korch/ert/New()
	..()
	backpack_overrides[/decl/backpack_outfit/backpack]      = /obj/item/storage/backpack/ert

/decl/hierarchy/outfit/job/korch/ert
	name = OUTFIT_JOB_NAME("ERT - Korch")
	uniform = /obj/item/clothing/under/ert
	glasses = /obj/item/clothing/glasses/hud/security/jensenshades
	head = /obj/item/clothing/head/beret/centcom/officer
	gloves = /obj/item/clothing/gloves/thick/combat
	id_types = list(/obj/item/card/id/centcom/ERT)
	l_ear = /obj/item/device/radio/headset/ert
	pda_type = /obj/item/modular_computer/pda
	shoes = /obj/item/clothing/shoes/combat

/decl/hierarchy/outfit/job/korch/ert/leader
	name = OUTFIT_JOB_NAME("ERT Leader - Korch")
	uniform = /obj/item/clothing/under/ert
	head = /obj/item/clothing/head/beret/centcom/captain
