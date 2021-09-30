/*==========================================
Profiles specified data produced by SENSE4CARE Devices
===========================================*/
             

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsObservationIntegerS4c
Id: ValueSet-observationinteger-s4c
Title: "Observation Integer Measures - SENSE4CARE (Gatekeeper)"
Description: "Observation Code used by SENSE4CARE device in the GATEKEEPER project for Integer measures (num of events)"
//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
* CsGatekeeper#s4c-nEvent			"Number of events (medication intakes) at current day"
* CsGatekeeper#s4c-nFOG				"Number of FoG  episodes at current day"                
* CsGatekeeper#s4c-nFalls			"Number of falls at current day" 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationhoursDyskS4c
Parent:   Observation 
Id:       Observation-hoursDysk-s4c-gk
Title:    "Observation Total hours of dyskinesia - SENSE4CARE (Gatekeeper)"
Description: "This profile defines how to represent Total hours of dyskinesia in FHIR as captured by the SENSE4CARE device for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

* category = $observation-category#activity
* category 1..1 MS
* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsGatekeeper#s4c-hoursDysk // "Total hours of dyskinesia at current day"
* subject	1..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* subject.identifier MS
* issued 1..1 MS
// * device 0.. MS
// * device only Reference(Device)
* effective[x] 1..1 MS
* effective[x] only Timing
* effectiveTiming.repeat.duration 1..1 MS
* effectiveTiming.repeat.durationUnit 1..1 MS
* effectiveTiming.repeat.durationUnit = #h
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity.code 1..1 MS 
* valueQuantity.code = #h
* valueQuantity.system 1..1 MS 
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.value 1..1 MS
* specimen 0..0
* component 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationNumEventS4c
Parent:   Observation 
Id:       Observation-nEvent-s4c-gk
Title:    "Observation number of events - SENSE4CARE (Gatekeeper)"
Description: "This profile defines how to represent the number of events measurement (e.g. Med Intakes; Number of falls) in FHIR as captured by the SENSE4CARE device for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

* category = $observation-category#activity
* category 1..1 MS
* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code from VsObservationIntegerS4c
* subject	1..1 MS
* issued 1..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* subject.identifier MS
// * device 0.. MS
// * device only Reference(Device)
* effective[x] 1..1 MS
* effective[x] only Timing
* effectiveTiming.repeat.duration 1..1 MS
* effectiveTiming.repeat.durationUnit 1..1 MS
* effectiveTiming.repeat.durationUnit = #h
* value[x] 1..1 MS
* value[x] only integer 
* specimen 0..0
* component 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationOnOffS4c
Parent:   Observation 
Id:       Observation-OnOff-s4c-gk
Title:    "Observation On, Off and Intermediate Total Hours - SENSE4CARE (Gatekeeper)"
Description: "This profile defines how to represent On, Off and Intermediate Total Hours measures in FHIR as captured by the SENSE4CARE device for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

* category = $observation-category#activity
* category 1..1 MS
* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsGatekeeper#s4c-hoursOnOffInt	// "Total hours of On, Off and intermediate Hours, Panel"	
* subject	1..1 MS
* issued 1..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* subject.identifier MS
// * device 0.. MS
// * device only Reference(Device)
* effective[x] 1..1 MS
* effective[x] only Timing
* effectiveTiming.repeat.duration 1..1 MS
* effectiveTiming.repeat.durationUnit 1..1 MS
* effectiveTiming.repeat.durationUnit = #h
* value[x] 1..1 MS 
* value[x] only integer 
* specimen 0..0

* component 3..3 MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #closed
* component ^short = "Components composing the Total hours panel"
* component ^definition = "The root of the components that make up the the Total hours panel observation."
* component contains 
		s4c-hoursINT 1..1 // "Total hours of intermediate at current day"  
	and s4c-hoursOFF 1..1 // "Total OFF hours at current day"              
	and s4c-hoursON	 1..1 // "Total ON hours at current day"               
	
* component[s4c-hoursINT] ^short = "Total hours of intermediate at current day"
* component[s4c-hoursOFF] ^short = "Total OFF hours at current day"              
*  component[s4c-hoursON] ^short = "Total ON hours at current day"               
	
* component[s4c-hoursINT].code = CsGatekeeper#s4c-hoursINT	// "Total hours of intermediate at current day"
* component[s4c-hoursOFF].code = CsGatekeeper#s4c-hoursOFF  // "Total OFF hours at current day"            
*  component[s4c-hoursON].code = CsGatekeeper#s4c-hoursON	// "Total ON hours at current day"             
	
* component[s4c-hoursINT].code MS
* component[s4c-hoursOFF].code MS
*  component[s4c-hoursON].code MS
	
* component[s4c-hoursINT].value[x] only Quantity
* component[s4c-hoursOFF].value[x] only Quantity
*  component[s4c-hoursON].value[x] only Quantity

* component[s4c-hoursINT].value[x] 1..1 MS
* component[s4c-hoursOFF].value[x] 1..1 MS
*  component[s4c-hoursON].value[x] 1..1 MS
	
* component[s4c-hoursINT].valueQuantity.code 1..1 MS
* component[s4c-hoursOFF].valueQuantity.code 1..1 MS
*  component[s4c-hoursON].valueQuantity.code 1..1 MS

* component[s4c-hoursINT].valueQuantity.code = #h
* component[s4c-hoursOFF].valueQuantity.code = #h
*  component[s4c-hoursON].valueQuantity.code = #h

* component[s4c-hoursINT].valueQuantity.system 1..1 MS 
* component[s4c-hoursOFF].valueQuantity.system 1..1 MS 
*  component[s4c-hoursON].valueQuantity.system 1..1 MS 

* component[s4c-hoursINT].valueQuantity.system = "http://unitsofmeasure.org" 
* component[s4c-hoursOFF].valueQuantity.system = "http://unitsofmeasure.org" 
*  component[s4c-hoursON].valueQuantity.system = "http://unitsofmeasure.org" 

* component[s4c-hoursINT].valueQuantity.value 1..1 MS 
* component[s4c-hoursOFF].valueQuantity.value 1..1 MS 
*  component[s4c-hoursON].valueQuantity.value 1..1 MS 