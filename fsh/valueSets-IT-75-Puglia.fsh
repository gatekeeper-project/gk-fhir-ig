//
// Aragona ES-AR
//
//============== ALIAS ===============
Alias: URI = urn:ietf:rfc:3986
Alias: OID = urn:ietf:rfc:1155
Alias: LOINC = http://loinc.org
Alias: CS_ISO3166 = urn:iso:std:iso:3166
Alias: SCT = http://snomed.info/sct
Alias: ICD10 = http://hl7.org/fhir/sid/icd-10
Alias: ICPC2 = http://hl7.org/fhir/sid/icpc-2


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsObservationCodeEsArGK
Id: ValueSet-observationcode-EsAr-gk
Title: "Observation Codes - Aragon (Gatekeeper)"
Description: "Observation Code used by the Aragon pilot (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* codes from valueset VsDiagnosisEsArGK
* codes from valueset VsLifeStyleFactorEsArGK

/* -----
* codes from valueset VsActivityCodeEsArGK
* codes from valueset VsActivityCodeEsArGK
* codes from valueset VsLabResultsCodeEsArGK
----- */


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsDiagnosisEsArGK
Id: ValueSet-diagnosis-EsAr-gk
Title: "Diagnosis - Aragon (Gatekeeper)"
Description: "Diagnosis codes used by the Aragon pilot (Gatekeeper Project)"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
* codes from system ICD10
* codes from system ICPC2

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLifeStyleFactorEsArGK
Id: ValueSet-lifestylefactor-EsAr-gk
Title: "Life Style Factor - Aragon (Gatekeeper)"
Description: "Observation Code used by the Aragon pilot - Life Style Factor (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* LOINC#72166-2	// Number of cigarettes per day  during the last month

/* -----
codes to be determined 
alcohol-consumption	YES	Numeric		Number of days having an alcoholic drink during the last month	
1 - Daily                 
2 - (5-6) days per week     
3 - (3-4) days per week     
4 - (1-2) days per week     
5 - (1-3) days per month    
6 - Less than once a month 

physical_activity	YES	Numeric		Level of physical activity during the last month	
0 - None (bed)
1 - Very Low (home)
2 - Low (basic needs outside home)
3 - Moderate (walk < 10000 steps)
4 - Intense (> 10000 steps)
5 - Vigorous (sport)

---- */


/* ----------- CODES TBD 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsActivityCodeEsArGK
Id: ValueSet-otherobservations-EsAr-gk
Title: "Other Observations - Aragon (Gatekeeper)"
Description: "Observation Code used by the Aragon pilot - Other Observations (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* LOINC#55423-8 // Steps
* SCT#258158006	// Sleep	Sleep, unit minutes

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabResultsCodeEsArGK
Id: ValueSet-labresults-EsAr-gk
Title: "Lab Results - Aragon (Gatekeeper)"
Description: "Observation Code used by the Aragon pilot - Lab Results (Gatekeeper Project)"
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
ValueSet: VsVitalSignsEsAr
Id: ValueSet-vitalsigns-EsAr-gk
Title: "Vital Signs - Aragon (Gatekeeper)"
Description: "Vital Signs Codes used by the Aragon pilot (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#64075005	// Pulse	Pulse (ang bpm)
* SCT#27113001	// Weight	Weight, unit [Kg]
* SCT#50373000	// Height	Height, unit [cm]
* SCT#248365001	// Waist	Waist Circumference, unit [cm]
* SCT#60621009	// BMI	BMI, unit [%]
* SCT#415945006	// Temperature	Temperature, unit [Celsius] Is this the concept to be used ? (Oral temperature)
* LOINC#8480-6	// Systolic blood pressure	Systolic blood pressure, unit mm[Hg]
* LOINC#8462-4	// Diastolic blood pressure	Diastolic blood pressure, unit mm[Hg]

=== */