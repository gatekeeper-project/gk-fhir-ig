Profile: PatientGK
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Id: Patient-eu-gk
Title: "Patient (GateKeeper)"
Description: "This profile represents the constraints applied to the Patient resource by the GateKeeper (GK) FHIR Implementation Guide and describes the minimum expectations for the Patient resource when used in the GK composition or in one of the referred resources."
* ^status = #draft
* ^date = "2018-03-20T16:43:56.519+01:00"
* . MS
* identifier MS
* name 1..* MS
* name ^requirements = "Need to be able to track the patient by multiple names. Examples are your official name and a partner name.\r\nThe Alphabetic representation of the name SHALL be always provided"
* name ^constraint[0].key = "GK-pat-1"
* name ^constraint[0].severity = #error
* name ^constraint[0].human = "Patient.name.given  or Patient.name.family or both SHALL be present"
* name ^constraint[0].expression = "family.exists() or given.exists()"
* name ^constraint[0].xpath = "f:given or f:family"
* name.text MS
* name.text ^definition = "Text representation of the full name. Due to the cultural variance around the world a consuming system may not know how to present the name correctly; moreover not all the parts of the name go in given or family. Creators are therefore strongly encouraged to provide through this element a presented version of the name. Future versions of this guide may require this element"
* name.text ^min = 0
* name.family 1..1 MS
* name.given 1.. MS
* telecom MS
* gender 1.. MS
* birthDate MS
* birthDate ^min = 0
* address MS
* address ^constraint[0].key = "pat-cnt-2or3-char"
* address ^constraint[0].severity = #warning
* address ^constraint[0].human = "The content of the country element (if present) SHALL be selected EITHER from ValueSet ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2 OR MAY be selected from ISO Country Alpha-3 Value Set http://hl7.org/fhir/ValueSet/iso3166-1-3, IF the country is not specified in value Set ISO Country Alpha-2 http://hl7.org/fhir/ValueSet/iso3166-1-2."
* address ^constraint[0].expression = "country.empty() or (country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-2') or country.memberOf('http://hl7.org/fhir/ValueSet/iso3166-1-3'))"
* contact MS
* contact ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-explicit-type-name"
* contact ^extension[0].valueString = "Contact"
* contact.relationship only CodeableConcept
* contact.relationship MS
* contact.name MS
* contact.telecom MS
* contact.address MS
* contact.organization MS
* communication MS
* communication.language MS
* communication.language from http://hl7.org/fhir/ValueSet/all-languages (required)
* generalPractitioner MS