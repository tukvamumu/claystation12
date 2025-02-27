
/datum/computer_file/report/recipient/crew_transfer
	form_name = "CTA-NT-01"
	title = "Crew Transfer Application"
	logo = "\[ntlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/crew_transfer/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/text_label/header, "NSV - Office of the Head of Personnel")
	add_field(/datum/report_field/people/from_manifest, "Name (HoP)")
	add_field(/datum/report_field/people/from_manifest, "Name (applicant)", required = 1)
	add_field(/datum/report_field/date, "Date filed")
	add_field(/datum/report_field/time, "Time filed")
	add_field(/datum/report_field/simple_text, "Present position")
	add_field(/datum/report_field/simple_text, "Requested position")
	add_field(/datum/report_field/pencode_text, "Reason stated")
	add_field(/datum/report_field/text_label/instruction, "The following fields render the document invalid if not signed clearly.")
	add_field(/datum/report_field/signature, "Applicant signature")
	hop_fields += add_field(/datum/report_field/signature, "Head of Personnel's signature")
	hop_fields += add_field(/datum/report_field/number, "Number of personnel in present/previous position")
	hop_fields += add_field(/datum/report_field/number, "Number of personnel in requested position")
	hop_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/field in hop_fields)
		field.set_access(access_edit = access_hop)

/datum/computer_file/report/recipient/access_modification
	form_name = "AMA-NT-02"
	title = "Crew Access Modification Application"
	logo = "\[ntlogo\]"
	available_on_ntnet = TRUE

/datum/computer_file/report/recipient/access_modification/generate_fields()
	..()
	var/list/hop_fields = list()
	add_field(/datum/report_field/text_label/header, "SEV Torch - Office of the Executive Officer")
	add_field(/datum/report_field/people/from_manifest, "Name (HoP)")
	add_field(/datum/report_field/people/from_manifest, "Name (applicant)", required = 1)
	add_field(/datum/report_field/date, "Date filed")
	add_field(/datum/report_field/time, "Time filed")
	add_field(/datum/report_field/simple_text, "Present position")
	add_field(/datum/report_field/simple_text, "Requested access")
	add_field(/datum/report_field/pencode_text, "Reason stated")
	add_field(/datum/report_field/simple_text, "Duration of expanded access")
	add_field(/datum/report_field/text_label/instruction, "The following fields render the document invalid if not signed clearly.")
	add_field(/datum/report_field/signature, "Applicant signature")
	hop_fields += add_field(/datum/report_field/signature, "Executive Officer's signature")
	hop_fields += add_field(/datum/report_field/number, "Number of personnel in relevant position")
	hop_fields += add_field(/datum/report_field/options/yes_no, "Approved")
	for(var/datum/report_field/field in hop_fields)
		field.set_access(access_edit = access_hop)
