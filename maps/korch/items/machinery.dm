//Shouldn't be a lot in here, only korch versions of existing machines that need a different access req or something along those lines.

/obj/machinery/vending/medical/korch
	req_access = list(access_medical)

/obj/machinery/drone_fabricator/korch
	fabricator_tag = "NSV korch Maintenance"

/obj/machinery/drone_fabricator/korch/adv
	name = "advanced drone fabricator"
	fabricator_tag = "NAV Arrow Maintenance"
	drone_type = /mob/living/silicon/robot/drone/construction

//telecommunications gubbins for korch-specific networks

/obj/machinery/telecomms/hub/preset
	id = "Hub"
	network = "tcommsat"
	autolinkers = list("hub", "relay", "c_relay", "s_relay", "m_relay", "r_relay", "b_relay", "1_relay", "2_relay", "3_relay", "4_relay", "5_relay", "s_relay", "science", "medical",
	"supply", "service", "common", "command", "engineering", "security", "exploration", "receiverA", "broadcasterA")

/obj/machinery/telecomms/receiver/preset_right
	freq_listening = list(AI_FREQ, SCI_FREQ, MED_FREQ, SUP_FREQ, SRV_FREQ, COMM_FREQ, ENG_FREQ, SEC_FREQ, ENT_FREQ, EXP_FREQ, MED_I_FREQ, SEC_I_FREQ)

/obj/machinery/telecomms/bus/preset_two
	freq_listening = list(SUP_FREQ, SRV_FREQ, EXP_FREQ)
	autolinkers = list("processor2", "supply", "service", "exploration")

/obj/machinery/telecomms/server/presets/service
	id = "Service Server"
	freq_listening = list(SRV_FREQ)
	channel_tags = list(
		list(SRV_FREQ, "Service", COMMS_COLOR_SERVICE),
	)
	autolinkers = list("service")

/obj/machinery/telecomms/server/presets/exploration
	id = "Exploration Server"
	freq_listening = list(EXP_FREQ)
	channel_tags = list(list(EXP_FREQ, "Exploration", COMMS_COLOR_EXPLORER))
	autolinkers = list("exploration")

// Suit cyclers and storage
/obj/machinery/suit_cycler/exploration
	name = "Exploration suit cycler"
	model_text = "Exploration"
	req_access = list(list(access_explorer, access_xenoarch))
	available_modifications = list(/singleton/item_modifier/space_suit/explorer)
	species = list(SPECIES_HUMAN,SPECIES_SKRELL,SPECIES_UNATHI)

/obj/machinery/suit_storage_unit/explorer
	name = "Exploration Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/exploration
	helmet = /obj/item/clothing/head/helmet/space/void/exploration
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(list(access_explorer, access_xenoarch))

	islocked = 1

/obj/machinery/suit_storage_unit/pilot
	name = "Pilot Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/void/pilot
	helmet = /obj/item/clothing/head/helmet/space/void/pilot
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_pilot)
	islocked = 1

/obj/machinery/suit_storage_unit/command
	name = "Command Voidsuit Storage Unit"
	suit = /obj/item/clothing/suit/space/syndicate/black
	helmet = /obj/item/clothing/head/helmet/space/syndicate/black
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen_emergency_extended
	mask = /obj/item/clothing/mask/breath
	req_access = list(access_bridge, access_keycard_auth)
	islocked = 1


// Vending machines & dispensers
/obj/machinery/vending/security
	products = list(
		/obj/item/handcuffs = 14,
		/obj/item/grenade/flashbang = 4,
		/obj/item/grenade/chem_grenade/teargas = 4,
		/obj/item/device/flash = 7,
		/obj/item/reagent_containers/spray/pepper = 4,
		/obj/item/device/holowarrant = 4,
		/obj/item/reagent_containers/food/snacks/donut/normal = 12,
		/obj/item/storage/box/evidence = 8,
		/obj/item/clothing/accessory/badge/holo/cord = 6)
