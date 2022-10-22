/datum/map/korch/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/AI/torch/commandreport.ogg', volume = 45))

/datum/map/korch/get_map_info()
	. = list()
	. +=  "You're aboard the " + replacetext("<b>[station_name]</b>", "\improper", "") + ", a NanoTrasen starship. Its primary mission is doing research, mine resources and explore the assigned sector."
	. +=  "The vessel is staffed with NanoTrasen employees."
	. +=  "This area of space is uncharted and bordering with NanoTrasen territory. You might aswell claim this sector."
	return jointext(., "<br>")

/datum/map/korch/send_welcome()
	var/obj/effect/overmap/visitable/ship/korch = SSshuttle.ship_by_type(/obj/effect/overmap/visitable/ship/korch)

	var/welcome_text = "<center><img src = sollogo.png /><br /><font size = 3><b>NSV korch</b> Sensor Readings:</font><br>"
	welcome_text += "Report generated on [stationdate2text()] at [stationtime2text()]</center><br /><br />"
	welcome_text += "<hr>Current system:<br /><b>[korch ? system_name : "Unknown"]</b><br /><br>"

	if (korch) //If the overmap is disabled, it's possible for there to be no korch.
		var/list/space_things = list()
		welcome_text += "Current Coordinates:<br /><b>[korch.x]:[korch.y]</b><br /><br>"
		welcome_text += "Next system targeted for jump:<br /><b>[generate_system_name()]</b><br /><br>"
		welcome_text += "Travel time to Sol:<br /><b>[rand(15,45)] days</b><br /><br>"
		welcome_text += "Time since last port visit:<br /><b>[rand(60,180)] days</b><br /><hr>"
		welcome_text += "Scan results show the following points of interest:<br />"

		for(var/zlevel in map_sectors)
			var/obj/effect/overmap/visitable/O = map_sectors[zlevel]
			if(O.name == korch.name)
				continue
			if(istype(O, /obj/effect/overmap/visitable/ship/landable)) //Don't show shuttles
				continue
			if (O.hide_from_reports)
				continue
			space_things |= O

		for(var/obj/effect/overmap/visitable/O in space_things)
			var/location_desc = " at present co-ordinates."
			if(O.loc != korch.loc)
				var/bearing = round(90 - Atan2(O.x - korch.x, O.y - korch.y),5) //fucking triangles how do they work
				if(bearing < 0)
					bearing += 360
				location_desc = ", bearing [bearing]."
			welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

		welcome_text += "<hr>"

	post_comm_message("NSV Korch Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New [GLOB.using_map.company_name] Update available at all communication consoles.")
