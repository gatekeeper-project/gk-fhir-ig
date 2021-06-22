Instance: bloodPressure
InstanceOf: Observation
Usage: #example
* contained[0] = dev-2
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
* subject.reference = "Patient/pat-1"
* subject.display = "Alexander Heig"
* effectiveDateTime = "2021-01-12T11:17:48.000088Z"
* device.reference = "#dev-2"
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[0].valueQuantity = 103 'mm[Hg]'
* component[0].valueQuantity.unit = "mm[Hg]"
* component[1].code = $loinc#8462-4 "Diastolic blood pressure"
* component[1].valueQuantity = 74 'mm[Hg]'
* component[1].valueQuantity.unit = "mm[Hg]"

Instance: bodyWeight
InstanceOf: Observation
Usage: #example
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body weight"
* code.text = "Weight Measured"
* subject.reference = "Patient/pat-1"
* subject.display = "Alexander Heig"
* effectiveDateTime = "2021-01-12T11:19:03.000065Z"
* valueQuantity = 64.7 'kg'
* valueQuantity.unit = "kg"

Instance: heartRate
InstanceOf: Observation
Usage: #example
* contained[0] = dev-1
* status = #final
* category[0] = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* code.text = "Heart rate"
* subject.reference = "Patient/pat-1"
* subject.display = "Alexander Heig"
* effectiveDateTime = "2021-01-12T11:17:48.000088Z"
* valueQuantity = 66 '/min'
* valueQuantity.unit = "beats per min"
* device.reference = "#dev-1"

Instance: dev-2
InstanceOf: Device
Usage: #inline
* identifier[0].system = "http://goodcare.org/devices/id"
* identifier[0].value = "987654"

Instance: dev-1
InstanceOf: Device
Usage: #inline
* identifier[0].system = "http://goodcare.org/devices/id"
* identifier[0].value = "345675"