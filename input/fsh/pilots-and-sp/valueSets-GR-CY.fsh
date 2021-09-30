//============== ALIAS ===============
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
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.
This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"

* $sct#33747003	// bloodGlucose	Blood Glucose (mg/dL)
* $sct#258158006	// Sleep	Sleep, unit minutes
* $sct#27113001	// Weight	Weight, unit [Kg]
* $sct#713137006	// Stress	Stress, unit {%]
* $sct#50373000	// Height	Height, unit [cm]
* $sct#248365001	// Waist	Waist Circumference, unit [cm]
* $sct#60621009	// BMI	BMI, unit [%]
* $sct#366319001	// Body Fat	Body Fat, unit [%]
* $sct#256668009	// Body Muscle	Body Muscle, unit [%]
* $sct#32457005	// Body Water	Body Water, unit [%]
* $sct#77176002	// Smoking	Smoking Habits [Yes, No]
* $sct#166712009	// Creatine	Creatine, unit [mg/dL]
* $sct#365845005	// HbA1c	HbA1c, unit [%]
* $sct#442166002	// Serum Urea	Serum Urea, unit [mg/dL]
* $sct#767002	// WBC	White blood cell count, unit [number/per mcL of blood]
* $sct#365632008	// PlateletCount	Platelets count, unit [mcL]
* $sct#45896001	// TGO	Aspartate Aminotransferase (AST), unit [U/L]
* $sct#166646003	// TGP	Alanine Aminotransferase (ALT), unit [U/L]
* $sct#121868005	// Cholesterol	Cholesterol, unit [mmol/L]
* $sct#102811001	// Creatinine Clearance	Creatinine Clearance, unit [mg/dL]
* $sct#88878007	// Nutrition Protein	Protein, unit[g]
* $sct#2331003	// NutritionCarbs	Carbohydrates, unit[g]
* $sct#256674009	// NutritionFat	Fat, unit[g]
* $sct#39972003	// NutritionSodium	Sodium, unit[g]
* $sct#74801000	// NutritionSugar	Sugar, unit[g]
* $sct#84698008	// NutritionCholesterol	Cholesterol, unit[g]
* $sct#415945006	// Temperature	Temperature, unit [Celsius]
* $sct#363810004	// BodyComposition	BodyComposition, unit [%]
* $sct#365755003	// UreaLevel	Urea Level, unit [mg/dL]]
* $sct#274769005	// Albuminuria	Albuminuria, unit [mg]
* $sct#14740000	// Triglycerides	Triglycerides, unit [mg/dL]
* $sct#102739008	// LDL	LowDensityLipoproteinCholesterol, unit [mmol/L] 
* $sct#102737005	// HDL	HighDensityLipoproteinCholesterol unit [mmol/L]
* $sct#441689006	// THC	TotalHemoglobinConcentration, unit [mmol/L]
* $sct#34608000	// Tgb	thyroid hormone, unit [mIU/L]
* $loinc#8480-6	// Systolic blood pressure	Systolic blood pressure, unit mm[Hg]
* $loinc#8462-4  // Diastolic blood pressure	Diastolic blood pressure, unit mm[Hg]
* $loinc#55423-8 // Steps	Steps



//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLifeStyleFactorGKGR
Id: ValueSet-lifestylefactor-gr-gk
Title: "Life Style Factor - Greece Cyprus (Gatekeeper)"
Description: "Observation Code used by the Greek and Cypriot pilots - Life Style Factor (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#77176002	// Smoking	Smoking Habits [Yes, No]

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsOtherObsCodeGKGR
Id: ValueSet-otherobservations-gr-gk
Title: "Other Observations - Greece Cyprus (Gatekeeper)"
Description: "Observation Code used by the Greek and Cypriot pilots - Other Observations (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#258158006	// Sleep	Sleep, unit minutes

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabResultsCodeGKGR
Id: ValueSet-labresults-gr-gk
Title: "Lab Results - Greece Cyprus (Gatekeeper)"
Description: "Observation Code used by the Greek and Cypriot pilots - Lab Results (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#33747003	// bloodGlucose	Blood Glucose (mg/dL)
* $sct#166712009	// Creatine	Creatine, unit [mg/dL]
* $sct#365845005	// HbA1c	HbA1c, unit [%]
* $sct#442166002	// Serum Urea	Serum Urea, unit [mg/dL]
* $sct#767002	// WBC	White blood cell count, unit [number/per mcL of blood]
* $sct#365632008	// PlateletCount	Platelets count, unit [mcL]
* $sct#45896001	// TGO	Aspartate Aminotransferase (AST), unit [U/L]
* $sct#166646003	// TGP	Alanine Aminotransferase (ALT), unit [U/L]
* $sct#121868005	// Cholesterol	Cholesterol, unit [mmol/L]
* $sct#102811001	// Creatinine Clearance	Creatinine Clearance, unit [mg/dL]
* $sct#365755003	// UreaLevel	Urea Level, unit [mg/dL]]
* $sct#274769005	// Albuminuria	Albuminuria, unit [mg]
* $sct#14740000	// Triglycerides	Triglycerides, unit [mg/dL]
* $sct#102739008	// LDL	LowDensityLipoproteinCholesterol, unit [mmol/L] 
* $sct#102737005	// HDL	HighDensityLipoproteinCholesterol unit [mmol/L]
* $sct#441689006	// THC	TotalHemoglobinConcentration, unit [mmol/L]
* $sct#34608000	// Tgb	thyroid hormone, unit [mIU/L]   
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsVitalSignsGKGR
Id: ValueSet-vitalsigns-gr-gk
Title: "Vital Signs - Greece Cyprus (Gatekeeper)"
Description: "Vital Signs Codes used by the Greek and Cypriot pilots (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
// * $sct#64075005	// Pulse	Pulse (ang bpm)
* $sct#27113001	// Weight	Weight, unit [Kg]
* $sct#50373000	// Height	Height, unit [cm]
* $sct#248365001	// Waist	Waist Circumference, unit [cm]
* $sct#60621009	// BMI	BMI, unit [%]
* $sct#366319001	// Body Fat	Body Fat, unit [%]
* $sct#256668009	// Body Muscle	Body Muscle, unit [%] WRONG CODE ? It s a Skeletal material (substance)
* $sct#32457005	// Body Water	Body Water, unit [%] WRONG CODE ? It s a substance
* $sct#415945006	// Temperature	Temperature, unit [Celsius] Is this the concept to be used ? (Oral temperature)
* $sct#363810004	// BodyComposition	BodyComposition, unit [%] There are several kinds of measure associated which this one .. is 41982-0 (A patient's body fat percentage is the total mass of fat divided by total body mass.)?

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsNutritionCodeGKGR
Id: ValueSet-nutrition-gr-gk
Title: "Nutrition (code) - Greece Cyprus - (Gatekeeper)"
Description: "Nutrition Codes used by the Greek and Cypriot pilots (Gatekeeper Project)"
//-------------------------------------------------------------------------------------------
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* $sct#88878007	// Nutrition Protein	Protein, unit[g]
* $sct#2331003	// NutritionCarbs	Carbohydrates, unit[g]
* $sct#256674009	// NutritionFat	Fat, unit[g]
* $sct#39972003	// NutritionSodium	Sodium, unit[g]
* $sct#74801000	// NutritionSugar	Sugar, unit[g]
* $sct#84698008	// NutritionCholesterol	Cholesterol, unit[g]


