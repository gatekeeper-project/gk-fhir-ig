

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsObservationGK
Id: ValueSet-observation-eu-gk
Title: "Observation codes (Gatekeeper)"
Description: "Types of Observations captured for the Gatekeeper Project"
//-------------------------------------------------------------------------------------------
* $phenxtoolkit#PX070801190200 "PX070801_Diabetes_Mellitus_Year"
* include codes from valueset VsVitalSignsGK
* include codes from valueset VsLabTestGK
* include codes from valueset VsLabSelfTestGK
* include codes from valueset VsLabTestPercentageGK
* include codes from valueset VsSocialObservationGK
* include codes from valueset VsSleepDurationGK
* include codes from valueset VsStepsGK

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsConditionGK
Id: ValueSet-condition-eu-gk
Title: "Conditions (Gatekeeper)"
Description: "Conditions captured for the Gatekeeper Project"
//-------------------------------------------------------------------------------------------

* $sct#197321007 "Steatosis of liver (disorder)"
* $sct#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* $sct#84114007 "Heart failure (disorder)"
* $sct#13645005 "Chronic obstructive lung disease (disorder)"
* $sct#709044004 "Chronic kidney disease (disorder)"
* $sct#414545008 "Ischemic heart disease (disorder)"




//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsVitalSignsGK
Id: ValueSet-vitalsigns-eu-gk
Title: "Vital Signs (Gatekeeper)"
Description: "Vital Signs captured for the Gatekeeper Project"
//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* include codes from valueset http://hl7.org/fhir/ValueSet/observation-vitalsignresult
* $loinc#41982-0 // Percentage of body fat Measured
* $loinc#8280-0 // Waist Circumference at umbilicus by Tape measure; other measures available

* $loinc#59574-4 // Body mass index (BMI) [Percentile]	
* $loinc#56087-0 // Child Waist Circumference Protocol


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabTestGK
Id: ValueSet-labTest-eu-gk
Title: "Laboratory Test types(Gatekeeper)"
Description: "Laboratory Test types captured for the Gatekeeper Project"
//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"

* $loinc#59261-8 "Hemoglobin A1c/Hemoglobin.total in Blood by IFCC protocol"
* $loinc#2093-3 "Cholesterol [Mass/volume] in Serum or Plasma"
* $loinc#2085-9 "Cholesterol in HDL [Mass/volume] in Serum or Plasma"
* $loinc#2089-1 "Cholesterol in LDL [Mass/volume] in Serum or Plasma"
* $loinc#2571-8 "Triglyceride [Mass/volume] in Serum or Plasma"
* $loinc#43396-1 "Cholesterol non HDL [Mass/volume] in Serum or Plasma"
* $loinc#2160-0 "Creatinine [Mass/volume] in Serum or Plasma"
* $loinc#14959-1 "Microalbumin/Creatinine [Mass Ratio] in Urine"
* $loinc#1742-6 "Alanine aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* $loinc#1920-8 "Aspartate aminotransferase [Enzymatic activity/volume] in Serum or Plasma"
* $loinc#2324-2 "Gamma glutamyl transferase [Enzymatic activity/volume] in Serum or Plasma"
* $loinc#6768-6 "Alkaline phosphatase [Enzymatic activity/volume] in Serum or Plasma"
* $loinc#3084-1 "Urate [Mass/volume] in Serum or Plasma"
* $loinc#48642-3 "Glomerular filtration rate/1.73 sq M.predicted among non-blacks [Volume Rate/Area] in Serum, Plasma or Blood by Creatinine-based formula (MDRD)"
* $loinc#5802-4 "Nitrite [Presence] in Urine by Test strip"
* include codes from valueset http://hl7.eu/fhir/ig/gk/ValueSet/ValueSet-labTestPercentage-eu-gk
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabSelfTestGK
Id: ValueSet-labSelfTest-eu-gk
Title: "Laboratory Self Test types(Gatekeeper)"
Description: "Laboratory Self Test types captured for the Gatekeeper Project"
//-------------------------------------------------------------------------------------------
* include codes from valueset http://hl7.eu/fhir/ig/gk/ValueSet/ValueSet-labTestPercentage-eu-gk
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsLabTestPercentageGK
Id: ValueSet-labTestPercentage-eu-gk
Title: "Laboratory Test types percentage results (Gatekeeper)"
Description: "Laboratory Self Test types captured for the Gatekeeper Project having as results percentages"
//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* $loinc#20570-8 // Hematocrit [Volume Fraction] of Blood
* $loinc#4548-4	// Hemoglobin A1c/Hemoglobin.total in Blood
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsFastingGlucoseBloodGK
Id: ValueSet-fastingGlucoseBlood-eu-gk
Title: "Fasting glucose blood [mg/dL] (Gatekeeper)"
Description: "LOINC codes used for capturing Fasting glucose in blood [mg/dL]"
// restricted to Mass Volume
//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* $loinc#1557-8 // Fasting glucose [Mass/volume] in Venous blood [mg/dL]
* $loinc#1556-0 // Fasting glucose [Mass/volume] in Capillary blood [mg/dL]
* $loinc#41604-0 // Fasting glucose [Mass/volume] in Capillary blood by Glucometer [mg/dL]

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsFastingPlasmaGlucoseGK
Id: ValueSet-fastingPlasmaGlucose-eu-gk
Title: "Fasting Plasma Glucose [mg/dL] (Gatekeeper)"
Description: "LOINC codes used for capturing Fasting Plasma Glucose [mg/dL]"
// restricted to Mass Volume
//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* $loinc#1493-6   // Glucose [Mass/volume] in Serum or Plasma --1.5 hours post 0.05-0.15 U insulin/kg IV 12 hours fasting
* $loinc#10450-5  // Glucose [Mass/volume] in Serum or Plasma --10 hours fasting
* $loinc#1554-5	// Glucose [Mass/volume] in Serum or Plasma --12 hours fasting
* $loinc#17865-7	// Glucose [Mass/volume] in Serum or Plasma --8 hours fasting
* $loinc#1558-6  // Fasting glucose [Mass/volume] in Serum or Plasma
* $loinc#35184-1	// Fasting glucose [Mass or Moles/volume] in Serum or Plasma
* $loinc#1500-8	// Glucose [Mass/volume] in Serum or Plasma --1 hour post 0.05-0.15 U insulin/kg IV post 12H CFst
* $loinc#1523-0 // Glucose [Mass/volume] in Serum or Plasma --30 minutes post 0.05-0.15 U insulin/kg IV post 12H CFst
* $loinc#1550-3	// Glucose [Mass/volume] in Serum or Plasma --pre 12 hour fast


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsGatekeeper
Id: gatekeeper
Title: "Gatekeeper internal Code System"
Description: "Gatekeeper internal Code System"
//-------------------------------------------------------------------------------------------
* #people-living	"People living" "People living"
* #mys-activity-level "Activity Level [counts]" "Activity Level as measured by the My Sphera device"
* #liv-environment "Living Environment Observations" "Observations about the environment where the subject lives."
* #floor-climbed "Floors climbed" "Floors climbed. A floor is 3 meters."


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsRoomObservationGK
Id: ValueSet-roomObservation-gk
Title: "Room related observation (Gatekeeper)"
Description: "Room related observation (Gatekeeper)"
//-------------------------------------------------------------------------------------------

// * $loinc#20053-5	"Atmospheric pressure mm[Hg]"
* $loinc#76268-2    "Pressure.ambient Room"
* $loinc#60832-3	"Room temperature Cel;[degF]"
* $loinc#65643-9	"Relative humidity (%)"

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsSocialObservationGK
Id: ValueSet-socialObservation-gk
Title: "Social History Observation (Gatekeeper)"
Description: "Social History Observation (Gatekeeper)"
//-------------------------------------------------------------------------------------------

* $loinc#63597-9 "During the past 30 days, on how many days did you drink one or more drinks of an alcoholic beverage"
* CsGatekeeper#people-living
* $loinc#73985-4 "Exercise activity"
* $loinc#72166-2 "Tobacco smoking status"
* $loinc#96103-7 "Tobacco amount per day"
* $loinc#63629-0 "On the number of days you reported you smoked cigarettes during the past 30 days, how many cigarettes did you smoke per day, on average [PhenX]"


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsStepsGK
Id: ValueSet-steps-gk
Title: "Number of steps (Gatekeeper)"
Description: "LOINC codes used by the Gatekeeper Project for indicating number of steps measures"
//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* $loinc#41952-3  // Number of steps in 1 week Measured
* $loinc#41950-7 // Number of steps in 24 hour Measured
* $loinc#41951-5 // Number of steps in 24 hour mean Measured
* $loinc#55423-8 // Number of steps in unspecified time Pedometer


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsSleepDurationGK
Id: ValueSet-sleepDuration-gk
Title: "Sleep Duration (Gatekeeper)"
Description: "Sleep Duration used by the Gatekeeper Project"
//-------------------------------------------------------------------------------------------
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* $loinc#93831-6 // Deep sleep duration [min]
* $loinc#93830-8	// Light sleep duration
* $loinc#93829-0	// REM sleep duration 
* $loinc#93832-4 // Sleep duration