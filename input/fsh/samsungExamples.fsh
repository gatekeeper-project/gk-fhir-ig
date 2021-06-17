Instance: gk-pat-smg-001
InstanceOf: Patient
Usage: #example
* identifier.system = "http://hl7.eu/fhir/ig/gk/identifier/saxony/patient"
* identifier.value = "user1@saxony.gatekeeper.com"

Instance: floorsClimbed
InstanceOf: Observation
Usage: #example
* code = CsGatekeeper#floor-climbed "Floors climbed"
* device.display = "PZqlc5hsYv saxony"
* device.identifier.system = "http://www.gatekeeper-project.eu/identifier/saxony/samsung/device"
* device.identifier.value = "PZqlc5hsYv"
* effectiveDateTime = "2020-10-23T09:44:09+00:00"
* status = #preliminary
* subject = Reference(gk-pat-smg-001) "user1@saxony.gatekeeper.com"
* valueQuantity = 1 http://unitisofmeasure.org/#{floor} "floors"


Instance: glucoseBlood
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#15074-8 "Glucose [Moles/volume] in Blood"
* subject = Reference(gk-pat-smg-001)
* effectiveDateTime = "2021-05-23T09:30:10+01:00"
* valueQuantity = 6.3 'mmol/L' "mmol/l"

Instance: glucoseBloodTimeEvent
InstanceOf: Observation
Usage: #example
* status = #final
* code = $loinc#15074-8 "Glucose [Moles/volume] in Blood"
* subject = Reference(gk-pat-smg-001)
* effectiveTiming.event = "2021-05-25T09:27:10+01:00"
* effectiveTiming.code = https://developer.samsung.com/health/server/partner-only/api-reference/data-types/blood-glucose.html#80002 "Measurement taken after a meal."
* valueQuantity = 4.5 'mmol/L' "mmol/l"
