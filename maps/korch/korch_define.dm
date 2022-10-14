/datum/map/korch
	name = "Korch"
	full_name = "NSV Korch"
	path = "korch"

	station_levels = list(1, 2, 3)
	admin_levels = list(4)
	empty_levels = list(5)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"5"=30)


	lobby_screens = list('maps/korch/lobby.png')
	lobby_tracks = list(
		/decl/audio/track/chasing_time,
		/decl/audio/track/torch,
		/decl/audio/track/human,
		/decl/audio/track/marhaba,
		/decl/audio/track/treacherous_voyage,
		/decl/audio/track/comet_haley,
		/decl/audio/track/lysendraa,
		/decl/audio/track/lasers,
		/decl/audio/track/martiancowboy,
		/decl/audio/track/monument,
		/decl/audio/track/asfarasitgets,
		/decl/audio/track/eighties,
		/decl/audio/track/torn,
		/decl/audio/track/nebula,
		/decl/audio/track/epicintro2015,
		/decl/audio/track/epicintro2017,
		/decl/audio/track/hull_rupture,
		/decl/audio/track/on_the_rocks,
		/decl/audio/track/rimward_cruise,
		/decl/audio/track/misanthropic_corridors,
		/decl/audio/track/voidsent
	)

	overmap_size = 40
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
	overmap_event_areas = 34
	away_site_budget = 3
	min_offmap_players = 12

	planet_size = list(129,129)

	map_admin_faxes = list("NanoTrasen Central Office")
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The bluespace drive is now spooling up, secure all stations for departure. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting bluespace in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	id_hud_icons = 'maps/torch/icons/assignment_hud.dmi'
