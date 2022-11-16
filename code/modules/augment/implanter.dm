/obj/item/device/augment_implanter
	name = "augment autodoc"
	desc = "An oblong box with an irregular shape and a seam running down the center."
	icon = 'icons/obj/surgery.dmi'
	icon_state = "compact_bionic_module"
	w_class = ITEM_SIZE_NORMAL
	origin_tech = list(TECH_DATA = 3, TECH_ESOTERIC = 3)
	var/obj/item/organ/internal/augment/augment

	/// If not falsy, skip the messy installation and just install the augment
	var/instant

	/// Transient value to block multiple activations at the same time
	var/working


/obj/item/device/augment_implanter/Initialize()
	. = ..()
	if (ispath(augment))
		augment = new augment (src)


/obj/item/device/augment_implanter/examine(mob/user)
	. = ..()
	if (isobserver(user) || (user.mind && user.mind.special_role != null) || user.skill_check(SKILL_DEVICES, SKILL_PROF))
		to_chat(user, "A single-use augment installer with no medical knowledge necessary! " + SPAN_DANGER("Painkillers not included!"))
	if (isnull(augment))
		to_chat(user, "It seems to be empty.")
		return
	to_chat(user, SPAN_BOLD("It contains:"))
	augment.examine(user)


/obj/item/device/augment_implanter/attackby(obj/item/I, mob/living/user)
	if (isCrowbar(I) && augment)
		user.visible_message(
			SPAN_ITALIC("\The [user] starts to remove \the [augment] from \the [src]."),
			SPAN_WARNING("You start to remove \the [augment] from \the [src]."),
			SPAN_ITALIC("You hear metal creaking.")
		)
		playsound(user, 'sound/items/Crowbar.ogg', 50, TRUE)
		if (!do_after(user, 10 SECONDS, src, DO_PUBLIC_UNIQUE) || !augment)
			return
		user.visible_message(
			SPAN_ITALIC("\The [user] removes \the [augment] from \the [src]."),
			SPAN_WARNING("You remove \the [augment] from \the [src]."),
			SPAN_ITALIC("You hear a clunk.")
		)
		playsound(user, 'sound/items/Deconstruct.ogg', 50, TRUE)
		user.put_in_hands(augment)
		augment = null
		return
	else if(istype(src, /obj/item/device/augment_implanter/universal) && istype(I, /obj/item/organ/internal/augment))
		if(augment)
			to_chat(user, SPAN_WARNING("\The [augment] is already installed into [src]."))
			return
		if(user.unEquip(I))
			I.forceMove(src)
			augment = I
		return
	..()

/obj/item/device/augment_implanter/attack(mob/living/carbon/human/affected as mob, mob/user as mob)
	if (working)
		return
	if (!istype(affected, /mob/living/carbon/human))
		to_chat(user, SPAN_WARNING("[affected] is not compatible."))
		return
	if (!augment)
		to_chat(user, SPAN_WARNING("\The [src] is empty."))
		return
	if (!ishuman(affected))
		to_chat(user, SPAN_WARNING("\The [src] is incompatible with [affected]."))
		return
	var/target_zone = user.zone_sel.selecting
	if (!target_zone)
		return
	var/obj/item/organ/external/parent = affected.get_organ(target_zone)
	if (!parent)
		to_chat(user, SPAN_WARNING("[affected] don't have \a [target_zone]!"))
		return
	var/flavor = (parent.status & ORGAN_ROBOTIC) ? 1 : (parent.status & ORGAN_CRYSTAL) ? 2 : 0
	if (flavor == 0 && !(augment.augment_flags & AUGMENT_BIOLOGICAL))
		to_chat(user, SPAN_WARNING("\The [augment] cannot be installed in biological organs."))
		return
	if (flavor == 1 && !(augment.augment_flags & AUGMENT_MECHANICAL))
		to_chat(user, SPAN_WARNING("\The [augment] cannot be installed in mechanical organs."))
		return
	if (flavor == 2 && !(augment.augment_flags & AUGMENT_CRYSTALINE))
		to_chat(user, SPAN_WARNING("\The [augment] cannot be installed in crystaline organs."))
		return
	var/surgery_step = GET_SINGLETON(/singleton/surgery_step/internal/replace_organ)
	if (augment.surgery_configure(affected, affected, parent, src, surgery_step))
		return
	var/occupied = affected.internal_organs_by_name[augment.organ_tag]
	if (occupied)
		to_chat(user, SPAN_WARNING("[affected] already have \an [occupied] installed there."))
		return
	if (flavor != -1)
		var/old_loc = loc
		var/proceed = alert(user, "This is going to cause immense pain to [affected]. Are you sure?", "Woah there!", "Yes", "No")
		if (proceed != "Yes")
			return
		if (loc != old_loc)
			return
	var/success = instant
	if (!instant)
		working = TRUE
		to_chat(user, SPAN_WARNING("\icon[src] Commencing procedure. " + SPAN_DANGER("Please remain calm.")))
		user.visible_message(SPAN_WARNING("\The [user] places \the [src] against \the [affected]'s [parent.name]."))
		if (!do_after(user, 4 SECONDS, affected, DO_EQUIP))
			working = FALSE
			return
		user.visible_message(SPAN_DANGER("\The [src] purrs maliciously and unfurls its armatures with frightening speed!"))
		if (flavor != 1)
			affected.custom_pain("Your [parent.name] feels like it's being shredded apart!", 160)
		else
			to_chat(affected, SPAN_ITALIC("The access panel on your [parent.name] is torn open."))
			playsound(affected, 'sound/items/electronic_assembly_emptying.ogg', 50, TRUE)
		parent.createwound(INJURY_TYPE_CUT, parent.min_broken_damage / 2, 1)
		parent.clamp_organ()
		parent.open_incision()
		parent.fracture()
		if (!do_after(user, 6 SECONDS, affected, DO_EQUIP))
			goto FailedAugmentImplant
		user.visible_message(SPAN_DANGER("\The [src] begins to insert its payload into \the [affected]'s [parent.name]!"))
		if (flavor != 1)
			affected.custom_pain("You feel something rooting around violently inside your [parent.name]!", 160)
		else
			to_chat(affected, SPAN_ITALIC("Your [parent.name] shifts and twitches as \the [src] works."))
		if (!flavor)
			playsound(affected, 'sound/effects/squelch1.ogg', 25, TRUE)
		else
			playsound(affected, 'sound/items/jaws_pry.ogg', 50, TRUE)
		if (!do_after(user, 8 SECONDS, affected, DO_EQUIP))
			goto FailedAugmentImplant
		affected.visible_message(SPAN_WARNING("\The [src] withdraws from \the [affected]'s [parent.name] and seals the [flavor != 1 ? "wound" : "hatch"]."))
		if (!do_after(user, 2 SECONDS, affected, DO_EQUIP))
			goto FailedAugmentImplant
		parent.status &= ~ORGAN_BROKEN
		parent.stage = 0
		parent.update_wounds()
		var/datum/wound/wound = parent.get_incision()
		if (istype(wound))
			wound.close()
		if (parent.clamped())
			parent.remove_clamps()
		parent.update_wounds()
		success = TRUE
	FailedAugmentImplant:
	working = FALSE
	if (!success)
		affected.visible_message(SPAN_DANGER("\The [src] falls away from \the [affected], leaving \his [parent.name] a mangled mess!"))
		parent.take_general_damage(15)
		return
	to_chat(affected, SPAN_WARNING("\icon[src] Procedure complete. ") + SPAN_NOTICE("Have a nice day."))
	playsound(affected, 'sound/machines/ping.ogg', 50, FALSE)
	augment.forceMove(affected)
	augment.replaced(affected, parent)
	augment = null

/obj/item/device/augment_implanter/iatric_monitor
	augment = /obj/item/organ/internal/augment/active/iatric_monitor/hidden

/obj/item/device/augment_implanter/wrist_blade
	augment = /obj/item/organ/internal/augment/active/item/wrist_blade

/obj/item/device/augment_implanter/popout_shotgun
	augment = /obj/item/organ/internal/augment/active/item/popout_shotgun

/obj/item/device/augment_implanter/nerve_dampeners
	augment = /obj/item/organ/internal/augment/active/nerve_dampeners

/obj/item/device/augment_implanter/internal_air_system
	augment = /obj/item/organ/internal/augment/active/internal_air_system/hidden

/obj/item/device/augment_implanter/adaptive_binoculars
	augment = /obj/item/organ/internal/augment/active/item/adaptive_binoculars/hidden

/obj/item/device/augment_implanter/engineering_toolset
	augment = /obj/item/organ/internal/augment/active/polytool/engineer

/obj/item/device/augment_implanter/powerfist
	augment = /obj/item/organ/internal/augment/active/item/powerfist/prepared

/obj/item/device/augment_implanter/universal
	name = "universal augment autodoc"

/obj/item/device/augment_implanter/universal/instant
	instant = TRUE

