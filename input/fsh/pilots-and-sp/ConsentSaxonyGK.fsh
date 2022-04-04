
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ConsentSaxonyGK
Parent:   Consent
Id:       consent-saxony-gk
Title:    "Consent (Saxony - Gatekeeper)"
Description: "This profile defines how consent is represented in FHIR for supporting the scope of the Gatekeeper project in the Saxony Pilot"
//-------------------------------------------------------------------------------------------
* identifier MS
// * identifier ^example.label = "generic"
* identifier ^example[0].valueIdentifier.value = "http://consentId.myOrg.org/12345"
* status 1.. MS
* scope = $consentscope#research
* category = $loinc#57016-8
* dateTime	1.. MS
* performer	1.. MS
* sourceAttachment MS