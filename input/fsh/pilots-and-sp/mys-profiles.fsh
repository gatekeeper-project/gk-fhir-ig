/*==========================================
Profiles specified data produced by My Sphera Devices
===========================================*/


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationActivityLevelMySphera
Parent:   Observation 
Id:       Observation-activity-mys-gk
Title:    "Observation Activity Level - MySphera (Gatekeeper)"
Description: "This profile defines how to represent Activity Levels in FHIR as captured by the My Sphera device for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

* extension contains $event-location named event-location 1..1 MS
* extension[event-location].valueReference only Reference(LocationRoomMySphera)
* category = $observation-category#activity
* category 1..1 MS
* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsGatekeeper#mys-activity-level	"Activity Level [counts]"
* subject	1..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
* effective[x]	MS
* valueInteger 1..1 MS // actual measure
* specimen 0..0
* hasMember 1..* MS
* hasMember only Reference (Observation) or Reference (ObservationRoomConditionsMySphera)

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationRoomConditionsMySphera
Parent:   Observation 
Id:       Observation-room-mys-gk
Title:    "Observation Room Conditions - MySphera (Gatekeeper)"
Description: "This profile defines how to represent Room Conditions (Humidity, Temperature) in FHIR as captured by the My Sphera devices for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------

/*====
// 20053-5	Atmospheric pressure			mm[Hg]
76268-2 Pressure.ambient Room
60832-3	Room temperature			Cel;[degF]
65643-9	Relative humidity (%)			%
===*/

* extension contains $event-location named event-location 1..1 MS
* extension[event-location].valueReference only Reference(LocationRoomMySphera)
* category = CsGatekeeper#liv-environment "Living Environment Observations"
* category 1..1 MS
* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code from VsRoomObservationGK (extensible)
* subject	1..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
* effective[x]	MS
// * value[x] 1.. MS
* valueQuantity 1.. MS // actual measure
* specimen 0..0

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  LocationRoomMySphera
Parent:   Location 
Id:       Location-room-mys-gk
Title:    "Location - MySphera (Gatekeeper)"
Description: "This profile defines how to represent in FHIR the room where activity measures are taken;  as captured by the My Sphera devices for the scope of the Gatekeeper project"
//-------------------------------------------------------------------------------------------
* identifier 1.. MS
* physicalType = $location-physical-type#ro
