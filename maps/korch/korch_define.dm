/datum/map/korch
	name = "Korch"
	full_name = "NSV Korch"
	path = "korch"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK

	station_levels = list(1, 2, 3)
	admin_levels = list(4)
	escape_levels = list(5)
	empty_levels = list(6)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"5"=30)

	lobby_screens = list('maps/korch/lobby.png')
	lobby_tracks = list(
		/singleton/audio/track/chasing_time,
		/singleton/audio/track/torch,
		/singleton/audio/track/human,
		/singleton/audio/track/marhaba,
		/singleton/audio/track/treacherous_voyage,
		/singleton/audio/track/comet_haley,
		/singleton/audio/track/lysendraa,
		/singleton/audio/track/lasers,
		/singleton/audio/track/martiancowboy,
		/singleton/audio/track/monument,
		/singleton/audio/track/asfarasitgets,
		/singleton/audio/track/eighties,
		/singleton/audio/track/torn,
		/singleton/audio/track/nebula,
		/singleton/audio/track/epicintro2015,
		/singleton/audio/track/epicintro2017,
		/singleton/audio/track/hull_rupture,
		/singleton/audio/track/on_the_rocks,
		/singleton/audio/track/rimward_cruise,
		/singleton/audio/track/misanthropic_corridors,
		/singleton/audio/track/voidsent
	)

	overmap_size = 35
	overmap_event_areas = 34

	allowed_spawns = list("Cryogenic Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "NSV Korch"
	station_short = "Korch"
	dock_name     = "TBD"
	boss_name     = "Central Command"
	boss_short    = "Centcomm"
	company_name  = "NanoTrasen"
	company_short = "NT"

	use_overmap = 1
	num_exoplanets = 1
	overmap_size = 35
	away_site_budget = 4
	min_offmap_players = 12

	map_admin_faxes = list("NanoTrasen Central Office")

	shuttle_docked_message = "Attention all hands: Evacuation preparation complete. Time before departure: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: the escape pods have been launched, arriving at rendezvous point in %ETA%."
	shuttle_called_message = "Attention all hands: evacuation procedures are now in effect. Escape pods will unlock in %ETA%"
	shuttle_recall_message = "Attention all hands: evacuation aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/lifepods

	id_hud_icons = 'maps/korch/icons/assignment_hud.dmi'
