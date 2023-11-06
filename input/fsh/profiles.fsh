//============== ALIAS ===============

//====== Profiles =====================================



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationLivingEnvironment
Parent:   Observation 
Id:       Observation-livingEnvironment-gk
Title:    "Observation Living Environment (Gatekeeper)"
Description: "This profile defines how to represent Living Environment Observations (e.g., let's see at 5 :-)Humidity, Temperature, Pressure,...) in FHIR for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

/*====
// 20053-5	Atmospheric pressure			mm[Hg]
76268-2 Pressure.ambient Room
60832-3	Room temperature			Cel;[degF]
65643-9	Relative humidity (%)			%
+ others
===*/

* extension contains $event-location named event-location 1..1 MS
* extension[event-location].valueReference only Reference(Location or LocationRoomGk)
* category = CsGatekeeper#liv-environment "Living Environment Observations"
* category 1..1 MS
* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code from VsLivingEnvironmentObservationGK (extensible)
* subject	0..1 MS
* subject only Reference (PatientGK or Location or LocationRoomGk) //	Who and/or what the observation is about
* focus only Reference (Location or LocationRoomGk) 
* device 0.. MS
* device only Reference(Device)
* effective[x]	MS
// * value[x] 1.. MS
* valueQuantity 1.. MS // actual measure
* specimen 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LocationRoomGk
Parent:   Location 
Id:       Location-room-gk
Title:    "Location - MySphera (Gatekeeper)"
Description: "This profile defines how to represent in FHIR the room where activity measures are taken;  as captured by the My Sphera devices for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* identifier 1.. MS
* physicalType = $location-physical-type#ro



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  DocumentReferenceGK
Parent:   DocumentReference
Id:       documentReference-paronamix-gk
Title:    "DocumentReference (Paronamix)"
Description: "This profile defines how the gaming results generated by the PANORAMIX project are shared within the Gatekeeper project by using the FHIR DocumentReference."
//-------------------------------------------------------------------------------------------
* masterIdentifier MS
* status 1.. MS
* docStatus MS
* category 1.. MS
* category = $loinc#51848-0
* type MS
* date	1.. MS
* description MS
* content 1.. MS
* content.attachment 1.. MS
* content.attachment.contentType 1.. MS
* content.attachment.contentType = #application/json
* content.attachment.data 1.. MS
* context MS
* context.encounter MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ResearchSubjectGK
Parent:   ResearchSubject
Id:       researchSubject-gk
Title:    "ResearchSubject (Gatekeeper)"
Description: "This profile defines how to represent in FHIR the subject enrollment in the pilots for supporting the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* identifier 1.. MS
* status 1.. MS
* period MS 
* study	MS // check is is enough a business identifier..
* individual 1.. MS
* assignedArm MS // for saxony "control" | "treatment" to be added
* consent MS



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CareTeamGK
Parent:   CareTeam
Id:       careTeam-gk
Title:    "CareTeam (Gatekeeper)"
Description: "This profile defines how to represent a Care Team in FHIR for supporting the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* status MS
* subject 1.. MS
* subject only Reference(PatientGK)
* participant 1.. MS
* participant.role MS
* participant.member 1.. MS
* reasonCode MS
* managingOrganization	MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  TaskMkGK
Parent:   Task
Id:       task-mk-gk
Title:    "Task - Milton Keynes (Gatekeeper)"
Description: "This profile defines how to represent a task in FHIR for supporting the Milton Keynes pilot in the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* identifier MS
* basedOn only Reference(ServiceRequestMkGK)
* status MS
* intent MS
// * for only Reference(Patient) // check if this is enough
* for only Reference(PatientGK) // check if this is enough
* executionPeriod MS
* owner MS
* output MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ServiceRequestGrGK
Parent:   ServiceRequest
Id:       serviceRequest-gr-gk
Title:    "ServiceRequest - Greece (Gatekeeper)"
Description: "This profile defines how to represent a service request in FHIR for supporting the Greek pilot in the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* identifier MS
* status 1.. MS
* intent  1.. MS
* category 0.. MS
* subject 1.. MS
* subject only Reference(PatientGK)
* occurrenceDateTime MS
* authoredOn MS
* requester MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ServiceRequestMkGK
Parent:   ServiceRequest
Id:       serviceRequest-mk-gk
Title:    "ServiceRequest - Milton Keynes (Gatekeeper)"
Description: "This profile defines how to represent a service request in FHIR for supporting the Milton Keynes pilot in the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* identifier MS
// * instantiatesCanonical only canonical(ActivityDefinition) //clarify how to restrict canonical to ActivityDefinition
* instantiatesCanonical MS
* status 1.. MS
* intent  1.. MS
* subject MS
* requester MS
* performer MS
* locationCode	0.. // Σ	0..*	CodeableConcept	Requested location
* locationReference	0.. // Σ	0..*	Reference(Location)	Requested location
* reasonCode	0.. // Σ	0..*	CodeableConcept	Explanation/Justification for procedure or service Procedure Reason Codes (Example)
* reasonReference 0.. //
* supportingInfo 0.. MS
* supportingInfo ^slicing.discriminator[0].type = #type
* supportingInfo ^slicing.discriminator[0].path = "$this.resolve()"
* supportingInfo ^slicing.ordered = false
* supportingInfo ^slicing.rules = #open
* supportingInfo ^short = "Components composing the supporting information"
* supportingInfo ^definition = "The root of the components that make up the supporting information slice."
* supportingInfo contains   risk 0..* 
* supportingInfo[risk] ^short = "Probability of increasing severity over time if the intervention is not implemented."
* supportingInfo[risk] ^definition = "Probability of increasing severity over time if the intervention is not implemented. The risk function is used to update the cumulative level of risk for the target of the intervention and it is inherited by the target of the intervention." 
* supportingInfo[risk] only Reference(RiskAssessment)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationFloorClimbed
Parent:   Observation 
Id:       observation-floorClimbed-gk
Title:    "Observation Floor Climbed (Gatekeeper)"
Description: "This profile defines how to represent the number of Floor Climbed in FHIR for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsGatekeeper#floor-climbed // "Floors climbed"
* subject	0..1 MS
* device 0.. MS
* device only Reference(Device)
* effective[x]	MS
* valueQuantity 1.. MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationExercisePanel
Parent:   Observation 
Id:       observation-exercisePanel-gk
Title:    "Observation Exercise tracking panel (Gatekeeper)"
Description: "This profile defines how to represent Exercise tracking panel observations in FHIR for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= $loinc#55409-7	// Exercise tracking panel
* subject	0..1 MS
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS

* component 1.. MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Exercise tracking panel"
* component ^definition = "The root of the components that make up the the Exercise tracking panel observation."
* component contains   activityType 0..1 
	and aerobicCategory 0..1
	and caloriesBurned 0..1
	and exerciseDuration 0..1
	and exerciseDistance 0..1
	and heartRateMax 0..1

* component[activityType] ^short = "Exercise activity"
* component[aerobicCategory] ^short = "Exercise aerobic category"			
* component[caloriesBurned] ^short = "Calories burned Machine estimate"
* component[exerciseDuration] ^short = "Exercise duration"
* component[exerciseDistance] ^short = "Exercise distance unspecified time"
* component[heartRateMax] ^short = "Heart rate Encounter maximum"

* component[activityType].code  = $loinc#73985-4	 // Exercise activity
* component[aerobicCategory].code =  $loinc#73986-2	// Exercise aerobic category
* component[caloriesBurned].code = $loinc#55421-2	// Calories burned Machine estimate			kcal
* component[exerciseDuration].code = $loinc#55411-3	// Exercise duration			min
* component[exerciseDistance].code = $loinc#55412-1	// Exercise distance unspecified time			[mi_us];km
* component[heartRateMax].code = $loinc#55422-0	// Heart rate Encounter maximum			{beats}/min
	
* component[activityType].code MS
* component[aerobicCategory].code MS
* component[caloriesBurned].code MS 
* component[exerciseDuration].code MS
* component[exerciseDistance].code MS
* component[heartRateMax].code MS
	
* component[activityType].valueCodeableConcept 1.. MS
* component[activityType].valueCodeableConcept from http://loinc.org/vs/LL734-5 (example)
* component[aerobicCategory].valueCodeableConcept 1.. MS 
* component[aerobicCategory].valueCodeableConcept from http://loinc.org/vs/LL2555-2 (example)
* component[caloriesBurned].valueQuantity 1.. MS 
* component[caloriesBurned].valueQuantity.value 1.. MS
* component[caloriesBurned].valueQuantity.unit 0.. MS
* component[caloriesBurned].valueQuantity.system = "http://unitsofmeasure.org"
* component[caloriesBurned].valueQuantity.code = #kcal
* component[exerciseDuration].valueQuantity 1.. MS 
* component[exerciseDuration].valueQuantity.value 1.. MS
* component[exerciseDuration].valueQuantity.unit 0.. MS
* component[exerciseDuration].valueQuantity.system = "http://unitsofmeasure.org"
* component[exerciseDuration].valueQuantity.code = #min

* component[exerciseDistance].valueQuantity 1.. MS 
* component[exerciseDistance].valueQuantity.value 1.. MS
* component[exerciseDistance].valueQuantity.unit 0.. MS
* component[exerciseDistance].valueQuantity.system = "http://unitsofmeasure.org"
* component[exerciseDistance].valueQuantity.code = #km

* component[heartRateMax].valueQuantity 1.. MS 
* component[heartRateMax].valueQuantity.value 1.. MS
* component[heartRateMax].valueQuantity.unit 0.. MS
* component[heartRateMax].valueQuantity.system = "http://unitsofmeasure.org"
* component[heartRateMax].valueQuantity.code = #{beats}/min
	
/* ===	
 Indent73985-4	Exercise activity			
 Indent73986-2	Exercise aerobic category			
 Indent55421-2	Calories burned Machine estimate			kcal
 Indent55411-3	Exercise duration			min
 Indent55412-1	Exercise distance unspecified time			[mi_us];km
 Indent55422-0	Heart rate Encounter maximum			{beats}/min
=== */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationGK
Parent:   Observation 
Id:       observation-gk
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
Parent:   $Observation-results-laboratory-uv-ips
Id:       observation-labResult-gk
Title:    "Laboratory results (Gatekeeper)"
Description: "This profile defines how to represent laboratory results performed by an authorized loboratory in FHIR using a standard LOINC code and UCUM units of measure. It is based on the Laboratory IPS profile"

//-------------------------------------------------------------------------------------------
* code from VsLabTestGK (extensible)


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  EncounterGK
Parent:   Encounter
Id:       encounter-gk
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
Profile:  QuestionnaireResponseGK
Parent:   QuestionnaireResponse
Id:       questionnaireResponse-gk
Title:    "QuestionnaireResponse (Gatekeeper)"
Description: "This profile defines how to represent QuestionnaireResponse responses in the Gatekeeper Project."

//-------------------------------------------------------------------------------------------

* identifier MS // record_id	YES	Numeric	20	Identification of the record that contains all the answers to the same questionnaire 
* status 1.. MS
* questionnaire MS // questionnaire_id	YES	String	20	Identification of the questionnaire
* subject MS
// * subject only Reference(PatientGK) // participant_id	YES	String	20	The unique identifier of the patient.
* authored MS // completion_date	YES	Date		Date of record
* text MS
* item.linkId 1.. MS  // question_id	YES	Numeric	20	Identification of the number of the question to which the answer corresponds to
// * item.answer.value[x] only string or Quantity	// answer	YES	Numeric	String	Answer to the question in the specific questionnaire
* item.answer MS



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FamilyMemberHistoryGK
Parent:   FamilyMemberHistory 
Id:       familyMemberHistory-gk
Title:    "FamilyMemberHistory  (Gatekeeper)"
Description: "This profile defines how to represent FamilyMemberHistory  (Prescribed Medicines) in FHIR in Gatekeeper."
//  Greece Pilot
//-------------------------------------------------------------------------------------------

* identifier MS
* status 1.. MS
* patient 1.. MS
* patient only Reference(PatientGK)
* date	MS 
* name	MS
* relationship	1.. MS
* ageString	MS
* deceasedBoolean	MS
* reasonCode	MS
* note	MS
* condition MS
* condition.code MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  MedicationRequestGK
Parent:   MedicationRequest
Id:       medicationRequest-gk
Title:    "MedicationRequest (Gatekeeper)"
Description: "This profile defines how to represent MedicationRequest (Prescribed Medicines) in FHIR in Gatekeeper."
// Aragon Pilot + Greece
//-------------------------------------------------------------------------------------------

* identifier MS
* status 1.. MS // 0 – Inactive 1- Active
* intent 1.. MS
* medicationCodeableConcept MS // ATC coding 
* subject 1.. MS
* subject only Reference(PatientGK) // The unique identifier of the patient.	N.A
* authoredOn MS // Date of record	dd/mm/yyyy
* dosageInstruction MS
* dosageInstruction.timing.repeat.boundsPeriod.start  MS // start date of treatment	NA
* dosageInstruction.timing.repeat.boundsPeriod.end MS // 00/00/0000 if end_date is not defined	NA
* dosageInstruction.timing.code.text 0..1 // sequence Moments of day for medicine intake	String indicating moments of day in which medicine should be taken 
* dosageInstruction.text MS // calendar Weekdays to apply sequence	String with weekdays in Spanish in which medicine should be taken
* dosageInstruction.doseAndRate.doseQuantity MS // Dose Value of the dose to be taken	and // Unit Code of measurement	E.g. mg -> miligram


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Profile:  AppointmentGrGK
Parent:   Appointment
Id:       appointment-gr-gk
Title:    "Appointment (Greece - Gatekeeper)"
Description: "This profile defines how to represent Appointments in FHIR in Gatekeeper for the Greek Pilot."
// from GR - CY Pilot
//-------------------------------------------------------------------------------------------
* identifier MS // ID	YES	Numeric	20	The unique identifier of the Appointment	N.A
// Meta [version, last updated]	YES	Numeric and Date/Time	25	Defines the type of the appointment	N.A.
* status 1.. MS // YES	Code 	10	Status of the appointment	Options: proposed | pending | booked |
// * appointmentType	MS // 	YES	CodeableConcept	10	Type of the appointment 	Options: physical, virtual/video, chat
* start	MS // YES	Date / Time	10	When appointment is to take place	Instant
* end MS // YES	Date / Time	10	When appointment is to conclude	Instant
// * slot MS // YES	Reference(Slot) https://www.hl7.org/fhir/slot.html	10	The slots that this appointment is filling	Slot 
* minutesDuration MS
* comment MS
* created MS // YES	dateTime	20	The date that this appointment was initially created	dateTime
* participant.actor MS //
* participant.status MS //  [actor/status] 	YES	Reference to patient id / Code		Participants involved in appointment and their role	Patient IDs and HCPs IDs


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  NutritionOrderGK
Parent:   NutritionOrder
Id:       nutritionOrder-gk
Title:    "NutritionOrder  (Gatekeeper)"
Description: "This profile defines how to represent Nutrition Orders  in FHIR in Gatekeeper."
// from GR - CY Pilot
//-------------------------------------------------------------------------------------------
* identifier MS
* status 1.. MS // [ active | on-hold | revoked | completed]
* patient 1.. MS
* patient only Reference(PatientGK)
* dateTime 1.. MS
* orderer MS
* orderer only Reference(PractitionerGK or PractitionerRole)
* oralDiet MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  CarePlanGK
Parent:   CarePlan
Id:       carePlan-gk
Title:    "CarePlan (Gatekeeper)"
Description: "This profile defines how to represent CarePlans in FHIR in Gatekeeper."
// from GR - CY Pilot
//-------------------------------------------------------------------------------------------
* identifier MS
* status 1.. MS // [ active | on-hold | revoked | completed]
* intent 1.. MS // (proposal | plan | order | option)
* title MS 
// * category	MS // 	http://snomed.info/sct which codes ?
* subject only Reference(PatientGK) // YES	Reference to patient id	50	Who the care plan is for	Patient IDs
* subject MS // YES	Reference to patient id	50	Who the care plan is for	Patient IDs
* period MS //	YES	Date/Time	20	Time period plan covers	N.A.
* author MS // YES	Reference to Practitioner ID	20	Who is the designated responsible party	Practitioner IDs
* careTeam MS // 	YES	Reference to CareTeam	50	Who's involved in plan?	N/A
// * goal.display MS 
* activity MS //	YES	Reference to activity types [Activity List: Medication / Nutrition / Education / Laboratory Exams / Exercise / Questionnaires / Observation] 	10	Action to occur as part of plan	Activity List - LOINC


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PractitionerGK
Parent:   Practitioner
Id:       practitioner-gk
Title:    "Practitioner (Gatekeeper)"
Description: "This profile defines how to represent Practitioners in FHIR in Gatekeeper."
//-------------------------------------------------------------------------------------------
* identifier MS
* active MS
* name MS
* name.text MS
* telecom MS
* address MS
* gender MS
* birthDate MS




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  VitalSignGK
Parent:   $vitalsigns
Id:       observation-vitalsigns-gk
Title:    "Vital Signs (Gatekeeper)"
Description: "This profile defines how to represent Vital Signs observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
* code from VsVitalSignsGK (extensible)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BodyTempGK
Parent:   $bodytemp
Id:       observation-bodytemp-gk
Title:    "Body Temperature (Gatekeeper)"
Description: "This profile defines how to represent Body Temperature observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OxygenSatGK
Parent:   $oxygensat
Id:       observation-oxygensat-gk
Title:    "Oxygen Saturation (Gatekeeper)"
Description: "This profile defines how to represent Oxygen Saturation Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BloodPressureGK
Parent:   $bp
Id:       observation-bp-gk
Title:    "Blood Pressure (Gatekeeper)"
Description: "This profile defines how to represent Blood Pressure Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  HeartRateGK
Parent:   $heartrate
Id:       observation-hr-gk
Title:    "Heart Rate (Gatekeeper)"
Description: "This profile defines how to represent Heart Rate Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  RadResultGK
Parent:   $Observation-results-radiology-uv-ips
Id:       observation-radResult-gk
Title:    "Radiology results (Gatekeeper)"
Description: "This profile defines how to represent radiology results in FHIR. It is based on the Radiology IPS profile"

//-------------------------------------------------------------------------------------------

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  PathResultGK
Parent:   $Observation-results-pathology-uv-ips
Id:       observation-pathResult-gk
Title:    "Pathology results (Gatekeeper)"
Description: "This profile defines how to represent pathology results in FHIR. It is based on the Pathology IPS profile"

//-------------------------------------------------------------------------------------------


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LabSelfTestGK
Parent:   $Observation-results-uv-ips
Id:       observation-labSelfTest-gk
Title:    "Laboratory self test results (Gatekeeper)"
Description: "This profile defines how to represent self test results in FHIR for the scope of Gatekeeper. using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
// * subject only $Patient-uv-ips
* code from VsLabSelfTestGK (extensible)
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BloodGlucoseGK
Parent:	  ObservationGK // use Observation until the constraiunt on timing will no be removed
Id:       observation-bloodGlucose-gk
Title:    "Blood Glucose Moles/volume (Gatekeeper)"
Description: "This profile defines how to represent Blood Glucose Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
// * subject only $Patient-uv-ips
* category MS
* code MS
* code = $loinc#15074-8 // "Glucose [Moles/volume] in Blood"
* subject 1.. MS
* effective[x] 1.. MS
* effective[x].extension ..1 MS
* effective[x].extension only $data-absent-reason
* effective[x].extension ^short = "effective[x] absence reason"
* effective[x].extension ^definition = "Provides a reason why the effectiveTime is missing."
* performer only Reference(PractitionerUvIps or PractitionerRoleUvIps or OrganizationUvIps or CareTeam or PatientUvIps or RelatedPerson)
* performer MS
* value[x] MS
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationSocialGK
Parent:   ObservationGK 
Id:       observation-social-gk
Title:    "Observation Social Assessment(Gatekeeper)"
Description: "This profile defines how to represent social observations (living status; tobacco use;..) for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* subject 1..1 MS
* code	from VsSocialObservationGK (extensible)

/*++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
>>> COMMENTED TO BE RECOVERED IF SPECILAZED LAB RESULTS ARE REALLY NEEDED 

Profile:  FastingPlasmaGlucoseGK
Parent:   $Observation-results-uv-ips
Id:       observation-fpg-gk
Title:    "Fasting plasma glucose (Gatekeeper)"
Description: "This profile defines how to represent Fasting plasma glucose observations in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only $Patient-uv-ips
* code from VsFastingPlasmaGlucoseGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0
=== */

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  StepsNumberGK
Parent:   $Observation-results-uv-ips
Id:       observation-stepsNumber-gk
Title:    "Steps Number(Gatekeeper)"
Description: "This profile defines how to represent Number of Steps measures Observation in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only $Patient-uv-ips
* code from VsStepsGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  SleepDurationGK
Parent:   $Observation-results-uv-ips
Id:       observation-sleepDuration-gk
Title:    "Sleep Duration (Gatekeeper)"
Description: "This profile defines how to represent Sleep Duration Observation in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only $Patient-uv-ips
* code from VsSleepDurationGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

Profile: ObservationPugliaGK
Parent: Observation
Id: Observation-eu-pgl-gk
Title: "Observtion - Research Study Puglia Pilot (GateKeeper)"
Description: "This profile represents the constraints applied to the Observation resource used for a case study in the Puglia Pilot."
* ^status = #draft
* . MS
* extension contains $workflow-researchStudy named workflow-researchStudy 1..1 MS
* extension[workflow-researchStudy].valueReference only Reference(ResearchStudy)
* status 1..1	MS
* code	1..1 MS
* code from VsPugliaResearchStudyObservationsGK
* subject	1..1 MS
* subject only Reference (Patient)
* effective[x] 1..1 MS
* effective[x] ^requirements = "The effective type depend on the Observation.code."
//Constrain 1
* effective[x] ^constraint[1].key = "GK-obs-pgl-eft-1"
* effective[x] ^constraint[1].severity = #error
* effective[x] ^constraint[1].human = "If Observation.code.coding.code is '30525-0' or 'risk-score-ddci' or 'risk-score-cci', the Type of effective[x] MUST be dateTime."
* effective[x] ^constraint[1].expression = "(Observation.code.coding.code = '30525-0' or Observation.code.coding.code = 'risk-score-ddci' or Observation.code.coding.code = 'risk-score-cci') and Observation.effective.ofType(dateTime)"
//Constrain 2
* effective[x] ^constraint[2].key = "GK-obs-pgl-eft-2"
* effective[x] ^constraint[2].severity = #error
* effective[x] ^constraint[2].human = "If Observation.code.coding.code is 'healthcare-costs-drugs' or 'healthcare-costs-hospitalizations' or 'healthcare-costs-hospitalizations-unplanned' or 'healthcare-costs-outpatient-visits' or 'hospitalizations-number' or 'hospitalizations-unplanned-number' or 'hospitalizations-length-of-stay' or 'hospitalizations-unplanned-length-of-stay', the Type of effective[x] MUST be Period and start and end MUST be present."
* effective[x] ^constraint[2].expression = "(Observation.code.coding.code = 'healthcare-costs-drugs' or Observation.code.coding.code = 'healthcare-costs-hospitalizations' or Observation.code.coding.code = 'healthcare-costs-hospitalizations-unplanned' or Observation.code.coding.code = 'healthcare-costs-outpatient-visits' or Observation.code.coding.code = 'hospitalizations-number' or Observation.code.coding.code = 'hospitalizations-unplanned-number' or Observation.code.coding.code = 'hospitalizations-length-of-stay' or Observation.code.coding.code = 'hospitalizations-unplanned-length-of-stay') and Observation.effective.ofType(Period) and Observation.effectivePeriod.start.exists() and Observation.effectivePeriod.end.exists()"
* value[x] 1..1 MS
* value[x] ^requirements = "The value Type depend on the Observation.code."
//Constrain 1
* value[x] ^constraint[1].key = "GK-obs-pgl-vl-1"
* value[x] ^constraint[1].severity = #error
* value[x] ^constraint[1].human = "If Observation.code.coding.code is '30525-0', the Type of value[x] MUST be Quatity and valueQuantity.value, valueQuantity.system and valueQuantity.code MUST be present and valueQuantity.system MUST be 'http://unitsofmeasure.org' and valueQuantity.code MUST be 'a'"
* value[x] ^constraint[1].expression = "Observation.code.coding.code = '30525-0' and Observation.value.ofType(Quatity) and Observation.valueQuantity.value.exists() and Observation.valueQuantity.system.exists() and Observation.valueQuantity.code.exists() and Observation.valueQuantity.system = 'http://unitsofmeasure.org' and Observation.valueQuantity.code = 'a'"
//Constrain 2
* value[x] ^constraint[2].key = "GK-obs-pgl-vl-2"
* value[x] ^constraint[2].severity = #error
* value[x] ^constraint[2].human = "If Observation.code.coding.code is 'risk-score-ddci' or 'risk-score-cci' or 'hospitalizations-number' or 'hospitalizations-unplanned-number', the Type of value[x] MUST be integer"
* value[x] ^constraint[2].expression = "(Observation.code.coding.code = 'risk-score-ddci' or Observation.code.coding.code = 'risk-score-cci' or Observation.code.coding.code = 'hospitalizations-number' or Observation.code.coding.code = 'hospitalizations-unplanned-number') and Observation.value.ofType(integer)"
//Constrain 3
* value[x] ^constraint[3].key = "GK-obs-pgl-vl-3"
* value[x] ^constraint[3].severity = #error
* value[x] ^constraint[3].human = "If Observation.code.coding.code is 'healthcare-costs-drugs' or 'healthcare-costs-hospitalizations' or 'healthcare-costs-hospitalizations-unplanned' or 'healthcare-costs-outpatient-visits', the Type of value[x] MUST be Quatity and valueQuantity.value, valueQuantity.system and valueQuantity.code MUST be present and valueQuantity.system MUST be 'urn:iso:std:iso:4217' and valueQuantity.code MUST be 'EUR'"
* value[x] ^constraint[3].expression = "(Observation.code.coding.code = '30525-0' or Observation.code.coding.code = 'healthcare-costs-hospitalizations' or Observation.code.coding.code = 'healthcare-costs-hospitalizations-unplanned' or Observation.code.coding.code = 'healthcare-costs-outpatient-visits') and Observation.value.ofType(Quatity) and Observation.valueQuantity.value.exists() and Observation.valueQuantity.system.exists() and Observation.valueQuantity.code.exists() and Observation.valueQuantity.system = 'urn:iso:std:iso:4217' and Observation.valueQuantity.code = 'EUR'"
//Constrain 4
* value[x] ^constraint[4].key = "GK-obs-pgl-vl-4"
* value[x] ^constraint[4].severity = #error
* value[x] ^constraint[4].human = "If Observation.code.coding.code is 'hospitalizations-length-of-stay' or 'hospitalizations-unplanned-length-of-stay', the Type of value[x] MUST be Quatity and valueQuantity.value, valueQuantity.system and valueQuantity.code MUST be present and valueQuantity.system MUST be 'http://unitsofmeasure.org' and valueQuantity.code MUST be 'd'"
* value[x] ^constraint[4].expression = "(Observation.code.coding.code = 'hospitalizations-length-of-stay' or Observation.code.coding.code = 'hospitalizations-unplanned-length-of-stay') and Observation.value.ofType(Quatity) and Observation.valueQuantity.value.exists() and Observation.valueQuantity.system.exists() and Observation.valueQuantity.code.exists() and Observation.valueQuantity.system = 'http://unitsofmeasure.org' and Observation.valueQuantity.code = 'd'"