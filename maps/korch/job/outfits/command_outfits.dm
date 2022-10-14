/decl/hierarchy/outfit/job/korch/crew/command
	name = OUTFIT_JOB_NAME("Korch Command Outfit")
	hierarchy_type = /decl/hierarchy/outfit/job/korch/crew/command
	l_ear = /obj/item/device/radio/headset/headset_com

/decl/hierarchy/outfit/job/korch/crew/command/CO
	name = OUTFIT_JOB_NAME("Captain")
	glasses = /obj/item/clothing/glasses/aviators_black
	uniform = /obj/item/clothing/under/rank/captain
	suit = /obj/item/clothing/suit/captunic/capjacket
	l_ear = /obj/item/device/radio/headset/heads/korchexec
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/caphat/cap
	id_types = list(/obj/item/card/id/korch/gold)
	pda_type = /obj/item/modular_computer/pda/captain

/decl/hierarchy/outfit/job/korch/crew/command/CO/New()
	..()
	BACKPACK_OVERRIDE_COMMAND

/decl/hierarchy/outfit/job/korch/crew/command/hop
	name = OUTFIT_JOB_NAME("Head of Personnel - Korch")
	uniform = /obj/item/clothing/under/rank/head_of_personnel_whimsy
	l_ear = /obj/item/device/radio/headset/heads/korchexec
	shoes = /obj/item/clothing/shoes/laceup
	head = /obj/item/clothing/head/caphat/hop
	id_types = list(/obj/item/card/id/korch/silver)
	pda_type = /obj/item/modular_computer/pda/heads/hop
	
/decl/hierarchy/outfit/job/korch/crew/command/hop/New()
	..()
	BACKPACK_OVERRIDE_COMMAND

/decl/hierarchy/outfit/job/korch/crew/command/cmo
	name = OUTFIT_JOB_NAME("Chief Medical Officer - Korch")
	l_ear  =/obj/item/device/radio/headset/heads/cmo
	uniform = /obj/item/clothing/under/rank/chief_medical_officer
	suit = /obj/item/clothing/suit/storage/toggle/labcoat/cmoalt
	shoes = /obj/item/clothing/shoes/brown
	id_types = list(/obj/item/card/id/korch/silver/medical)
	pda_type = /obj/item/modular_computer/pda/heads/cmo
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/korch/crew/command/cmo/New()
	..()
	BACKPACK_OVERRIDE_MEDICAL

/decl/hierarchy/outfit/job/korch/crew/command/chief_engineer
	name = OUTFIT_JOB_NAME("Chief Engineer - Korch")
	uniform = /obj/item/clothing/under/rank/chief_engineer
	shoes = /obj/item/clothing/shoes/workboots
	head = /obj/item/clothing/head/hardhat/white
	l_ear = /obj/item/device/radio/headset/heads/ce
	id_types = list(/obj/item/card/id/korch/silver/engineering)
	pda_type = /obj/item/modular_computer/pda/heads/ce
	pda_slot = slot_l_store
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL

/decl/hierarchy/outfit/job/korch/crew/command/chief_engineer/New()
	..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/korch/crew/command/hos
	name = OUTFIT_JOB_NAME("Head of Security")
	l_ear = /obj/item/device/radio/headset/heads/hos
	uniform = /obj/item/clothing/under/rank/head_of_security/corp
	suit = /obj/item/clothing/suit/armor/hos/jensen
	shoes = /obj/item/clothing/shoes/dutyboots
	glasses = /obj/item/clothing/glasses/hud/security/prot/sunglasses
	head = /obj/item/clothing/head/HoS
	id_types = list(/obj/item/card/id/korch/silver/security)
	pda_type = /obj/item/modular_computer/pda/heads/hos

/decl/hierarchy/outfit/job/korch/crew/command/hos/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/korch/crew/command/bridgestaff
	name = OUTFIT_JOB_NAME("Bridge Staff")
	glasses = /obj/item/clothing/glasses/aviators_black
	uniform = /obj/item/clothing/under/rank/ntwork/nanotrasen
	shoes = /obj/item/clothing/shoes/workboots
	head = /obj/item/clothing/head/mariner
	id_types = list(/obj/item/card/id/korch/crew/bridgestaff)
	pda_type = /obj/item/modular_computer/pda/heads
	l_ear = /obj/item/device/radio/headset/bridgestaff

/decl/hierarchy/outfit/job/korch/crew/command/bridgestaff/New()
	..()
	BACKPACK_OVERRIDE_COMMAND
