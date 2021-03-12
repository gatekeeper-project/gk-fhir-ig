Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $loinc = http://loinc.org


Instance: bloodPressure
InstanceOf: Observation
// Id: bldPressure-1
Usage: #example
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
* effectiveDateTime = "2021-01-12T11:17:48.887807025Z"
* device.reference = "Device/2"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity.unit = "mmHg"
* component[0].valueQuantity = 103 'mm[Hg]'
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity = 74 'mm[Hg]'

Instance: bodyWeight
InstanceOf: Observation
// Id: bodyWeight-1
Usage: #example
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* code.text = "Weight Measured"
* effectiveDateTime = "2021-01-12T11:19:03.65350112Z"
* valueQuantity.unit = "kg"
* valueQuantity = 64.7 'kg'
* device.reference = "Device/3"

Instance: heartRate
InstanceOf: Observation
// Id: heartRate-1
Usage: #example
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* code.text = "Heart rate"
* effectiveDateTime = "2021-01-12T11:17:48.887807025Z"
* valueQuantity.unit = "bpm"
* valueQuantity = 66 '{Beats}/min'
* device.reference = "Device/2"