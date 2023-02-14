Instance: GenericRiskCalculation
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.eu/fhir/ig/gk/OperationDefinition/GenericRiskCalculation"
* name = "GenericRiskCalculationOperation"
* title = "Generic risk calculation operation"
* status = #draft
* kind = #operation
* date = "2023-02-13"
* publisher = "Gatekeeper Project"
// * contact.name = "System Administrator"
// * contact.telecom.system = #email
// * contact.telecom.value = "beep@coyote.acme.com"
* description = "Example of OperationDefinition (generic risk calculation operation)"
// * useContext.code = $codesystem-usage-context-type#venue "Clinical Venue"
// * useContext.valueCodeableConcept = $v3-ActCode#IMP "inpatient encounter"
// * jurisdiction = urn:iso:std:iso:3166#GB "United Kingdom of Great Britain and Northern Ireland (the)"
* code = #calculateRisk
* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* system = true
* type = false
* instance = false
/* * inputProfile[+] = 	"http://hl7.org/fhir/StructureDefinition/Observation"
* inputProfile[+] = 	"http://hl7.org/fhir/StructureDefinition/Condition" */
* outputProfile = "http://hl7.eu/fhir/ig/gk/StructureDefinition/riskAssessment-gk" 
* parameter[0].name = #observation
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Observation describing a measure (e.g.blood pressure)"
* parameter[=].type = #Observation
* parameter[+].name = #condition
* parameter[=].use = #in
* parameter[=].min = 0
* parameter[=].max = "*"
* parameter[=].documentation = "Patient Condition (e.g.hyperthension)"
* parameter[=].type = #Condition
* parameter[+].name = #risk
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Prediction of exacerbations for people with COPD, heart failure or polymedicated people"
* parameter[=].type = #RiskAssessment



Instance: RiskCalculation
InstanceOf: OperationDefinition
Usage: #definition
* url = "http://hl7.eu/fhir/ig/gk/OperationDefinition/RiskCalculation"
* name = "RiskCalculationOperation"
* title = "Risk Calculation"
* status = #draft
* kind = #operation
* date = "2021-06-22"
* publisher = "Gatekeeper Project"
// * contact.name = "System Administrator"
// * contact.telecom.system = #email
// * contact.telecom.value = "beep@coyote.acme.com"
* description = "Example of OperationDefinition (risk calculation based on blood pressure values)"
// * useContext.code = $codesystem-usage-context-type#venue "Clinical Venue"
// * useContext.valueCodeableConcept = $v3-ActCode#IMP "inpatient encounter"
// * jurisdiction = urn:iso:std:iso:3166#GB "United Kingdom of Great Britain and Northern Ireland (the)"
* code = #calculateRisk
* comment = "This is just an example created for showing how the operationDefintion may be used for the scope of the Gatekeeper project"
* base = Canonical(GenericRiskCalculation)
* system = true
* type = false
* instance = false
// * inputProfile = 	"http://hl7.eu/fhir/ig/gk/StructureDefinition/Observation-bp-gk"
* outputProfile = "http://hl7.eu/fhir/ig/gk/StructureDefinition/riskAssessment-gk"
* parameter[0].name = #bloodPressure
* parameter[=].use = #in
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "The Observation documenting the blood pressure"
* parameter[=].type = #Observation
* parameter[=].extension[$operationdefinition-profile].valueUri = "http://hl7.eu/fhir/ig/gk/StructureDefinition/Observation-bp-gk"
* parameter[+].name = #risk
* parameter[=].use = #out
* parameter[=].min = 1
* parameter[=].max = "1"
* parameter[=].documentation = "Prediction of exacerbations for people with COPD, heart failure or polymedicated people"
* parameter[=].type = #RiskAssessment