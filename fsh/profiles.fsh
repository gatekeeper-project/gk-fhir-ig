//============== ALIAS ===============
Alias: temp_profile = http://hl7.org/fhir/StructureDefinition/bodytemp
Alias: os_profile = http://hl7.org/fhir/StructureDefinition/oxygensat
Alias: bp_profile = http://hl7.org/fhir/StructureDefinition/bp
Alias: hr_profile = http://hl7.org/fhir/StructureDefinition/heartrate
Alias: vs_profile = http://hl7.org/fhir/StructureDefinition/vitalsigns
Alias: ips_result = http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-uv-ips
Alias: ips_Patient = http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips
//=========================

//====== Profiles =====================================


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
Parent:   temp_profile
Id:       Observation-bodytemp-gk
Title:    "Body Temperature (Gatekeeper)"
Description: "This profile defines how to represent Body Temperature observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------

* device MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  OxygenSatGK
Parent:   os_profile
Id:       Observation-oxygensat-gk
Title:    "Oxygen Saturation (Gatekeeper)"
Description: "This profile defines how to represent Oxygen Saturation Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------

* device MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BloodPressureGK
Parent:   bp_profile
Id:       Observation-bp-gk
Title:    "Blood Pressure (Gatekeeper)"
Description: "This profile defines how to represent Blood Pressure Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
* device MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  HeartRateGK
Parent:   hr_profile
Id:       Observation-hr-gk
Title:    "Heart Rate (Gatekeeper)"
Description: "This profile defines how to represent Heart Rate Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
* device MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  BloodGlucoseGK
Parent:   ips_result
Id:       Observation-bloodGlucose-gk
Title:    "Blood Glucose (Gatekeeper)"
Description: "This profile defines how to represent Blood Glucose Profile observations in FHIR using a standard LOINC code and UCUM units of measure."

//-------------------------------------------------------------------------------------------
// * subject only ips_Patient
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  FastingPlasmaGlucoseGK
Parent:   ips_result
Id:       Observation-fpg-gk
Title:    "Fasting plasma glucose (Gatekeeper)"
Description: "This profile defines how to represent Fasting plasma glucose observations in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only ips_Patient
* code from VsFastingPlasmaGlucoseGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  SleepDurationGK
Parent:   ips_result
Id:       Observation-sleepDuration-gk
Title:    "Sleep Duration (Gatekeeper)"
Description: "This profile defines how to represent Sleep Duration Observation in FHIR using a standard LOINC code and UCUM units of measure."
//-------------------------------------------------------------------------------------------
// * subject only ips_Patient
* code from VsSleepDurationGK
* value[x] only Quantity
* value[x] 1..1 MS
* hasMember 0..0