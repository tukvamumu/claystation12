/decl/hierarchy/outfit/job/korch/crew/security
	hierarchy_type = /decl/hierarchy/outfit/job/korch/crew/security
	l_ear = /obj/item/device/radio/headset/headset_sec
	pda_slot = slot_l_store

/decl/hierarchy/outfit/job/korch/crew/security/New()
	..()
	BACKPACK_OVERRIDE_SECURITY

/decl/hierarchy/outfit/job/korch/crew/security/warden
	name = OUTFIT_JOB_NAME("Warden")
	uniform = /obj/item/clothing/under/rank/warden/corp
	suit = /obj/item/clothing/suit/armor/vest/warden
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/warden
	id_types = list(/obj/item/card/id/korch/crew/security/warden)
	pda_type = /obj/item/modular_computer/pda/security

/decl/hierarchy/outfit/job/korch/crew/security/forensic_tech
	name = OUTFIT_JOB_NAME("Forensic Technician - Korch")
	uniform = /obj/item/clothing/under/det/grey
	suit = /obj/item/clothing/suit/storage/det_trench
	shoes = /obj/item/clothing/shoes/laceup
	head = /obj/item/clothing/head/det
	id_types = list(/obj/item/card/id/korch/crew/security/forensic)
	pda_type = /obj/item/modular_computer/pda/forensics

/decl/hierarchy/outfit/job/korch/crew/security/officer
	name = OUTFIT_JOB_NAME("Security Officer")
	uniform = /obj/item/clothing/under/rank/security2
	suit = /obj/item/clothing/suit/armor/vest/old/security
	shoes = /obj/item/clothing/shoes/dutyboots
	head = /obj/item/clothing/head/helmet/nt
	id_types = list(/obj/item/card/id/korch/crew/security)
	pda_type = /obj/item/modular_computer/pda/security
