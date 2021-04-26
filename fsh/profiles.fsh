//============== ALIAS ===============
Alias: $bodytemp = http://hl7.org/fhir/StructureDefinition/bodytemp
Alias: $oxygensat = http://hl7.org/fhir/StructureDefinition/oxygensat
Alias: $bp = http://hl7.org/fhir/StructureDefinition/bp
Alias: hr_profile = http://hl7.org/fhir/StructureDefinition/heartrate
Alias: vs_profile = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: $Observation-results-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: ips_lab_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-uv-ips
Alias: ips_path_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-pathology-uv-ips
Alias: ips_rad_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-radiology-uv-ips
Alias: $ipsPatient = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
Alias: $ipsPractitioner = http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips
Alias: $Condition-uv-ips = http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips
//=========================

//====== Profiles =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConditionGK
Parent:   $Condition-uv-ips
Id:       Condition-gk
Title:    "Condition (Gatekeeper)"
Description: "This profile defines how to represent patient conditions in FHIR for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* code from VsConditionGK (extensible)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationGK
Parent:   Observation 
Id:       Observation-gk
Title:    "Observation (Gatekeeper)"
Description: "This profile defines how to represent observations in FHIR for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	from VsObservationGK (extensible)
* subject	0..1 MS
// * subject only PatientGK //	Who and/or what the observation is about
* effective[x]	MS



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LabResultGK
Parent:   ips_lab_result
Id:       Observation-labResult-gk
Title:    "Laboratory results (Gatekeeper)"
Description: "This profile defines how to represent laboratory results performed by an authorized loboratory in FHIR using a standard LOINC code and UCUM units of measure. It is based on the Laboratory IPS profile"

//-------------------------------------------------------------------------------------------
* code from VsLabTestGK


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  EncounterGK
Parent:   Encounter
Id:       Encounter-gk
Title:    "Encounter (Gatekeeper - Aragon)"
Description: "This profile defines how to represent Encounter in the Aragon Pilot."
// from Aragon Pilot
//-------------------------------------------------------------------------------------------

* subject MS // participant_id String The unique identifier of the patient.
// Date of record TO BE ADDED
* period.start MS // Date of admission
* period.end MS // Date of discharge
* reasonCode MS // Main reason for admission add binding ICD-10
* type MS // Admission planned / unplanned / missing 
* hospitalization.admitSource MS // Place of residence before admission 1 - Home          2 - Nursing home       4 - Other         999 - Missing answer TO BE CHECKED
* hospitalization.dischargeDisposition MS // Place of residence after admission 1 - Home          2 - Nursing home  3 - Death         4 - Other         999 - Missing answer



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  QuestionnaireResponseAragonGK
Parent:   QuestionnaireResponse
Id:       QuestionnaireResponse-ar-gk
Title:    "QuestionnaireResponse (Gatekeeper - Aragon)"
Description: "This profile defines how to represent QuestionnaireResponse responses in the Aragon Pilot."
// from Aragon Pilot
//-------------------------------------------------------------------------------------------

* identifier MS // record_id	YES	Numeric	20	Identification of the record that contains all the answers to the same questionnaire 
* questionnaire MS // questionnaire_id	YES	String	20	Identification of the questionnaire
* subject MS
* subject only Reference(PatientGK) // participant_id	YES	String	20	The unique identifier of the patient.
* authored MS // completion_date	YES	Date		Date of record
* item.linkId MS  // question_id	YES	Numeric	20	Identification of the number of the question to which the answer corresponds to
* item.answer.value[x] only string or Quantity	// answer	YES	Numeric	String	Answer to the question in the specific questionnaire




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationRequestGK
Parent:   MedicationRequest
Id:       MedicationRequest-gk
Title:    "MedicationRequest (Gatekeeper)"
Description: "This profile defines how to represent MedicationRequest (Prescribed Medicines) in FHIR in Gatekeeper."
// from Aragon Pilot
//-------------------------------------------------------------------------------------------

* status MS // 0 – Inactive 1- Active
* medicationCodeableConcept MS // ATC coding 
* subject MS
* subject only Reference(PatientGK) // The unique identifier of the patient.	N.A
* authoredOn MS // Date of record	dd/mm/yyyy
* dosageInstruction.timing.repeat.boundsPeriod.start  MS // start date of treatment	NA
* dosageInstruction.timing.repeat.boundsPeriod.end MS // 00/00/0000 if end_date is not defined	NA
* dosageInstruction.timing.code.text 0..1 // sequence Moments of day for medicine intake	String indicating moments of day in which medicine should be taken 
* dosageInstruction.text MS // calendar Weekdays to apply sequence	String with weekdays in Spanish in which medicine should be taken
* dosageInstruction.doseAndRate.doseQuantity MS // Dose Value of the dose to be taken	and // Unit Code of measurement	E.g. mg -> miligram


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Profile:  AppointmentGK
Parent:   Appointment
Id:       Appointment-gk
Title:    "Appointment (Gatekeeper)"
Description: "This profile defines how to represent Appointments in FHIR in Gatekeeper."
// from GR - CY Pilot
//-------------------------------------------------------------------------------------------
* identifier MS // ID	YES	Numeric	20	The unique identifier of the Appointment	N.A
// Meta [version, last updated]	YES	Numeric and Date/Time	25	Defines the type of the appointment	N.A.
* status MS // YES	Code 	10	Status of the appointment	Options: proposed | pending | booked |
* appointmentType	MS // 	YES	CodeableConcept	10	Type of the appointment 	Options: physical, virtual/video, chat
* start	MS // YES	Date / Time	10	When appointment is to take place	Instant
* end MS // YES	Date / Time	10	When appointment is to conclude	Instant
* slot MS // YES	Reference(Slot) https://www.hl7.org/fhir/slot.html	10	The slots that this appointment is filling	Slot 
* created MS // YES	dateTime	20	The date that this appointment was initially created	dateTime
* participant.actor MS //
* participant.status MS //  [actor/status] 	YES	Reference to patient id / Code		Participants involved in appointment and their role	Patient IDs and HCPs IDs


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CarePlanGK
Parent:   CarePlan
Id:       CarePlan-gk
Title:    "CarePlan (Gatekeeper)"
Description: "This profile defines how to represent CarePlans in FHIR in Gatekeeper."
// from GR - CY Pilot
//-------------------------------------------------------------------------------------------
* identifier MS
* status MS // [ active | on-hold | revoked | completed]
* category	MS // 	http://snomed.info/sct which codes ?
* subject only Reference(PatientGK) // YES	Reference to patient id	50	Who the care plan is for	Patient IDs
* subject MS // YES	Reference to patient id	50	Who the care plan is for	Patient IDs
* period MS //	YES	Date/Time	20	Time period plan covers	N.A.
* author MS // YES	Reference to Practitioner ID	20	Who is the designated responsible party	Practitioner IDs
* careTeam MS // 	YES	Reference to CareTeam	50	Who's involved in plan?	N/A
* goal.display MS 
* activity MS //	YES	Reference to activity types [Activity List: Medication / Nutrition / Education / Laboratory Exams / Exercise / Questionnaires / Observation] 	10	Action to occur as part of plan	Activity List - LOINC


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerGK
Parent:   $ipsPractitioner
Id:       Practitioner-gk
Title:    "Practitioner (Gatekeeper)"
Description: "This profile defines how to represent Practitioners in FHIR in Gatekeeper."
//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  VitalSignGK
Parent:   vs_profile
Id:       Observation-vitalsigns-gk
Title:    "Vital Signs (Gatekeeper)"
Description: "This profile defines how to represent Vital Signs observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
* code from VsVitalSignsGK (extensible)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BodyTempGK
Parent:   $bodytemp
Id:       Observation-bodytemp-gk
Title:    "Body Temperature (Gatekeeper)"
Description: "This profile defines how to represent Body Temperature observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OxygenSatGK
Parent:   $oxygensat
Id:       Observation-oxygensat-gk
Title:    "Oxygen Saturation (Gatekeeper)"
Description: "This profile defines how to represent Oxygen Saturation Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BloodPressureGK
Parent:   $bp
Id:       Observation-bp-gk
Title:    "Blood Pressure (Gatekeeper)"
Description: "This profile defines how to represent Blood Pressure Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  HeartRateGK
Parent:   hr_profile
Id:       Observation-hr-gk
Title:    "Heart Rate (Gatekeeper)"
Description: "This profile defines how to represent Heart Rate Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  RadResultGK
Parent:   ips_rad_result
Id:       Observation-radResult-gk
Title:    "Radiology results (Gatekeeper)"
Description: "This profile defines how to represent radiology results in FHIR. It is based on the Radiology IPS profile"

//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PathResultGK
Parent:   ips_path_result
Id:       Observation-pathResult-gk
Title:    "Pathology results (Gatekeeper)"
Description: "This profile defines how to represent pathology results in FHIR. It is based on the Pathology IPS profile"

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LabSelfTestGK
Parent:   $Observation-results-uv-ips
Id:       Observation-labSelfTest-gk
Title:    "Laboratory self test results (Gatekeeper)"
Description: "This profile defines how to represent self test results in FHIR for the scope of Gatekeeper. using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
// * subject only $ipsPatient
* code from VsLabSelfTestGK (extensible)
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BloodGlucoseGK
Parent:   $Observation-results-uv-ips
Id:       Observation-bloodGlucose-gk
Title:    "Blood Glucose (Gatekeeper)"
Description: "This profile defines how to represent Blood Glucose Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
// * subject only $ipsPatient
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationSocialGK
Parent:   ObservationGK 
Id:       Observation-social-gk
Title:    "Observation Social Assessment(Gatekeeper)"
Description: "This profile defines how to represent social observations (living status; tobacco use;..) for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* subject 1..1 MS
* code	from VsSocialObservationGK (extensible)

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>> COMMENTED TO BE RECOVERED IF SPECILAZED LAB RESULTS ARE REALLY NEEDED 

Profile:  FastingPlasmaGlucoseGK
Parent:   $Observation-results-uv-ips
Id:       Observation-fpg-gk
Title:    "Fasting plasma glucose (Gatekeeper)"
Description: "This profile defines how to represent Fasting plasma glucose observations in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only $ipsPatient
* code from VsFastingPlasmaGlucoseGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0
=== */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  StepsNumberGK
Parent:   $Observation-results-uv-ips
Id:       Observation-stepsNumber-gk
Title:    "Steps Number(Gatekeeper)"
Description: "This profile defines how to represent Number of Steps measures Observation in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only $ipsPatient
* code from VsStepsGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  SleepDurationGK
Parent:   $Observation-results-uv-ips
Id:       Observation-sleepDuration-gk
Title:    "Sleep Duration (Gatekeeper)"
Description: "This profile defines how to represent Sleep Duration Observation in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only $ipsPatient
* code from VsSleepDurationGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0