//
// Basque country ES-PV
//
//============== ALIAS ===============
Alias: URI = urn:ietf:rfc:3986
Alias: OID = urn:ietf:rfc:1155
Alias: LOINC = http://loinc.org
Alias: CS_ISO3166 = urn:iso:std:iso:3166
Alias: SCT = http://snomed.info/sct
Alias: ICD10 = http://hl7.org/fhir/sid/icd-10

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsObservationCodeEsPvGK
Id: ValueSet-observationcode-espv-gk
Title: "Observation Codes - Basque Country (Gatekeeper)"
Description: "Observation Code used by the Basque Country pilot (Gatekeeper Project)"
// ==> to be updated
//-------------------------------------------------------------------------------------------
* codes from valueset VsDiagnosisEsPvGK
* codes from valueset VsLifeStyleFactorEsPvGK
* codes from valueset VsActivityCodeEsPvGK
* codes from valueset VsActivityCodeEsPvGK
* codes from valueset VsLabResultsCodeEsPvGK

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsDiagnosisEsPvGK
Id: ValueSet-diagnosis-espv-gk
Title: "Diagnosis - Basque Country (Gatekeeper)"
Description: "Diagnosis codes used by the Basque Country pilot (Gatekeeper Project)"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
* ICD10#I11	// Hypertension	Hypertensive heart failure [status: active, inactive]
* ICD10#E11	// Type 2 diabetes mellitus	Diabetes (mellitus) (nonobese) (obese) [status: active, inactive]
* ICD10#J44	// Other chronic obstructive pulmonary disease	Chronic obstructive pulmonary disease [status: active, inactive]
* ICD10#I64	//Stroke, not specified as haemorrhage or infarction	Cerebrovascular accident [status: active, inactive]
* ICD10#G20	//Parkinson disease	Parkinsonism or Parkinson disease [status: active, inactive]
* ICD10#E78.0	// Hypercholesterolemia	Pure hypercholesterolemia [status: active, inactive]

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLifeStyleFactorEsPvGK
Id: ValueSet-lifestylefactor-espv-gk
Title: "Life Style Factor - Basque Country (Gatekeeper)"
Description: "Observation Code used by the Basque Country pilot - Life Style Factor (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#77176002	// Smoking	Smoking Habits [Yes, No]

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsActivityCodeEsPvGK
Id: ValueSet-otherobservations-espv-gk
Title: "Other Observations - Basque Country (Gatekeeper)"
Description: "Observation Code used by the Basque Country pilot - Other Observations (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* LOINC#55423-8 // Steps
* SCT#258158006	// Sleep	Sleep, unit minutes

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabResultsCodeEsPvGK
Id: ValueSet-labresults-espv-gk
Title: "Lab Results - Basque Country (Gatekeeper)"
Description: "Observation Code used by the Basque Country pilot - Lab Results (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
// Blood
* SCT#33747003	// bloodGlucose	Blood Glucose (mg/dL)
* SCT#166712009	// Creatine	Creatine, unit [mg/dL]
* SCT#365845005	// HbA1c	HbA1c, unit [%]
* SCT#442166002	// Serum Urea	Serum Urea, unit [mg/dL]
* SCT#45896001	// TGO	Aspartate Aminotransferase (AST), unit [U/L]
* SCT#166646003	// TGP	Alanine Aminotransferase (ALT), unit [U/L]
* SCT#121868005	// Cholesterol	Cholesterol, unit [mmol/L]
* SCT#102811001	// Creatinine Clearance	Creatinine Clearance, unit [mg/dL]
* SCT#102739008	// LDL	LowDensityLipoproteinCholesterol, unit [mmol/L] 
* SCT#102737005	// HDL	HighDensityLipoproteinCholesterol unit [mmol/L]
* SCT#365755003	// UreaLevel	Urea Level, unit [mg/dL]]
* SCT#274769005	// Albuminuria	Albuminuria, unit [mg]
* SCT#14740000	// Triglycerides	Triglycerides, unit [mg/dL]
* SCT#32789000	// Ferritin	Ferritin [ng/mL]
* SCT#102680009	// Troponin	Troponin [ng/mL]
// Urine
* SCT#1023491000000104	// Urine albumin:creatinine ratio	Albumin-creatinine ratio in urine (mg/g)
* SCT#80274001	// GFR	Glomerular filtration rate  (mL/min/m2)
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsVitalSignsESPV
Id: ValueSet-vitalsigns-espv-gk
Title: "Vital Signs - Basque Country (Gatekeeper)"
Description: "Vital Signs Codes used by the Basque Country pilot (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#64075005	// Pulse	Pulse (ang bpm)
* SCT#27113001	// Weight	Weight, unit [Kg]
* SCT#50373000	// Height	Height, unit [cm]
* SCT#248365001	// Waist	Waist Circumference, unit [cm]
* SCT#60621009	// BMI	BMI, unit [%]
* SCT#415945006	// Temperature	Temperature, unit [Celsius] Is this the concept to be used ? (Oral temperature)
* LOINC#8480-6	// Systolic blood pressure	Systolic blood pressure, unit mm[Hg]
* LOINC#8462-4	// Diastolic blood pressure	Diastolic blood pressure, unit mm[Hg]
