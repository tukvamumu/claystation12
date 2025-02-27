/obj/structure/ntbanner
	name = "\improper NT banner"
	icon = 'maps/korch/icons/obj/ntbanner.dmi'
	icon_state = "wood"
	desc = "A wooden pole bearing a banner of NanoTrasen Corporation. Ave."
	anchored = TRUE
	obj_flags = OBJ_FLAG_ANCHORABLE
	layer = ABOVE_HUMAN_LAYER

/obj/structure/ntbanner/exo
	name = "exoplanet NT banner"
	desc = "A rugged metal frame with a banner of NanoTrasen Corporation on it. Resistant to radiation bleaching."
	icon_state = "steel"
	obj_flags = 0
	var/plantedby

/obj/structure/ntbanner/exo/Initialize()
	. = ..()
	flick("deploy",src)

/obj/structure/ntbanner/exo/examine(mob/user)
	. = ..()
	if(plantedby)
		to_chat(user, "<span class='notice'>[plantedby]</span>")

/obj/item/ntbanner
	name = "\improper NT banner capsule"
	desc = "NT banner packed in a rapid deployment capsule. Used for staking claims on new worlds in the name of NanoTrasen Corporation."
	icon = 'maps/korch/icons/obj/uniques.dmi'
	icon_state = "banner_stowed"
	w_class = ITEM_SIZE_HUGE
	req_access = list(access_explorer)

/obj/item/ntbanner/attack_self(mob/living/carbon/human/user)
	..()
	if(!istype(user))
		return
	if(!allowed(user))
		to_chat(user, "<span class='warning'>\The [src] does not recognize your authority!</span>")
		return
	var/turf/T = get_turf(src)
	if(!istype(T) && !istype(T,/turf/space))
		to_chat(user, "<span class='warning'>\The [src] is unable to deploy here!</span>")
		return
	if(user.unEquip(src))
		forceMove(T)
		if(GLOB.using_map.use_overmap)
			var/obj/effect/overmap/visitable/sector/exoplanet/P = map_sectors["[z]"]
			if(istype(P))
				GLOB.stat_flags_planted += 1
		qdel(src)
		var/obj/structure/ntbanner/exo/E = new(T)
		var/obj/item/card/id/ID = user.GetIdCard()
		var/dudename = ID.registered_name
		if(istype(ID.military_rank))
			dudename = "[ID.military_rank.name] [dudename]"
		E.plantedby = "Planted on [stationdate2text()] by [dudename], [user.get_assignment()] of [GLOB.using_map.full_name]."
		T.visible_message("<span class='notice'>[user] successfully claims this world with \the [E]!</span>")
