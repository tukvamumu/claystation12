#define EVAC_OPT_EJECT_PODS "eject_pods"
#define EVAC_OPT_CANCEL_EJECT_PODS "cancel_eject_pods"

// That stuff should be moved to the evacuation option datums but someone can do that later
/datum/evacuation_controller/lifepods
	name = "escape pod controller"

	evac_prep_delay    = 4 MINUTES
	evac_launch_delay  = 3 MINUTES
	evac_transit_delay = 2 MINUTES

	transfer_prep_additional_delay     = 4 MINUTES
	autotransfer_prep_additional_delay = 4 MINUTES
	emergency_prep_additional_delay    = 0 MINUTES

	evacuation_options = list(
		EVAC_OPT_EJECT_PODS = new /datum/evacuation_option/eject_pods(),
		EVAC_OPT_CANCEL_EJECT_PODS = new /datum/evacuation_option/cancel_eject_pods(),
	)

/datum/evacuation_controller/lifepods/finish_preparing_evac()
	. = ..()
	// Arm the escape pods.
	for (var/datum/shuttle/autodock/ferry/escape_pod/pod in escape_pods)
		if (pod.arming_controller)
			pod.arming_controller.arm()

/datum/evacuation_controller/lifepods/launch_evacuation()

	state = EVAC_IN_TRANSIT

	// Abondon Ship
	for (var/datum/shuttle/autodock/ferry/escape_pod/pod in escape_pods) // Launch the pods!
		if (!pod.arming_controller || pod.arming_controller.armed)
			pod.move_time = (evac_transit_delay/10)
			pod.launch(src)
	if (emergency_evacuation)
		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.emergency_shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))
	else
		priority_announcement.Announce(replacetext(replacetext(GLOB.using_map.shuttle_leaving_dock, "%dock_name%", "[GLOB.using_map.dock_name]"),  "%ETA%", "[round(get_eta()/60,1)] minute\s"))

/datum/evacuation_controller/lifepods/finish_evacuation()
	..()

/datum/evacuation_controller/lifepods/available_evac_options()
	if (is_on_cooldown())
		return list()
	if (is_idle())
		return list(evacuation_options[EVAC_OPT_EJECT_PODS])
	if (is_evacuating())
		return list(evacuation_options[EVAC_OPT_CANCEL_EJECT_PODS])

/datum/evacuation_option/eject_pods
	option_text = "Eject pods"
	option_desc = "Start the evacuation procedures"
	option_target = EVAC_OPT_EJECT_PODS
	needs_syscontrol = TRUE
	silicon_allowed = TRUE

/datum/evacuation_option/eject_pods/execute(mob/user)
	if (!evacuation_controller)
		return
	if (evacuation_controller.deny)
		to_chat(user, "Unable to initiate escape procedures.")
		return
	if (evacuation_controller.is_on_cooldown())
		to_chat(user, evacuation_controller.get_cooldown_message())
		return
	if (evacuation_controller.is_evacuating())
		to_chat(user, "Escape procedures already in progress.")
		return
	if (evacuation_controller.call_evacuation(user, 1))
		log_and_message_admins("[user? key_name(user) : "Autotransfer"] has initiated abandonment of the spacecraft.")

/datum/evacuation_option/cancel_eject_pods
	option_text = "Cancel abandonment"
	option_desc = "cancel abandonment of the spacecraft"
	option_target = EVAC_OPT_CANCEL_EJECT_PODS
	needs_syscontrol = TRUE
	silicon_allowed = FALSE

/datum/evacuation_option/cancel_eject_pods/execute(mob/user)
	if (evacuation_controller && evacuation_controller.cancel_evacuation())
		log_and_message_admins("[key_name(user)] has cancelled abandonment of the spacecraft.")

#undef EVAC_OPT_EJECT_PODS
#undef EVAC_OPT_CANCEL_EJECT_PODS
