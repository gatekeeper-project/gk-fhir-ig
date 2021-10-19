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
* extension[event-location].valueReference only Reference(LocationRoomGk)
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
* valueInteger 1..1 MS // actual measure of the Activity Level
* specimen 0..0

//-- The living Enviroment conditions the measure has been taken
* hasMember 1..* MS
* hasMember only Reference (Observation) or Reference (ObservationLivingEnvironment)


