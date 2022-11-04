//exploration

/obj/structure/closet/toolcloset/excavation
	name = "excavation equipment closet"
	desc = "It's a storage unit for excavation equipment."
	closet_appearance = /singleton/closet_appearance/secure_closet/engineering/tools

/obj/structure/closet/toolcloset/excavation/WillContain()
	return list(
		/obj/item/storage/belt/archaeology,
		/obj/item/storage/excavation,
		/obj/item/device/flashlight/lantern,
		/obj/item/device/ano_scanner,
		/obj/item/device/depth_scanner,
		/obj/item/device/core_sampler,
		/obj/item/device/gps,
		/obj/item/pinpointer/radio,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/science,
		/obj/item/pickaxe,
		/obj/item/device/measuring_tape,
		/obj/item/pickaxe/xeno/hand,
		/obj/item/storage/bag/fossils,
		/obj/item/hand_labeler,
		/obj/item/taperoll/research,
		/obj/item/device/spaceflare
	)

/singleton/closet_appearance/secure_closet/korch/exploration
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)

/singleton/closet_appearance/secure_closet/korch/exploration/pilot
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)


/obj/structure/closet/secure_closet/explorer
	name = "explorer's locker"
	req_access = list(access_explorer)
	closet_appearance = /singleton/closet_appearance/secure_closet/korch/exploration

/obj/structure/closet/secure_closet/explorer/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/ntbanner,
		/obj/item/ntbanner,
		/obj/item/device/gps,
		/obj/item/taperoll/research,
		/obj/item/storage/belt/holster/machete,
		/obj/item/device/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/exploration,
		/obj/item/device/radio/headset/exploration/alt,
		/obj/item/device/binoculars,
		/obj/item/clothing/accessory/buddy_tag,
		/obj/item/storage/firstaid/light,
		/obj/item/device/camera,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/device/flashlight/flare,
		/obj/item/clothing/under/rank/ntwork/nanotrasen,
		/obj/item/clothing/shoes/workboots
	)

/obj/structure/closet/secure_closet/pilot
	name = "pilot's locker"
	req_access = list(access_pilot)
	closet_appearance = /singleton/closet_appearance/secure_closet/korch/exploration/pilot

/obj/structure/closet/secure_closet/pilot/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/device/gps,
		/obj/item/storage/belt/utility/full,
		/obj/item/device/spaceflare,
		/obj/item/clothing/accessory/storage/webbing_large,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/headset_pilot,
		/obj/item/device/radio/headset/headset_pilot/alt,
		/obj/item/device/binoculars,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/suit/storage/hazardvest/blue,
		/obj/item/clothing/head/helmet/nt/pilot,
		/obj/item/clothing/under/rank/ntpilot/nanotrasen,
		/obj/item/storage/firstaid/light,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/dutyboots,
		/obj/item/clothing/head/korch/pilot,
		/obj/item/device/flashlight/flare
	)

// Research

/obj/structure/closet/secure_closet/RD/korch
	name = "Research Director's locker"

/obj/structure/closet/secure_closet/scientist/korch/WillContain()
	return list(
		/obj/item/storage/belt/utility/full,
		/obj/item/clothing/accessory/storage/black_drop,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/heads/korchntdirector,
		/obj/item/device/radio/headset/heads/korchntdirector/alt,
		/obj/item/device/binoculars,
		/obj/item/clothing/suit/storage/hazardvest/purple,
		/obj/item/storage/firstaid/light,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/black,
		/obj/item/clothing/glasses/science,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/under/rank/research_director/rdalt,
		/obj/item/clothing/suit/storage/toggle/labcoat/rd/nanotrasen,
		/obj/item/clothing/shoes/laceup,
	)


/obj/structure/closet/secure_closet/scientist/korch
	name = "Scientist's locker"

/obj/structure/closet/secure_closet/scientist/korch/WillContain()
	return list(
		/obj/item/storage/belt/utility/full,
		/obj/item/clothing/accessory/storage/black_drop,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/science,
		/obj/item/device/radio/headset/science/alt,
		/obj/item/device/binoculars,
		/obj/item/clothing/suit/storage/hazardvest/purple,
		/obj/item/storage/firstaid/light,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/black,
		/obj/item/clothing/glasses/science,
		/obj/item/clothing/glasses/science,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/under/korch/scientist,
		/obj/item/clothing/suit/storage/toggle/labcoat/korch
	)

//medical
/obj/structure/closet/secure_closet/medical3/korch
	name = "Doctor's locker"
/obj/structure/closet/secure_closet/medical3/korch/WillContain()
	return list(
		/obj/item/storage/belt/medical,
		/obj/item/clothing/accessory/storage/white_drop,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/headset_corpsman,
		/obj/item/device/radio/headset/headset_corpsman/alt,
		/obj/item/clothing/suit/storage/hazardvest/white,
		/obj/item/storage/firstaid/combat,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/black,
		/obj/item/clothing/glasses/hud/health/goggle,
		/obj/item/clothing/glasses/hud/health/goggle,
		/obj/item/clothing/head/soft/medsoft,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/gloves/latex/nitrile,
		/obj/item/clothing/suit/storage/toggle/labcoat/korch,
		/obj/item/clothing/suit/storage/toggle/fr_jacket/emrs,
		/obj/item/clothing/under/korch/doctor
	)

/obj/structure/closet/secure_closet/paramedic/korch
	name = "paramedic's locker"
/obj/structure/closet/secure_closet/paramedic/korch/WillContain()
	return list(
		/obj/item/storage/belt/medical/emt,
		/obj/item/clothing/accessory/storage/white_drop,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/headset_corpsman,
		/obj/item/device/radio/headset/headset_corpsman/alt,
		/obj/item/clothing/suit/storage/hazardvest/white,
		/obj/item/storage/firstaid/combat,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/black,
		/obj/item/clothing/glasses/hud/health/goggle,
		/obj/item/clothing/under/korch/doctor/paramedic,
		/obj/item/clothing/head/soft/paramedic,
		/obj/item/clothing/suit/storage/toggle/fr_jacket,
		/obj/item/clothing/suit/storage/toggle/fr_jacket/ems,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/gloves/latex/nitrile,
		/obj/item/clothing/mask/gas,
	)

/obj/structure/closet/secure_closet/CMO/korch
	name = "CMO's locker"
/obj/structure/closet/secure_closet/CMO/korch/WillContain()
	return list(
		/obj/item/device/radio/headset/heads/cmo,
		/obj/item/device/radio/headset/heads/cmo/alt,
		/obj/item/storage/belt/medical,
		/obj/item/clothing/accessory/storage/white_drop,
		/obj/item/clothing/accessory/storage/white_vest,
		/obj/item/storage/firstaid/combat,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/brown,
		/obj/item/clothing/glasses/hud/health/goggle,
		/obj/item/clothing/gloves/latex/nitrile,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/under/rank/chief_medical_officer,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt,
		/obj/item/clothing/suit/storage/toggle/labcoat/cmo,
		/obj/item/reagent_containers/hypospray
	)

// enginnering
/obj/structure/closet/secure_closet/engineering_personal/korch
	name = "Engineer's locker"

/obj/structure/closet/secure_closet/engineering_personal/korch/WillContain()
	return list(
		/obj/item/clothing/gloves/insulated,
		/obj/item/device/multitool,
		/obj/item/storage/belt/utility/full,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/headset_eng,
		/obj/item/device/radio/headset/headset_eng/alt,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/suit/storage/toggle/highvis,
		/obj/item/clothing/head/hardhat/orange,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/workboots,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/under/hazard,
		/obj/item/clothing/head/welding,
		/obj/item/clothing/glasses/welding,
		/obj/item/clothing/gloves/nabber
	)

/obj/structure/closet/secure_closet/atmos_personal/korch
	name = "Atmos Technician's locker"

/obj/structure/closet/secure_closet/atmos_personal/korch/WillContain()
	return list(
		/obj/item/storage/belt/utility/atmostech,
		/obj/item/storage/belt/fire_belt/full,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/headset_eng,
		/obj/item/device/radio/headset/headset_eng/alt,
		/obj/item/clothing/suit/storage/hazardvest/blue,
		/obj/item/clothing/suit/storage/toggle/highvis,
		/obj/item/clothing/head/hardhat/red,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/workboots,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/under/rank/atmospheric_technician,
		/obj/item/clothing/head/welding,
		/obj/item/clothing/glasses/welding,
		/obj/item/clothing/head/hardhat/firefighter,
		/obj/item/clothing/suit/fire/firefighter
	)

/obj/structure/closet/secure_closet/engineering_chief/korch
	name = "CE's locker"

/obj/structure/closet/secure_closet/engineering_personal/korch/WillContain()
	return list(
		/obj/item/clothing/gloves/insulated,
		/obj/item/device/multitool,
		/obj/item/storage/belt/utility/full,
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/device/scanner/gas,
		/obj/item/device/radio/headset/heads/ce,
		/obj/item/clothing/suit/storage/hazardvest,
		/obj/item/clothing/suit/storage/toggle/highvis,
		/obj/item/clothing/head/hardhat/orange,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/clothing/shoes/workboots,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/mask/gas,
		/obj/item/clothing/under/hazard,
		/obj/item/clothing/head/welding,
		/obj/item/clothing/glasses/welding,
	)

/obj/structure/closet/secure_closet/captains/korch
	name = "captain's locker"
	req_access = list(access_captain)
	closet_appearance = /singleton/closet_appearance/secure_closet/command

/obj/structure/closet/secure_closet/captains/korch/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/command, /obj/item/storage/backpack/satchel/com)),
		new/datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag/com, 50),
		/obj/item/clothing/suit/storage/korch/capsuit,
		/obj/item/clothing/head/korch/caphat,
		/obj/item/clothing/suit/armor/vest/nt,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/shoes/brown,
		/obj/item/device/radio/headset/heads/korchexec,
		/obj/item/device/radio/headset/heads/korchexec/alt,
		/obj/item/clothing/gloves/white,
		/obj/item/gun/energy/gun,
		/obj/item/clothing/suit/armor/captain,
		/obj/item/melee/telebaton
	)

/obj/structure/closet/secure_closet/security/korch
	name = "security officer's locker"
	req_access = list(access_brig)
	closet_appearance = /singleton/closet_appearance/secure_closet/security

/obj/structure/closet/secure_closet/security/korch/WillContain()
	return list(
		new/datum/atom_creator/weighted(list(/obj/item/storage/backpack/security, /obj/item/storage/backpack/satchel/sec)),
		new/datum/atom_creator/simple(/obj/item/storage/backpack/dufflebag/sec, 50),
		/obj/item/clothing/suit/,
		/obj/item/clothing/head/helmet,
		/obj/item/clothing/head/korch/securitycap,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/storage/belt/holster/security,
		/obj/item/clothing/suit/storage/hooded/hoodie/security,
		/obj/item/device/flash,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/melee/baton/loaded,
		/obj/item/clothing/glasses/hud/security/prot/sunglasses,
		/obj/item/taperoll/police,
		/obj/item/device/hailer,
		/obj/item/gun/energy/taser,
		/obj/item/device/holowarrant,
	)

// supply

/obj/structure/closet/secure_closet/miner/korch
	name = "miner's equipment"
	closet_appearance = /singleton/closet_appearance/secure_closet/mining
	req_access = list(access_mining)

/obj/structure/closet/secure_closet/miner/korch/WillContain()
	return list(
		new /datum/atom_creator/weighted(list(
				/obj/item/storage/backpack/industrial,
				/obj/item/storage/backpack/satchel/eng
			)),
		/obj/item/storage/belt/utility/full,
		/obj/item/clothing/under/korch/miner,
		/obj/item/device/radio/headset/headset_mining,
		/obj/item/device/radio/headset/headset_mining/alt,
		/obj/item/clothing/gloves/thick,
		/obj/item/clothing/shoes/black,
		/obj/item/device/scanner/gas,
		/obj/item/storage/ore,
		/obj/item/device/flashlight/lantern,
		/obj/item/shovel,
		/obj/item/pickaxe,
		/obj/item/clothing/glasses/meson
	)


