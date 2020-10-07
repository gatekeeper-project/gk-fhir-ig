//============== ALIAS ===============
Alias: URI = urn:ietf:rfc:3986
Alias: OID = urn:ietf:rfc:1155
Alias: LOINC = http://loinc.org
Alias: CS_ISO3166 = urn:iso:std:iso:3166
Alias: SCT = http://snomed.info/sct

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsVitalSignsGK
Id: ValueSet-vitalsigns-eu-gk
Title: "Vital Signs (Gatekeeper)"
Description: "Vital Signs captured for the Gatekeeper Project"
//-------------------------------------------------------------------------------------------
* include codes from valueset http://hl7.org/fhir/ValueSet/observation-vitalsignresult
* LOINC#41982-0 // Percentage of body fat Measured
* LOINC#8280-0 // Waist Circumference at umbilicus by Tape measure; other measures available
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsFastingGlucoseBloodGK
Id: ValueSet-fastingGlucoseBlood-eu-gk
Title: "Fasting glucose blood [mg/dL] (Gatekeeper)"
Description: "LOINC codes used for capturing Fasting glucose in blood [mg/dL]"
// restricted to Mass Volume
//-------------------------------------------------------------------------------------------
* LOINC#1557-8 // Fasting glucose [Mass/volume] in Venous blood [mg/dL]
* LOINC#1556-0 // Fasting glucose [Mass/volume] in Capillary blood [mg/dL]
* LOINC#41604-0 // Fasting glucose [Mass/volume] in Capillary blood by Glucometer [mg/dL]

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsFastingPlasmaGlucoseGK
Id: ValueSet-fastingPlasmaGlucose-eu-gk
Title: "Fasting Plasma Glucose [mg/dL] (Gatekeeper)"
Description: "LOINC codes used for capturing Fasting Plasma Glucose [mg/dL]"
// restricted to Mass Volume
//-------------------------------------------------------------------------------------------
* LOINC#1493-6   // Glucose [Mass/volume] in Serum or Plasma --1.5 hours post 0.05-0.15 U insulin/kg IV 12 hours fasting
* LOINC#10450-5  // Glucose [Mass/volume] in Serum or Plasma --10 hours fasting
* LOINC#1554-5	// Glucose [Mass/volume] in Serum or Plasma --12 hours fasting
* LOINC#17865-7	// Glucose [Mass/volume] in Serum or Plasma --8 hours fasting
* LOINC#1558-6  // Fasting glucose [Mass/volume] in Serum or Plasma
* LOINC#35184-1	// Fasting glucose [Mass or Moles/volume] in Serum or Plasma
* LOINC#1500-8	// Glucose [Mass/volume] in Serum or Plasma --1 hour post 0.05-0.15 U insulin/kg IV post 12H CFst
* LOINC#1523-0 // Glucose [Mass/volume] in Serum or Plasma --30 minutes post 0.05-0.15 U insulin/kg IV post 12H CFst
* LOINC#1550-3	// Glucose [Mass/volume] in Serum or Plasma --pre 12 hour fast


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsObservationCodeGKGR
Id: ValueSet-observationcode-gr-gk
Title: "Observation Codes - Greece Cyprus (Gatekeeper)"
Description: "Observation Code used by the Greek and Cypriot pilots (Gatekeeper Project)"

// MetS data Attica and Central Greece:
// Blood pressure (done)
// FPG (done)

// Body composition Attica and Central Greece:
// 	Waist circumference (in cm) (done) part of the Vital Signs
//	BMI, % body fat (done) part of the Vital Signs

// Questionnaires (PROMs) for quality of life and stress management (e.g. ICHOM), for the assessment of

// Activity data Attica and Central Greece:
//	Physical Activity / Daily steps
//	Sleep duration (done)

// Conversational Assistant in DMS app (CERTH)
//	Food intake
//	Medication intake


//-------------------------------------------------------------------------------------------
* SCT#33747003	// bloodGlucose	Blood Glucose (mg/dL)
* SCT#64075005	// Pulse	Pulse (ang bpm)
* SCT#258158006	// Sleep	Sleep, unit minutes
* SCT#27113001	// Weight	Weight, unit [Kg]
* SCT#713137006	// Stress	Stress, unit {%]
* SCT#50373000	// Height	Height, unit [cm]
* SCT#248365001	// Waist	Waist Circumference, unit [cm]
* SCT#60621009	// BMI	BMI, unit [%]
* SCT#366319001	// Body Fat	Body Fat, unit [%]
* SCT#256668009	// Body Muscle	Body Muscle, unit [%]
* SCT#32457005	// Body Water	Body Water, unit [%]
* SCT#77176002	// Smoking	Smoking Habits [Yes, No]
* SCT#166712009	// Creatine	Creatine, unit [mg/dL]
* SCT#365845005	// HbA1c	HbA1c, unit [%]
* SCT#442166002	// Serum Urea	Serum Urea, unit [mg/dL]
* SCT#767002	// WBC	White blood cell count, unit [number/per mcL of blood]
* SCT#365632008	// PlateletCount	Platelets count, unit [mcL]
* SCT#45896001	// TGO	Aspartate Aminotransferase (AST), unit [U/L]
* SCT#166646003	// TGP	Alanine Aminotransferase (ALT), unit [U/L]
* SCT#121868005	// Cholesterol	Cholesterol, unit [mmol/L]
* SCT#102811001	// Creatinine Clearance	Creatinine Clearance, unit [mg/dL]
* SCT#88878007	// Nutrition Protein	Protein, unit[g]
* SCT#2331003	// NutritionCarbs	Carbohydrates, unit[g]
* SCT#256674009	// NutritionFat	Fat, unit[g]
* SCT#39972003	// NutritionSodium	Sodium, unit[g]
* SCT#74801000	// NutritionSugar	Sugar, unit[g]
* SCT#84698008	// NutritionCholesterol	Cholesterol, unit[g]
* SCT#415945006	// Temperature	Temperature, unit [Celsius]
* SCT#363810004	// BodyComposition	BodyComposition, unit [%]
* SCT#365755003	// UreaLevel	Urea Level, unit [mg/dL]]
* SCT#274769005	// Albuminuria	Albuminuria, unit [mg]
* SCT#14740000	// Triglycerides	Triglycerides, unit [mg/dL]
* SCT#102739008	// LDL	LowDensityLipoproteinCholesterol, unit [mmol/L] 
* SCT#102737005	// HDL	HighDensityLipoproteinCholesterol unit [mmol/L]
* SCT#441689006	// THC	TotalHemoglobinConcentration, unit [mmol/L]
* SCT#34608000	// Tgb	thyroid hormone, unit [mIU/L]
* LOINC#8480-6	// Systolic blood pressure	Systolic blood pressure, unit mm[Hg]
* LOINC#8462-4  // Diastolic blood pressure	Diastolic blood pressure, unit mm[Hg]
* LOINC#55423-8 // Steps	Steps



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLifeStyleFactorGKGR
Id: ValueSet-lifestylefactor-gr-gk
Title: "Life Style Factor - Greece Cyprus (Gatekeeper)"
Description: "Observation Code used by the Greek and Cypriot pilots - Life Style Factor (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#77176002	// Smoking	Smoking Habits [Yes, No]

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsOtherObsCodeGKGR
Id: ValueSet-otherobservations-gr-gk
Title: "Other Observations - Greece Cyprus (Gatekeeper)"
Description: "Observation Code used by the Greek and Cypriot pilots - Other Observations (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#258158006	// Sleep	Sleep, unit minutes

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabResultsCodeGKGR
Id: ValueSet-labresults-gr-gk
Title: "Lab Results - Greece Cyprus (Gatekeeper)"
Description: "Observation Code used by the Greek and Cypriot pilots - Lab Results (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#33747003	// bloodGlucose	Blood Glucose (mg/dL)
* SCT#166712009	// Creatine	Creatine, unit [mg/dL]
* SCT#365845005	// HbA1c	HbA1c, unit [%]
* SCT#442166002	// Serum Urea	Serum Urea, unit [mg/dL]
* SCT#767002	// WBC	White blood cell count, unit [number/per mcL of blood]
* SCT#365632008	// PlateletCount	Platelets count, unit [mcL]
* SCT#45896001	// TGO	Aspartate Aminotransferase (AST), unit [U/L]
* SCT#166646003	// TGP	Alanine Aminotransferase (ALT), unit [U/L]
* SCT#121868005	// Cholesterol	Cholesterol, unit [mmol/L]
* SCT#102811001	// Creatinine Clearance	Creatinine Clearance, unit [mg/dL]
* SCT#365755003	// UreaLevel	Urea Level, unit [mg/dL]]
* SCT#274769005	// Albuminuria	Albuminuria, unit [mg]
* SCT#14740000	// Triglycerides	Triglycerides, unit [mg/dL]
* SCT#102739008	// LDL	LowDensityLipoproteinCholesterol, unit [mmol/L] 
* SCT#102737005	// HDL	HighDensityLipoproteinCholesterol unit [mmol/L]
* SCT#441689006	// THC	TotalHemoglobinConcentration, unit [mmol/L]
* SCT#34608000	// Tgb	thyroid hormone, unit [mIU/L]   
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsVitalSignsGKGR
Id: ValueSet-vitalsigns-gr-gk
Title: "Vital Signs - Greece Cyprus (Gatekeeper)"
Description: "Vital Signs Codes used by the Greek and Cypriot pilots (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#64075005	// Pulse	Pulse (ang bpm)
* SCT#27113001	// Weight	Weight, unit [Kg]
* SCT#50373000	// Height	Height, unit [cm]
* SCT#248365001	// Waist	Waist Circumference, unit [cm]
* SCT#60621009	// BMI	BMI, unit [%]
* SCT#366319001	// Body Fat	Body Fat, unit [%]
* SCT#256668009	// Body Muscle	Body Muscle, unit [%] WRONG CODE ? It s a Skeletal material (substance)
* SCT#32457005	// Body Water	Body Water, unit [%] WRONG CODE ? It s a substance
* SCT#415945006	// Temperature	Temperature, unit [Celsius] Is this the concept to be used ? (Oral temperature)
* SCT#363810004	// BodyComposition	BodyComposition, unit [%] There are several kinds of measure associated which this one .. is 41982-0 (A patient's body fat percentage is the total mass of fat divided by total body mass.)?

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNutritionCodeGKGR
Id: ValueSet-nutrition-gr-gk
Title: "Nutrition (code) - Greece Cyprus - (Gatekeeper)"
Description: "Nutrition Codes used by the Greek and Cypriot pilots (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* SCT#88878007	// Nutrition Protein	Protein, unit[g]
* SCT#2331003	// NutritionCarbs	Carbohydrates, unit[g]
* SCT#256674009	// NutritionFat	Fat, unit[g]
* SCT#39972003	// NutritionSodium	Sodium, unit[g]
* SCT#74801000	// NutritionSugar	Sugar, unit[g]
* SCT#84698008	// NutritionCholesterol	Cholesterol, unit[g]


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsSleepDurationGK
Id: ValueSet-sleepDuration-gk
Title: "Sleep Duration (Gatekeeper)"
Description: "Sleep Duration used by the Gatekeeper Project"
//-------------------------------------------------------------------------------------------

* LOINC#93831-6 // Deep sleep duration [min]
* LOINC#93830-8	// Light sleep duration
* LOINC#93829-0	// REM sleep duration 
* LOINC#93832-4 // Sleep duration