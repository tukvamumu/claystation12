/obj/item/device/encryptionkey/heads/korchexec
	name = "executive encryption key"
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/science
	name = "science radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Exploration" = 1)

/obj/item/device/encryptionkey/headset_korchrd
	name = "RD radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Science" = 1, "Command" = 1, "Exploration" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_korchcorp
	name = "corporate radio encryption key"
	icon_state = "nt_cypherkey"
	channels = list("Service" = 1)

/obj/item/device/encryptionkey/headset_qm
	name = "QM's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "Command" = 1, "Exploration" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_cargotech
	name = "Cargo Technician's encryption key"
	icon_state = "qm_cypherkey"
	channels = list("Supply" = 1, "Exploration" = 1, "Hailing" = 1)


/obj/item/device/encryptionkey/bridgestaff
	name = "bridge staff encryption key"
	icon_state = "com_cypherkey"
	channels = list("Command" = 1, "Engineering" = 1, "Exploration" = 1, "Supply" = 1, "Service" = 1, "Science" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/heads/ai_integrated
	name = "ai integrated encryption key"
	desc = "Integrated encryption key."
	icon_state = "cap_cypherkey"
	channels = list("Command" = 1, "Security" = 1, "Engineering" = 1, "Science" = 1, "Medical" = 1, "Supply" = 1, "Service" = 1, "Exploration" = 1, "AI Private" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/exploration
	name = "exploration radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_pilot
	name = "pilot radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Exploration" = 1, "Supply" = 1, "Science" = 1, "Hailing" = 1)

/obj/item/device/encryptionkey/headset_mining
	name = "prospector radio encryption key"
	icon_state = "srv_cypherkey"
	channels = list("Supply" = 1, "Exploration" = 1)

/obj/item/storage/box/encryptionkey/exploration
	name = "box of spare exploration radio keys"
	desc = "A box full of exploration department radio keys."
	startswith = list(/obj/item/screwdriver, /obj/item/device/encryptionkey/exploration = 5)

/obj/item/device/encryptionkey/pathfinder
	name = "pathfinder's encryption key"
	icon_state = "com_cypherkey"
	channels = list("Exploration" = 1, "Command" = 1, "Science" = 1, "Hailing" = 1)

/obj/item/storage/box/radiokeys
	name = "box of radio encryption keys"
	desc = "A box full of assorted encryption keys."
	startswith = list(/obj/item/device/encryptionkey/headset_sec = 3,
					  /obj/item/device/encryptionkey/headset_med = 3,
					  /obj/item/device/encryptionkey/headset_cargo = 3,
					  /obj/item/device/encryptionkey/headset_sci = 3)

/obj/item/storage/box/radiokeys/Initialize()
	. = ..()
	make_exact_fit()
