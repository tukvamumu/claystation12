/obj/item/rocksliver
	name = "rock sliver"
	desc = "It looks extremely delicate."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "sliver1"
	randpixel = 8
	w_class = ITEM_SIZE_TINY
	sharp = TRUE
	var/datum/geosample/geological_data

/obj/item/rocksliver/Initialize()
	. = ..()
	icon_state = "sliver[rand(1, 3)]"

/datum/geosample
	var/age = 0
	var/age_thousand = 0
	var/age_million = 0
	var/age_billion = 0
	var/artifact_id = ""
	var/artifact_distance = -1
	var/source_mineral = "chlorine"
	var/list/find_presence = list()

/datum/geosample/New(turf/simulated/mineral/container)
	UpdateTurf(container)

/datum/geosample/proc/UpdateTurf(turf/simulated/mineral/container)
	if(!istype(container))
		return

	age = rand(1, 999)

	if(container.mineral)
		if(islist(container.mineral.xarch_ages))
			var/list/ages = container.mineral.xarch_ages
			if(ages["thousand"])
				age_thousand = rand(1, ages["thousand"])
			if(ages["million"])
				age_million = rand(1, ages["million"])
			if(ages["billion"])
				if(ages["billion_lower"])
					age_billion = rand(ages["billion_lower"], ages["billion"])
				else
					age_billion = rand(1, ages["billion"])
		if(container.mineral.xarch_source_mineral)
			source_mineral = container.mineral.xarch_source_mineral

	if(prob(75))
		find_presence[/datum/reagent/phosphorus] = rand(1, 500) / 100
	if(prob(25))
		find_presence[/datum/reagent/mercury] = rand(1, 500) / 100
	find_presence["chlorine"] = rand(500, 2500) / 100

	for(var/datum/find/F in container.finds)
		var/responsive_reagent = get_responsive_reagent(F.find_type)
		find_presence[responsive_reagent] = F.dissonance_spread

	var/total_presence = 0
	for(var/carrier in find_presence)
		total_presence += find_presence[carrier]
	for(var/carrier in find_presence)
		find_presence[carrier] = find_presence[carrier] / total_presence

/datum/geosample/proc/UpdateNearbyArtifactInfo(turf/simulated/mineral/container)
	if(!container || !istype(container))
		return

	if(container.artifact_find)
		artifact_distance = rand()
		artifact_id = container.artifact_find.artifact_id
	else
		for (var/turf/simulated/mineral/T as anything in GLOB.xeno_artifact_turfs)
			if(T.artifact_find)
				var/cur_dist = get_dist(container, T) * 2
				if( (artifact_distance < 0 || cur_dist < artifact_distance))
					artifact_distance = cur_dist + rand() * 2 - 1
					artifact_id = T.artifact_find.artifact_id
			else
				GLOB.xeno_artifact_turfs -= T

/obj/item/device/core_sampler
	name = "core sampler"
	desc = "Used to extract geological core samples."
	icon = 'icons/obj/sampler.dmi'
	icon_state = "sampler0"
	item_state = "screwdriver_brown"
	w_class = ITEM_SIZE_TINY

	var/sampled_turf = ""
	var/num_stored_bags = 10
	var/obj/item/evidencebag/filled_bag

/obj/item/device/core_sampler/examine(mob/user, distance)
	. = ..(user)
	if(distance <= 2)
		to_chat(user, SPAN_NOTICE("Used to extract geological core samples - this one is [sampled_turf ? "full" : "empty"], and has [num_stored_bags] bag[num_stored_bags != 1 ? "s" : ""] remaining."))

/obj/item/device/core_sampler/attackby(obj/item/I, mob/living/user)
	if(istype(I, /obj/item/evidencebag))
		if(I.contents.len)
			to_chat(user, SPAN_WARNING("\The [I] is full."))
			return
		if(num_stored_bags < 10)
			qdel(I)
			num_stored_bags += 1
			to_chat(user, SPAN_NOTICE("You insert \the [I] into \the [src]."))
		else
			to_chat(user, SPAN_WARNING("\The [src] can not fit any more bags."))
	else
		return ..()

/obj/item/device/core_sampler/proc/sample_item(item_to_sample, mob/user)
	var/datum/geosample/geo_data

	if(istype(item_to_sample, /turf/simulated/mineral))
		var/turf/simulated/mineral/T = item_to_sample
		T.geologic_data.UpdateNearbyArtifactInfo(T)
		geo_data = T.geologic_data
	else if(istype(item_to_sample, /obj/item/ore))
		var/obj/item/ore/O = item_to_sample
		geo_data = O.geologic_data

	if(geo_data)
		if(filled_bag)
			to_chat(user, SPAN_WARNING("The core sampler is full."))
		else if(num_stored_bags < 1)
			to_chat(user, SPAN_WARNING("The core sampler is out of sample bags."))
		else
			//create a new sample bag which we'll fill with rock samples
			filled_bag = new /obj/item/evidencebag(src)
			filled_bag.SetName("sample bag")
			filled_bag.desc = "a bag for holding research samples."

			icon_state = "sampler1"
			--num_stored_bags

			//put in a rock sliver
			var/obj/item/rocksliver/R = new(filled_bag)
			R.geological_data = geo_data

			//update the sample bag
			filled_bag.icon_state = "evidence"
			var/image/I = image("icon"=R, "layer"=FLOAT_LAYER)
			filled_bag.overlays += I
			filled_bag.overlays += "evidence"
			filled_bag.w_class = ITEM_SIZE_TINY
			filled_bag.stored_item = R

			to_chat(user, SPAN_NOTICE("You take a core sample of the [item_to_sample]."))
	else
		to_chat(user, SPAN_WARNING("You are unable to take a sample of [item_to_sample]."))

/obj/item/device/core_sampler/attack_self(mob/living/user)
	if(filled_bag)
		to_chat(user, SPAN_NOTICE("You eject the full sample bag."))
		var/success = 0
		if(istype(src.loc, /mob))
			var/mob/M = src.loc
			success = M.put_in_inactive_hand(filled_bag)
		if(!success)
			filled_bag.dropInto(loc)
		filled_bag = null
		icon_state = "sampler0"
	else
		to_chat(user, SPAN_WARNING("The core sampler is empty."))
