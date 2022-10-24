//Makes sure we don't get any merchant antags as a balance concern. Can also be used for future Korch specific antag restrictions.
/datum/antagonist/changeling
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/detective, /datum/job/warden, /datum/job/officer, /datum/job/merchant)

/datum/antagonist/godcultist
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/chaplain, /datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/rd, /datum/job/detective, /datum/job/warden, /datum/job/officer, /datum/job/merchant)

/datum/antagonist/cultist
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/chaplain, /datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/detective, /datum/job/warden, /datum/job/officer, /datum/job/merchant)

/datum/antagonist/loyalists
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/submap, /datum/job/merchant)

/datum/antagonist/revolutionary
	blacklisted_jobs = list(/datum/job/ai, /datum/job/cyborg, /datum/job/merchant, /datum/job/submap)
	protected_jobs = list()

/datum/antagonist/traitor
	blacklisted_jobs = list(/datum/job/submap)
	protected_jobs = list(/datum/job/captain, /datum/job/hop, /datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer, /datum/job/merchant)

/datum/antagonist/ert/equip(var/mob/living/carbon/human/player)
	if(!..())
		return 0
	player.char_branch = GLOB.mil_branches.get_branch("NanoTrasen")
	player.char_rank = GLOB.mil_branches.get_rank("ntsec", "NT Security")

	var/singleton/hierarchy/outfit/ert_outfit = outfit_by_type((player.mind == leader) ? /singleton/hierarchy/outfit/job/korch/ert/leader : /singleton/hierarchy/outfit/job/korch/ert)
	ert_outfit.equip(player)

	return 1
