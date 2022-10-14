/obj/structure/sign/ntplaque
	name = "\improper NT Directives"
	desc = "A plaque with NanoTrasen logo etched in it."
	icon = 'maps/korch/icons/obj/nt-decals.dmi'
	icon_state = "ntplaque"
	var/directives = {"<hr><center>
		1. <b>Exploring the unknown is your Primary Mission</b><br>

		You are to look for land and resources that can be used by Humanity to advance and prosper. Explore. Document. Explain. Knowledge is the most valuable resource.<br>

		2. <b>Every member of the Expeditionary Corps is an explorer</b><br>

		Some are Explorers by rank or position, but everyone has to be one when duty calls. You should always expect being assigned to an expedition if needed. You have already volunteered when you signed up.<br>

		3. <b>Danger is a part of the mission - avoid, not run away</b> <br>

		Keep your crew alive and hull intact, but remember - you are not here to sightsee. Dangers are obstacles to be cleared, not the roadblocks. Weigh risks carefully and keep your Primary Mission in mind.
		</center><hr>"}

/obj/structure/sign/ntplaque/examine(mob/user)
	. = ..()
	to_chat(user, "The founding principles of NT expedition are written there: <A href='?src=\ref[src];show_info=1'>Expeditionary Directives</A>")

/obj/structure/sign/ntplaque/CanUseTopic()
	return STATUS_INTERACTIVE

/obj/structure/sign/ntplaque/OnTopic(href, href_list)
	if(href_list["show_info"])
		to_chat(usr, directives)
		return TOPIC_HANDLED

/obj/structure/sign/ntplaque/attackby(obj/I, mob/user)
	if(istype(I, /obj/item/grab))
		var/obj/item/grab/G = I
		if(!ishuman(G.affecting))
			return
		G.affecting.apply_damage(5, DAMAGE_BRUTE, BP_HEAD, used_weapon="Metal Plaque")
		visible_message("<span class='warning'>[G.assailant] smashes [G.assailant] into \the [src] face-first!</span>")
		playsound(get_turf(src), 'sound/weapons/tablehit1.ogg', 50)
		to_chat(G.affecting, "<span class='danger'>[directives]</span>")
		admin_attack_log(user, G.affecting, "educated victim on \the [src].", "Was educated on \the [src].", "used \a [src] to educate")
		G.force_drop()
	else
		..()

/obj/structure/sign/ntseal
	name = "\improper NanoTrasen Seal"
	desc = "A sign which signifies who this vessel belongs to."
	icon = 'maps/korch/icons/obj/nt-decals.dmi'
	icon_state = "ntseal"

/obj/structure/sign/double/ntflag
	name = "NanoTrasen Flag"
	desc = "The flag of NanoTrasen, a symbol of many things to many people."
	icon = 'maps/korch/icons/obj/nt-decals.dmi'

/obj/structure/sign/double/ntflag/left
	icon_state = "ntflag-left"

/obj/structure/sign/double/ntflag/right
	icon_state = "ntflag-right"
