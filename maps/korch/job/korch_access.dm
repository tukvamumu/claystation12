/************
* NSV KORCH *
************/
var/global/const/access_hangar = "ACCESS_KORCH_HANGAR" //73
/datum/access/hangar
	id = access_hangar
	desc = "Hangar Deck"
	region = ACCESS_REGION_GENERAL

var/global/const/access_guppy_helm = "ACCESS_KORCH_GUP_HELM" //76
/datum/access/guppy_helm
	id = access_guppy_helm
	desc = "General Utility Pod Helm"
	region = ACCESS_REGION_GENERAL

var/global/const/access_expedition_shuttle_helm = "ACCESS_EXPLO_HELM" //77
/datum/access/exploration_shuttle_helm
	id = access_expedition_shuttle_helm
	desc = "Charon Helm"
	region = ACCESS_REGION_GENERAL

var/global/const/access_nt_crew = "ACCESS_KORCH_CREW" //80
/datum/access/nt_crew
	id = access_nt_crew
	desc = "NanoTrasen Crew"
	region = ACCESS_REGION_GENERAL

var/global/const/access_nanotrasen = "ACCESS_KORCH_CORP" //81
/datum/access/nanotrasen
	id = access_nanotrasen
	desc = "Corporate Personnel"
	region = ACCESS_REGION_SERVICE

var/global/const/access_emergency_armory = "ACCESS_KORCH_ARMORY" //83
/datum/access/emergency_armory
	id = access_emergency_armory
	desc = "Emergency Armory"
	region = ACCESS_REGION_COMMAND

var/global/const/access_sec_guard = "ACCESS_KORCH_SECURITY_GUARD" //86
/datum/access/sec_guard
	id = access_sec_guard
	desc = "Corporate Security"
	region = ACCESS_REGION_SERVICE

var/global/const/access_gun = "ACCESS_KORCH_CANNON" //87
/datum/access/gun
	id = access_gun
	desc = "Gunnery"
	region = ACCESS_REGION_COMMAND

var/global/const/access_expedition_shuttle = "ACCESS_KORCH_EXPLO" //88
/datum/access/exploration_shuttle
	id = access_expedition_shuttle
	desc = "Charon"
	region = ACCESS_REGION_GENERAL

var/global/const/access_guppy = "ACCESS_KORCH_GUP" //89
/datum/access/guppy
	id = access_guppy
	desc = "General Utility Pod"
	region = ACCESS_REGION_GENERAL

var/global/const/access_explorer = "ACCESS_KORCH_EXPLORER" //93
/datum/access/explorer
	id = access_explorer
	desc = "Explorer"
	region = ACCESS_REGION_GENERAL

var/global/const/access_pathfinder = "ACCESS_KORCH_PATHFINDER" //94
/datum/access/pathfinder
	id = access_pathfinder
	desc = "Pathfinder"
	region = ACCESS_REGION_GENERAL

var/global/const/access_commissary = "ACCESS_KORCH_SHOP" //96
/datum/access/commissary
	id = access_commissary
	desc = "Commissary"
	region = ACCESS_REGION_GENERAL

/datum/access/psychiatrist
	desc = "Mental Health"

/datum/access/hos
	desc = "Head of Security"

/datum/access/hop
	desc = "Head of Personnel"

/datum/access/qm
	desc = "Quartermaster"

var/global/const/access_korch_fax = "ACCESS_KORCH_FAX"
/datum/access/korch_fax
	id = access_korch_fax
	desc = "Fax Machines"
	region = ACCESS_REGION_COMMAND

/datum/access/robotics
	region = ACCESS_REGION_ENGINEERING

/datum/access/network
	region = ACCESS_REGION_COMMAND

/datum/access/network_admin
	region = ACCESS_REGION_COMMAND

/datum/access/chapel_office
	region = ACCESS_REGION_SERVICE

/datum/access/bar
	region = ACCESS_REGION_SERVICE

/datum/access/kitchen
	region = ACCESS_REGION_SERVICE

/datum/access/eva
	region = ACCESS_REGION_GENERAL

/datum/access/crematorium
	region = ACCESS_REGION_MEDBAY

/datum/access/janitor
	region = ACCESS_REGION_SERVICE

/datum/access/ai_upload
	desc = "Cyborg Upload"

/*************
* NRV Petrov *
*************/
var/global/const/access_petrov = "ACCESS_KORCH_PETROV" //200
/datum/access/petrov
	id = access_petrov
	desc = "Petrov"
	region = ACCESS_REGION_GENERAL

var/global/const/access_petrov_helm = "ACCESS_KORCH_PETROV_HELM" //201
/datum/access/petrov_helm
	id = access_petrov_helm
	desc = "Petrov Helm"
	region = ACCESS_REGION_GENERAL

var/global/const/access_petrov_analysis = "ACCESS_KORCH_PETROV_ANALYSIS" //202
/datum/access/petrov_analysis
	id = access_petrov_analysis
	desc = "Petrov Analysis Lab"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_petrov_phoron = "ACCESS_KORCH_PETROV_PHORON" //203
/datum/access/petrov_phoron
	id = access_petrov_phoron
	desc = "Petrov Phoron Sublimation Lab"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_petrov_toxins = "ACCESS_KORCH_PETROV_TOXINS" //204
/datum/access/petrov_toxins
	id = access_petrov_toxins
	desc = "Petrov Toxins Lab"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_petrov_chemistry = "ACCESS_KORCH_PETROV_CHEMISTRY" //205
/datum/access/petrov_chemistry
	id = access_petrov_chemistry
	desc = "Petrov Chemistry Lab"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_petrov_rd = "ACCESS_KORCH_PETROV_RD" //206
/datum/access/petrov_rd
	id = access_petrov_rd
	desc = "Petrov Chief Science Officer's Office"
	region = ACCESS_REGION_COMMAND

var/global/const/access_petrov_control = "ACCESS_KORCH_PETROV_CONTROL" //207
/datum/access/petrov_control
	id = access_petrov_control
	desc = "Petrov Control Room"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_petrov_maint = "ACCESS_KORCH_PETROV_MAINT" //208
/datum/access/petrov_maint
	id = access_petrov_maint
	desc = "Petrov Maintenance"
	region = ACCESS_REGION_GENERAL

var/global/const/access_korch_helm = "ACCESS_KORCH_HELM"
/datum/access/korch_helm
	id = access_korch_helm
	desc = "Korch Helm"
	region = ACCESS_REGION_COMMAND

// Korch Radio Access

var/global/const/access_radio_comm = "ACCESS_RADIO_COMM"
/datum/access/access_radio_comm
	id = access_radio_comm
	desc = "Command Radio"
	region = ACCESS_REGION_COMMAND

var/global/const/access_radio_eng = "ACCESS_RADIO_ENG"
/datum/access/access_radio_eng
	id = access_radio_eng
	desc = "Engineering Radio"
	region = ACCESS_REGION_ENGINEERING

var/global/const/access_radio_med = "ACCESS_RADIO_MED"
/datum/access/access_radio_med
	id = access_radio_med
	desc = "Medical Radio"
	region = ACCESS_REGION_MEDBAY

var/global/const/access_radio_sec = "ACCESS_RADIO_SEC"
/datum/access/access_radio_sec
	id = access_radio_sec
	desc = "Security Radio"
	region = ACCESS_REGION_SECURITY

var/global/const/access_radio_sci = "ACCESS_RADIO_SCI"
/datum/access/access_radio_sic
	id = access_radio_sci
	desc = "Science Radio"
	region = ACCESS_REGION_RESEARCH

var/global/const/access_radio_sup = "ACCESS_RADIO_SUP"
/datum/access/access_radio_sup
	id = access_radio_sup
	desc = "Supply Radio"
	region = ACCESS_REGION_SUPPLY

var/global/const/access_radio_serv = "ACCESS_RADIO_SERV"
/datum/access/access_radio_serv
	id = access_radio_serv
	desc = "Service Radio"
	region = ACCESS_REGION_SERVICE

var/global/const/access_radio_exp = "ACCESS_RADIO_EXP"
/datum/access/access_radio_exp
	id = access_radio_exp
	desc = "Exploration Radio"
	region = ACCESS_REGION_GENERAL
