//============== ALIAS ===============



//====== Code System =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsAbacus
Id: abacus
Title: "Ab.Acus SpeakApp temporary Code System"
Description: "Ab.Acus SpeakApp temporary Code System. Proper codes will be identified."
//-------------------------------------------------------------------------------------------
// ^url = https://www.ab-acus.eu/sid/speakapp
* ^status = #draft
* #fluency	"Verbal Fluency Panel" "Verbal Fluency Panel"
* #wordCountPanel "Word Count Panel" "Word Count Panel"
* #phonationSilence "Phonation vs Silence Panel"

* #wordCount	"Number of Words" "Number of Words"
* #correctWords "Number of Correct Words" "Number of Correct Words"
* #numOfErrors "Number of errors" "Number of errors"

* #duration 	"Duration of the measure"	"Duration of the measure"
* #phonation 	"Duration of the phonation" "Duration of the phonation"
* #silence  	"Duration of the silence"   "Duration of the silence"

* #mean_intraword_time "Mean intraword time" "Mean intraword time"
* #shifts_number "Shifts Number" "Shifts Number"
* #cluster_numbers "Cluster Number" "Cluster Number"
* #mean_cluster_size "Mean cluster size" "Mean cluster size"

* #audioQuality "Audio Quality measurements" "Audio Quality measurements"

* #mean_f0 	"Mean fundamental frequency"		"Mean fundamental frequency"
* #stdev_f0 "Average standard deviation of F0"  "Average standard deviation of F0"
* #hnr 		"Harmonic to Noise Ratio"           "Harmonic to Noise Ratio"
* #jitter	"Jitter"                            "Jitter"
* #shimmer	"Shimmer"                           "Shimmer"


//====== Profiles =====================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationVerbalFluencyPanel
Parent:   Observation 
Id:       Observation-verbalFluencyPanel-abacus-gk
Title:    "Observation Verbal Fluency panel (Ab.Acus Gatekeeper)"
Description: "This profile defines how to represent Verbal Fluency panel (SpeakApp) observations in FHIR for the scope of the Gatekeeper project. This version uses temporary codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#fluency	// Verbal Fluency Panel
* subject	0..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS
* value[x] 0..0

* hasMember 1.. MS
* hasMember only Reference (Observation)
* hasMember ^slicing.discriminator[0].type = #profile
* hasMember ^slicing.discriminator[0].path = "$this.resolve()"
* hasMember ^slicing.ordered = false
* hasMember ^slicing.rules = #closed
* hasMember ^short = "Members composing the Verbal Fluency Panel"
* hasMember ^definition = "The root of the members that make up the the Verbal Fluency Panel observation."
* hasMember contains   wordCountPanel 0..1
//	and someMeasure 0..1
	and phonationSilence 0..1
//	and audioMeasures 0..1

* hasMember[wordCountPanel] ^short = "Word Count results"
* hasMember[phonationSilence] ^short = "Exercise aerobic category"			

* hasMember[wordCountPanel] only Reference(ObservationWordResults)	 // Word Count results
* hasMember[phonationSilence] only Reference(ObservationPhonationSilence)	// Phonation Silence measures

* component 0..


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationWordResults
Parent:   Observation 
Id:       Observation-WordResults-abacus-gk
Title:    "Observation Word Count results (Ab.Acus Gatekeeper)"
Description: "This profile defines how to represent Word Count results with observations in FHIR for the scope of the Gatekeeper project. These results are used in several SpeakApp tests. This version uses temporary codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#wordCountPanel	// Verbal Fluency Panel
* subject	0..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS
* value[x] 0..0

* component 1.. MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Word Count results"
* component ^definition = "The root of the components that make up the Word Count results observation."
* component contains   wordCount 0..1 
	and correctWords  0..1
	and wrongWords  0..1

* component[wordCount] ^short = "Number of Words"
* component[wordCount].code  = CsAbacus#wordCount	 // Number of Words 
* component[wordCount].code MS
* component[wordCount].value[x] only integer
* component[wordCount].valueInteger MS

* component[correctWords] ^short = "Number of Correct Words"
* component[correctWords].code =  CsAbacus#correctWords	// Correct Words 
* component[correctWords].code MS
* component[correctWords].value[x] only integer
* component[correctWords].valueInteger MS


* component[wrongWords] ^short = "Number of errors"
* component[wrongWords].code =  CsAbacus#numOfErrors	// Number of errors 
* component[wrongWords].code MS
* component[wrongWords].value[x] only integer
* component[wrongWords].valueInteger MS


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationPhonationSilence
Parent:   Observation 
Id:       Observation-PhonationSilence-abacus-gk
Title:    "Observation Phonation vs Silence measurements (Ab.Acus Gatekeeper)"
Description: "This profile defines how to represent Phonation vs Silence measurement with observations in FHIR for the scope of the Gatekeeper project.This version uses temporary codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#phonationSilence // "Phonation vs Silence Panel"
* subject	0..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS
* value[x] 0..0

* component 1.. MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Phonation vs Silence measurements"
* component ^definition = "The root of the components that make up the Phonation vs Silence measurements observation."
* component contains   duration 0..1 
	and phonation  0..1
	and silence  0..1

* component[duration] ^short = "Duration of test"
* component[duration].code  = CsAbacus#duration	 
* component[duration].code MS
* component[duration].value[x] only Quantity
* component[duration].valueQuantity MS
// add units

* component[phonation] ^short = "Duration of the phonation"
* component[phonation].code =  CsAbacus#phonation
* component[phonation].code MS
* component[phonation].value[x] only Quantity
* component[phonation].valueQuantity MS
// add units

* component[silence] ^short = "Duration of the silence"
* component[silence].code =  CsAbacus#silence
* component[silence].code MS
* component[silence].value[x] only Quantity
* component[silence].valueQuantity MS
// add units

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationWordCluster
Parent:   Observation 
Id:       Observation-WordCluster-abacus-gk
Title:    "Observation Word Cluster measurements (Ab.Acus Gatekeeper)"
Description: "This profile defines how to represent Word Cluster measurement with observations in FHIR for the scope of the Gatekeeper project. This version uses temporary codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#wordCluster // "Word Cluster Panel"
* subject	0..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS
* value[x] 0..0


* component 1.. MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Word Cluster measurements"
* component ^definition = "The root of the components that make up the Word Cluster measurements observation."
* component contains   mean_intraword_time 0..1 
	and shifts_number  0..1
	and cluster_numbers  0..1
	and mean_cluster_size 0..1

* component[mean_intraword_time] ^short = "Mean intraword time"
* component[mean_intraword_time].code  = CsAbacus#mean_intraword_time	 
* component[mean_intraword_time].code MS
* component[mean_intraword_time].value[x] only Quantity
* component[mean_intraword_time].valueQuantity MS
// add units

* component[shifts_number] ^short = "Shifts Number"
* component[shifts_number].code =  CsAbacus#shifts_number
* component[shifts_number].code MS
* component[shifts_number].value[x] only integer
* component[shifts_number].valueInteger MS

* component[cluster_numbers] ^short = "Cluster Number"
* component[cluster_numbers].code =  CsAbacus#cluster_numbers
* component[cluster_numbers].code MS
* component[cluster_numbers].value[x] only integer
* component[cluster_numbers].valueInteger MS

* component[mean_cluster_size] ^short = "Mean cluster size"
* component[mean_cluster_size].code =  CsAbacus#mean_cluster_size
* component[mean_cluster_size].code MS
* component[mean_cluster_size].value[x] only Quantity
* component[mean_cluster_size].valueQuantity MS
// add units

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationAudioQuality
Parent:   Observation 
Id:       Observation-AudioQuality-abacus-gk
Title:    "Observation Audio Quality measurements (Ab.Acus Gatekeeper)"
Description: "This profile defines how to represent Audio Quality measurement with observations in FHIR for the scope of the Gatekeeper project.This version uses temporary codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#audioQuality // "Audio Quality measurements"
* subject	0..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS
* value[x] 0..0

* component 1.. MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Audio Quality measurements"
* component ^definition = "The root of the components that make up the Audio Quality measurements observation."
* component contains   mean_f0 0..1 
	and stdev_f0  0..1
	and hnr  0..1
	and jitter  0..1 //  to be changed inot 3 different measures
	and shimmer  0..1

* component[mean_f0] ^short = "Mean fundamental frequency"
* component[mean_f0].code  = CsAbacus#mean_f0	 
* component[mean_f0].code MS
* component[mean_f0].value[x] only Quantity
* component[mean_f0].valueQuantity MS
// add Hz units ?

* component[stdev_f0] ^short = "Average standard deviation of F0"
* component[stdev_f0].code =  CsAbacus#stdev_f0
* component[stdev_f0].code MS
* component[stdev_f0].value[x] only Quantity
* component[stdev_f0].valueQuantity MS
// add units

* component[hnr] ^short = "Harmonic to Noise Ratio"
* component[hnr].code =  CsAbacus#hnr
* component[hnr].code MS
* component[hnr].value[x] only Quantity
* component[hnr].valueQuantity MS
// add units

* component[jitter] ^short = "Jitter"
* component[jitter].code =  CsAbacus#jitter
* component[jitter].code MS
* component[jitter].value[x] only Quantity
* component[jitter].valueQuantity MS
// add units

* component[shimmer] ^short = "Shimmer"
* component[shimmer].code =  CsAbacus#shimmer
* component[shimmer].code MS
* component[shimmer].value[x] only Quantity
* component[shimmer].valueQuantity MS
// add units