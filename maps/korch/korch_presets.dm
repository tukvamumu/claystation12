var/global/const/NETWORK_CHARON     = "Charon"
var/global/const/NETWORK_EXPEDITION  = "Expedition"
var/global/const/NETWORK_FIRST_DECK  = "First Deck"
var/global/const/NETWORK_POD         = "General Utility Pod"
var/global/const/NETWORK_SECOND_DECK = "Second Deck"
var/global/const/NETWORK_SUPPLY      = "Supply"
var/global/const/NETWORK_HANGAR      = "Hangar"
var/global/const/NETWORK_EXPLO       = "Exploration"
var/global/const/NETWORK_THIRD_DECK  = "Third Deck"
var/global/const/NETWORK_PETROV  = "Petrov"

/datum/map/korch/get_network_access(network)
	switch(network)
		if(NETWORK_CHARON)
			return access_expedition_shuttle
		if(NETWORK_POD)
			return access_guppy
		if(NETWORK_SUPPLY)
			return access_mailsorting
		if(NETWORK_HANGAR)
			return access_hangar
		if(NETWORK_EXPLO)
			return access_explorer
		if(NETWORK_PETROV)
			return access_petrov
	return get_shared_network_access(network) || ..()

/datum/map/korch
	// Networks that will show up as options in the camera monitor program
	station_networks = list(
		NETWORK_FIRST_DECK,
		NETWORK_SECOND_DECK,
		NETWORK_THIRD_DECK,
		NETWORK_COMMAND,
		NETWORK_ENGINEERING,
		NETWORK_ENGINE,
		NETWORK_MEDICAL,
		NETWORK_RESEARCH,
		NETWORK_SECURITY,
		NETWORK_SUPPLY,
		NETWORK_EXPEDITION,
		NETWORK_EXPLO,
		NETWORK_HANGAR,
		NETWORK_CHARON,
		NETWORK_POD,
		NETWORK_PETROV,
		NETWORK_ALARM_ATMOS,
		NETWORK_ALARM_CAMERA,
		NETWORK_ALARM_FIRE,
		NETWORK_ALARM_MOTION,
		NETWORK_ALARM_POWER,
		NETWORK_THUNDER,
	)

//
// Cameras
//

// Networks

/obj/machinery/camera/network/exploration_shuttle
	network = list(NETWORK_CHARON)

/obj/machinery/camera/network/expedition
	network = list(NETWORK_EXPEDITION)

/obj/machinery/camera/network/first_deck
	network = list(NETWORK_FIRST_DECK)

/obj/machinery/camera/network/pod
	network = list(NETWORK_POD)

/obj/machinery/camera/network/second_deck
	network = list(NETWORK_SECOND_DECK)

/obj/machinery/camera/network/supply
	network = list(NETWORK_SUPPLY)

/obj/machinery/camera/network/hangar
	network = list(NETWORK_HANGAR)

/obj/machinery/camera/network/exploration
	network = list(NETWORK_EXPLO)

/obj/machinery/camera/network/third_deck
	network = list(NETWORK_THIRD_DECK)

/obj/machinery/camera/network/command
	network = list(NETWORK_COMMAND)

/obj/machinery/camera/network/crescent
	network = list(NETWORK_CRESCENT)

/obj/machinery/camera/network/engine
	network = list(NETWORK_ENGINE)

/obj/machinery/camera/network/engineering_outpost
	network = list(NETWORK_ENGINEERING_OUTPOST)

/obj/machinery/camera/network/petrov
	network = list(NETWORK_PETROV)

// Motion
/obj/machinery/camera/motion/engineering_outpost
	network = list(NETWORK_ENGINEERING_OUTPOST)

// All Upgrades
/obj/machinery/camera/all/command
	network = list(NETWORK_COMMAND)


//
// SMES units
//

// Substation SMES
/obj/machinery/power/smes/buildable/preset/korch/substation
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil = 1) // Note that it gets one more from construction
	_input_maxed = TRUE
	_output_maxed = TRUE

// Substation SMES (charged and with full I/O setting)
/obj/machinery/power/smes/buildable/preset/korch/substation_full
	uncreated_component_parts = list(/obj/item/stock_parts/smes_coil = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Main Engine output SMES
/obj/machinery/power/smes/buildable/preset/korch/engine_main
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2,
		/obj/item/stock_parts/smes_coil/super_capacity = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Shuttle SMES
/obj/machinery/power/smes/buildable/preset/korch/shuttle
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 1,
		/obj/item/stock_parts/smes_coil/super_capacity = 1)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

// Hangar SMES. Charges the shuttles so needs a pretty big throughput.
/obj/machinery/power/smes/buildable/preset/korch/hangar
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/super_io = 2)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

var/global/const/NETWORK_COMMAND = "Command"
var/global/const/NETWORK_ENGINE  = "Engine"
var/global/const/NETWORK_ENGINEERING_OUTPOST = "Engineering Outpost"

/datum/map/proc/get_shared_network_access(network)
	switch(network)
		if(NETWORK_COMMAND)
			return access_heads
		if(NETWORK_ENGINE, NETWORK_ENGINEERING_OUTPOST)
			return access_engine

/datum/map/korch/default_internal_channels()
	return list(
		num2text(PUB_FREQ)   = list(),
		num2text(AI_FREQ)    = list(access_synth),
		num2text(ENT_FREQ)   = list(),
		num2text(ERT_FREQ)   = list(access_cent_specops),
		num2text(COMM_FREQ)  = list(access_radio_comm),
		num2text(ENG_FREQ)   = list(access_radio_eng),
		num2text(MED_FREQ)   = list(access_radio_med),
		num2text(MED_I_FREQ) = list(access_radio_med),
		num2text(SEC_FREQ)   = list(access_radio_sec),
		num2text(SEC_I_FREQ) = list(access_radio_sec),
		num2text(SCI_FREQ)   = list(access_radio_sci),
		num2text(SUP_FREQ)   = list(access_radio_sup),
		num2text(SRV_FREQ)   = list(access_radio_serv),
		num2text(EXP_FREQ)   = list(access_radio_exp),
		num2text(HAIL_FREQ)  = list(),
	)

/singleton/stock_part_preset/radio/receiver/vent_pump/guppy
	frequency = 1431

/singleton/stock_part_preset/radio/event_transmitter/vent_pump/guppy
	frequency = 1431

/obj/machinery/atmospherics/unary/vent_pump/high_volume/guppy
	stock_part_presets = list(
		/singleton/stock_part_preset/radio/receiver/vent_pump/guppy = 1,
		/singleton/stock_part_preset/radio/event_transmitter/vent_pump/guppy = 1
	)

/singleton/stock_part_preset/radio/receiver/vent_scrubber/guppy
	frequency = 1431

/singleton/stock_part_preset/radio/event_transmitter/vent_scrubber/guppy
	frequency = 1431

/obj/machinery/atmospherics/unary/vent_scrubber/guppy
	stock_part_presets = list(
		/singleton/stock_part_preset/radio/receiver/vent_scrubber/guppy = 1,
		/singleton/stock_part_preset/radio/event_transmitter/vent_scrubber/guppy = 1
	)
