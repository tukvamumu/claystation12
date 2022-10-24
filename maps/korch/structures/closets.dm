//exploration

/obj/structure/closet/toolcloset/excavation
	name = "excavation equipment closet"
	desc = "It's a storage unit for excavation equipment."
	closet_appearance = /decl/closet_appearance/secure_closet/engineering/tools

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

/decl/closet_appearance/secure_closet/korch/exploration
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)

/decl/closet_appearance/secure_closet/korch/exploration/pilot
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_PURPLE,
		"stripe_vertical_right_full" = COLOR_PURPLE,
		"exped" = COLOR_PURPLE
	)


/obj/structure/closet/secure_closet/explorer
	name = "explorer's locker"
	req_access = list(access_explorer)
	closet_appearance = /decl/closet_appearance/secure_closet/korch/exploration

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
	closet_appearance = /decl/closet_appearance/secure_closet/korch/exploration/pilot

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
		/obj/item/clothing/under/rank/scientist/nanotrasen,
		/obj/item/clothing/suit/storage/toggle/labcoat/science/nanotrasen
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
		/obj/item/clothing/under/rank/medical/scrubs/teal,
		/obj/item/clothing/under/rank/medical/scrubs/lilac,
		/obj/item/clothing/under/rank/medical/scrubs/purple,
		/obj/item/clothing/gloves/latex,
		/obj/item/clothing/gloves/latex/nitrile,
		/obj/item/clothing/suit/storage/toggle/labcoat,
		/obj/item/clothing/suit/storage/toggle/fr_jacket/emrs
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
		/obj/item/clothing/under/rank/medical/paramedic,
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

// supply


