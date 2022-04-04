//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConsentGrGK
Parent:   Consent
Id:       consent-gr-gk
Title:    "Consent (Greece - Gatekeeper)"
Description: "This profile defines how consent is represented in FHIR for supporting the scope of the Gatekeeper project in the Greek Pilot"
// 
//-------------------------------------------------------------------------------------------
* identifier MS
// * identifer ^example.label = "generic"
* identifier ^example[0].valueIdentifier.value = "http://consentId.myOrg.org/12345"
* status 1.. MS
* scope 1.. MS
* patient MS
* source[x] MS