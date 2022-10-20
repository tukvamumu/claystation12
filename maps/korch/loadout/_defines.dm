//The following is a list of defs to be used for the Korch loadout.

//For roles that would have a higher level of education, typically doctors and other scientists
#define DOCTOR_ROLES list(/datum/job/cmo, /datum/job/medic_doctor, /datum/job/medical_trainee, /datum/job/chemist, /datum/job/roboticist, /datum/job/rd, /datum/job/scientist)

//For members of the medical department
#define MEDICAL_ROLES list(/datum/job/cmo, /datum/job/paramedic, /datum/job/medic_doctor, /datum/job/chemist, /datum/job/medical_trainee)

//For members of the medical department, roboticists, and some Research
#define STERILE_ROLES list(/datum/job/cmo, /datum/job/paramedic, /datum/job/doctor, /datum/job/chemist, /datum/job/roboticist, /datum/job/rd, /datum/job/scientist, /datum/job/medical_trainee)

//For members of the engineering department
#define ENGINEERING_ROLES list(/datum/job/chief_engineer, /datum/job/engineer, /datum/job/roboticist)

//For members of Engineering, Cargo, and Research
#define TECHNICAL_ROLES list(/datum/job/engineer, /datum/job/roboticist, /datum/job/qm, /datum/job/cargo_tech, /datum/job/mining, /datum/job/merchant, /datum/job/rd, /datum/job/scientist, /datum/job/chief_engineer, /datum/job/janitor, /datum/job/nt_pilot)

//For members of the security department
#define SECURITY_ROLES list(/datum/job/hos, /datum/job/warden, /datum/job/detective, /datum/job/officer)

//For members of the supply department
#define SUPPLY_ROLES list(/datum/job/qm, /datum/job/cargo_tech, /datum/job/mining)

//For members of the service department
#define SERVICE_ROLES list(/datum/job/janitor, /datum/job/chef, /datum/job/chaplain)

//For members of the exploration department
#define EXPLORATION_ROLES list(/datum/job/nt_pilot, /datum/job/explorer, /datum/job/mining)

//For members of the research department and jobs that are scientific
#define RESEARCH_ROLES list(/datum/job/rd, /datum/job/scientist, /datum/job/mining, /datum/job/assistant, /datum/job/nt_pilot, /datum/job/roboticist)

//For jobs that spawn with weapons in their lockers
#define ARMED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)

//For jobs that spawn with armor in their lockers
#define ARMORED_ROLES list(/datum/job/captain, /datum/job/hop, /datum/job/rd, /datum/job/cmo, /datum/job/chief_engineer, /datum/job/hos, /datum/job/qm, /datum/job/officer, /datum/job/warden, /datum/job/detective, /datum/job/merchant, /datum/job/submap/skrellscoutship_crew, /datum/job/submap/skrellscoutship_crew/leader, /datum/job/submap/scavver_pilot, /datum/job/submap/scavver_doctor, /datum/job/submap/scavver_engineer)
