//============== ALIAS ===============

/*=====


Mapping
Test	name	type	group
Verbal fluency	words_number 	Int	Word Count results
Verbal fluency	correct_number	int	Word Count results
Verbal fluency	errors_number	int	Word Count results
Verbal fluency	mean_intraword_time	float	Phonation vs Silence measurement
Verbal fluency	shifts_number	int	NLP measurements
Verbal fluency	cluster_numbers	int	NLP measurements
Verbal fluency	mean_cluster_size	float	NLP measurements
Verbal fluency	duration	float	Phonation vs Silence measurement
Verbal fluency	phonation_duration	float	Phonation vs Silence measurement
Verbal fluency	phonation_duration_perc	float	Phonation vs Silence measurement
Verbal fluency	silence_duration	float	Phonation vs Silence measurement
Verbal fluency	silence_duration_perc	float	Phonation vs Silence measurement
Verbal fluency	silence_phonation_ratio	float	Phonation vs Silence measurement
Verbal fluency	mean_f0	float	Acoustic measurements
Verbal fluency	stdev_f0	float	Acoustic measurements
Verbal fluency	hnr	float	Acoustic measurements
Verbal fluency	jitter	float	Acoustic measurements
Verbal fluency	shimmer	float	Acoustic measurements
Prose recall	words_tot_number_expected 	int	Word Count results
Prose recall	words_tot_number	int	Word Count results
Prose recall	words_matching	int	Word Count results
Prose recall	mean_intraword_time	float	Phonation vs Silence measurement
Prose recall	Latency_time	float	Phonation vs Silence measurement
Prose recall	distance_wmd	float	 NLP measurements
Prose recall	duration	float	Phonation vs Silence measurement
Prose recall	phonation_duration	float	Phonation vs Silence measurement
Prose recall	phonation_duration_perc	float	Phonation vs Silence measurement
Prose recall	silence_duration	float	Phonation vs Silence measurement
Prose recall	silence_duration_perc	float	Phonation vs Silence measurement
Prose recall	silence_phonation_ratio	float	Phonation vs Silence measurement
Prose recall	mean_f0	float	Acoustic measurements
Prose recall	stdev_f0	float	Acoustic measurements
Prose recall	hnr	float	Acoustic measurements
Prose recall	jitter	float	Acoustic measurements
Prose recall	shimmer	float	Acoustic measurements
Repetition of complex sentences	words_tot_number_expected 	int	Word Count results
Repetition of complex sentences	words_tot_number	int	Word Count results
Repetition of complex sentences	words_matching	int	Word Count results
Repetition of complex sentences	mean_intraword_time	float	Phonation vs Silence measurement
Repetition of complex sentences	latency_time	float	Phonation vs Silence measurement
Repetition of complex sentences	phonation_duration	float	Phonation vs Silence measurement
Repetition of complex sentences	phonation_duration_perc	float	Phonation vs Silence measurement
Repetition of complex sentences	silence_duration	float	Phonation vs Silence measurement
Repetition of complex sentences	silence_duration_perc	float	Phonation vs Silence measurement
Repetition of complex sentences	silence_phonation_ratio	float	Phonation vs Silence measurement
Repetition of complex sentences	mean_f0	float	Acoustic measurements
Repetition of complex sentences	stdev_f0	float	Acoustic measurements
Repetition of complex sentences	hnr	float	Acoustic measurements
Repetition of complex sentences	jitter	float	Acoustic measurements
Repetition of complex sentences	shimmer	float	Acoustic measurements
Picture naming	word_match	int	Word Count results
Picture naming	latency_time	float	Phonation vs Silence measurement
Picture naming	mean_f0	float	Acoustic measurements
Picture naming	stdev_f0	float	Acoustic measurements
Picture naming	hnr	float	Acoustic measurements
Picture naming	jitter	float	Acoustic measurements
Picture naming	shimmer	float	Acoustic measurements

==== */

//====== Code System =====================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
ValueSet: VsAbacus
Id: testTypes-abacus
Title: "Ab.Acus SpeakApp Test types"
Description: "Ab.Acus SpeakApp Test types"
//-------------------------------------------------------------------------------------------
// measure tests
* CsAbacus#fluency	
* CsAbacus#picture-naming 
* CsAbacus#repetition-sentences 
* CsAbacus#prose-recall 

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
CodeSystem: CsAbacus
Id: abacus
Title: "Ab.Acus SpeakApp temporary Code System"
Description: "Ab.Acus SpeakApp temporary Code System. Proper codes will be identified."
//-------------------------------------------------------------------------------------------
// ^url = https://www.ab-acus.eu/sid/speakapp
* ^status = #draft

// measure tests
* #fluency	"Verbal Fluency Test" "Verbal Fluency Test"
* #picture-naming "Picture naming Test" "Picture naming Test"
* #repetition-sentences "Repetition of complex sentences Test" "Repetition of complex sentences Test"
* #prose-recall "Prose recall Test" "Prose recall Test"

// measure panels
* #words_tot_numberPanel "Word Count Panel" "Word Count Panel"
* #phonationSilence "Phonation vs Silence Panel"
* #nlp "NLP Panel" "NLP Panel"
* #acoustic-measures "Acoustic measurements" "Acoustic  measurements"


* #errors_number			 "Errors in the words produced"                      "Errors in the words produced"
* #words_tot_number_expected "Total number of words expected"                    "Total number of words expected"
* #words_tot_number			 "Total number of words produced"                    "Total number of words produced"
* #words_matching			 "Number of words correctly matching with the rule"  "Number of words correctly matching with the rule"
 

* #duration 	"Duration of the measure"	"Duration of the measure"
* #phonation_duration 	"Duration of the phonation" "Duration of the phonation"
* #phonation_duration_perc 	"Duration of the phonation (ratio)" "Duration of the phonation(ratio)"
* #silence_duration  	"Duration of the silence"   "Duration of the silence"
* #silence_duration_perc  	"Duration of the silence (ratio)"   "Duration of the silence (ratio)"
* #latency_time "Latency time" "Latency time"
* #silence_phonation_ratio "Silence phonation ratio" "Silence phonation ratio"


* #mean_intraword_time "Mean intraword time" "Mean intraword time"
* #shifts_number "Shifts Number" "Shifts Number"
* #cluster_numbers "Cluster Number" "Cluster Number"
* #mean_cluster_size "Mean cluster size" "Mean cluster size"



* #mean_f0 	"Mean fundamental frequency [Hz]"		"Mean fundamental frequency [Hz]"
* #stdev_f0 "Average standard deviation of F0 [Hz]"  "Average standard deviation of F0 [Hz]"
* #hnr 		"Harmonic to Noise Ratio"           "Harmonic to Noise Ratio"
* #jitter	"Jitter"                            "Jitter"
* #shimmer	"Shimmer"                           "Shimmer"


//====== Profiles =====================================

//===================================
//===================================
// MEASURES TYPES
// 1) Verbal fluency (x)
// 2) Prose recall
// 3) Repetition of complex sentences
// 4) Picture naming
//===================================
//===================================


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationSpeakappTests
Parent:   Observation 
Id:       Observation-speakapp-abacus-gk
Title:    "Observation SpeakApp Test (Ab.Acus)"
Description: "This profile defines how to represent the SpeakApp test results (e.g. Verbal Fluency) in FHIR for the scope of the Gatekeeper project. This version uses local codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code from VsAbacus	// Verbal Fluency Panel
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
// check if all slices 1..1
* hasMember contains   words_tot_numberPanel 0..1
	and nlp 0..1
	and phonationSilence 0..1
	and acoustic-measures 0..1

* hasMember[words_tot_numberPanel] ^short = "Word Count results"
* hasMember[nlp] ^short = "Word Cluster measurements"
* hasMember[phonationSilence] ^short = "Phonation vs Silence measurement"
* hasMember[acoustic-measures] ^short = "Audio Quality measurement"				

* hasMember[words_tot_numberPanel] only Reference(ObservationWordResults)	 
* hasMember[nlp] only Reference(ObservationNlpMeasurements)	 
* hasMember[phonationSilence] only Reference(ObservationPhonationSilence)	
* hasMember[acoustic-measures] only Reference(ObservationAcousticMeasurements)	


* component 0..0


//===================================
//===================================
// MEASURES GROUPS
// 1)	Word Count results; (to be checked)
// 2)	NLP measurements; (OK)
// 3)	Phonation vs Silence measurements; (x)
// 4)	Acoustic measurements. (OK)
//===================================
//===================================

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationWordResults
Parent:   Observation 
Id:       Observation-WordResults-abacus-gk
Title:    "Observation Word Count results (Ab.Acus)"
Description: "This profile defines how to represent Word Count results with observations in FHIR for the scope of the Gatekeeper project. These results are used in several SpeakApp tests. This version uses local codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#words_tot_numberPanel	// Verbal Fluency Panel
* subject	0..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS
* value[x] 0..0

* component 1.. MS
  * code MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Word Count results"
* component ^definition = "The root of the components that make up the Word Count results observation."
* component contains   words_tot_number 0..1 
	and words_tot_number_expected  0..1
	and errors_number  0..1
	and words_matching 0..1		

* component[words_tot_number_expected] ^short = "Total number of words expected"
* component[words_tot_number_expected].code  = CsAbacus#words_tot_number_expected	 // Number of Words 
* component[words_tot_number_expected].value[x] only integer
* component[words_tot_number_expected].valueInteger MS

* component[words_tot_number] ^short = "Total number of words produced"
* component[words_tot_number].code =  CsAbacus#words_tot_number	// Correct Words 
* component[words_tot_number].value[x] only integer
* component[words_tot_number].valueInteger MS


* component[errors_number] ^short =  "Errors in the words produced"
* component[errors_number].code =  CsAbacus#errors_number	// Number of errors 
* component[errors_number].value[x] only integer
* component[errors_number].valueInteger MS

* component[words_matching] ^short =  "Number of words correctly matching with the rule"
* component[words_matching].code =  CsAbacus#words_matching	
* component[words_matching].value[x] only integer
* component[words_matching].valueInteger MS

//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationPhonationSilence
Parent:   Observation 
Id:       Observation-PhonationSilence-abacus-gk
Title:    "Observation Phonation vs Silence measurements (Ab.Acus Gatekeeper)"
Description: "This profile defines how to represent Phonation vs Silence measurement with observations in FHIR for the scope of the Gatekeeper project.This version uses local codes."
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
  * code 1.. MS
  * value[x] only Quantity
  * valueQuantity MS
  
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Phonation vs Silence measurements"
* component ^definition = "The root of the components that make up the Phonation vs Silence measurements observation."
* component contains   duration 0..1
	and mean_intraword_time 0..1
	and phonation_duration  0..1
	and phonation_duration_perc  0..1
	and silence_duration  0..1
	and silence_duration_perc  0..1	
	and latency_time  0..1
	and silence_phonation_ratio  0..1
	
	/*--
mean_intraword_time float
duration float
phonation_duration float
phonation_duration_perc float
silence_duration float
silence_duration_perc float
Latency_time float
silence_phonation_ratio float
--*/

* component[duration] ^short = "Duration of test"
* component[duration].code  = CsAbacus#duration	 
* component[duration].code MS
// * component[duration].value[x] only Quantity
// * component[duration].valueQuantity MS
// add units

* component[phonation_duration] ^short = "Duration of the phonation"
* component[phonation_duration].code =  CsAbacus#phonation_duration
// add units

* component[phonation_duration_perc] ^short = "Duration of the phonation (ratio)"
* component[phonation_duration_perc].code =  CsAbacus#phonation_duration_perc
// add units

* component[silence_duration] ^short = "Duration of the silence"
* component[silence_duration].code =  CsAbacus#silence_duration
// add units

* component[silence_duration_perc] ^short = "Duration of the silence (ratio)"
* component[silence_duration_perc].code =  CsAbacus#silence_duration_perc
// add units

* component[latency_time] ^short = "Latency time"
* component[latency_time].code =  CsAbacus#latency_time
// add units

* component[silence_phonation_ratio] ^short = "Silence phonation ratio"
* component[silence_phonation_ratio].code =  CsAbacus#silence_phonation_ratio
// add units


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Profile:  ObservationNlpMeasurements
Parent:   Observation 
Id:       Observation-nlpMeasurements-abacus-gk
Title:    "Observation NLP measurements (Ab.Acus)"
Description: "This profile defines how to represent NLP measurements with observations in FHIR for the scope of the Gatekeeper project. This version uses local codes."
//-------------------------------------------------------------------------------------------



* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#nlp // "Word Cluster Panel"
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


/*---
shifts_number	int X
cluster_numbers	int X
mean_cluster_size	float X
distance_wmd	float X

--*/

* component[mean_intraword_time] ^short = "Mean intraword time"
* component[mean_intraword_time].code  = CsAbacus#mean_intraword_time	 
* component[mean_intraword_time].code MS
* component[mean_intraword_time].value[x] only Quantity
* component[mean_intraword_time].valueQuantity MS
* component[mean_intraword_time].valueQuantity.code = #s

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
Profile:  ObservationAcousticMeasurements
Parent:   Observation 
Id:       Observation-acousticMeasurements-abacus-gk
Title:    "Observation Acoustic measurements (Ab.Acus)"
Description: "This profile defines how to represent Acoustic measurements with observations in FHIR for the scope of the Gatekeeper project.This version uses local codes."
//-------------------------------------------------------------------------------------------

* status 1..1	MS // code	registered | preliminary | final | amended +
* code	1..1 MS
* code	= CsAbacus#acoustic-measures // "Audio Quality measurements"
* subject	0..1 MS
* subject only Reference (PatientGK) //	Who and/or what the observation is about
* device 0.. MS
* device only Reference(Device)
// * subject only Reference (PatientGK) //	Who and/or what the observation is about
* effective[x]	MS
* value[x] 0..0

* component 1.. MS
  * code 1.. MS
  * value[x] only Quantity
  * valueQuantity MS
* component ^slicing.discriminator[0].type = #pattern
* component ^slicing.discriminator[0].path = "code"
* component ^slicing.ordered = false
* component ^slicing.rules = #open
* component ^short = "Components composing the Audio Quality measurements"
* component ^definition = "The root of the components that make up the Audio Quality measurements observation."
* component contains   
    mean_f0 0..1 
	and stdev_f0  0..1
	and hnr  0..1
	and jitter  0..1 //  to be changed inot 3 different measures
	and shimmer  0..1
	
* component[mean_f0] ^short = "Mean fundamental frequency"
* component[mean_f0].code  = CsAbacus#mean_f0
* component[mean_f0].valueQuantity.code = #Hz 	

* component[stdev_f0] ^short = "Average standard deviation of F0"
* component[stdev_f0].code =  CsAbacus#stdev_f0
* component[stdev_f0].valueQuantity.code = #Hz 	

* component[hnr] ^short = "Harmonic to Noise Ratio"
* component[hnr].code =  CsAbacus#hnr

* component[jitter] ^short = "Jitter"
* component[jitter].code =  CsAbacus#jitter

* component[shimmer] ^short = "Shimmer"
* component[shimmer].code =  CsAbacus#shimmer
