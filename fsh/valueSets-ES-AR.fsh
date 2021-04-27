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


