/datum/computer_file/report/recipient/borging
	form_name = "CC-NT-09"
	title = "Cyborgification Contract"
	logo = "\[ntlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/borging/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/text_label/header, "NSV Korch - Office of the Head of Personnel")
	add_field(/datum/report_field/people/from_manifest, "Name (HoP)")
	add_field(/datum/report_field/people/from_manifest, "Name (subject)", required = 1)
	add_field(/datum/report_field/date, "Date filed")
	add_field(/datum/report_field/time, "Time filed")
	add_field(/datum/report_field/text_label/instruction, "I, undersigned, hereby agree to willingly undergo a Regulation Lobotimization with intention of cyborgification or AI assimilation, and I am aware of all the consequences of such act. I also understand that this operation may be irreversible, and that my employment contract will be terminated.")
	add_field(/datum/report_field/signature, "Subject's signature")
	hop_fields += add_field(/datum/report_field/signature, "Head of Pesonnel's signature")
	hop_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/field in hop_fields)
		field.set_access(access_edit = access_hop)
