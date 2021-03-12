Instance: covid-quest-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/Questionnaire
Title: "Questionnaire COVID-19 GateKeeper"
Description: "Example of questionnaire defined for the COVID-19 Survey by the GATEKEEPER project"

* version = "0.0.1"
* name = "GkCovidSurvey2021"
* title = "GATEKEEPER COVID-19 Survey"
* status = #draft
* date = "2021-03-05"
* publisher = "GATEKEEPER Project"
* description = "GATEKEEPER COVID-19 Survey"
* purpose = "Collect information about the Health status, Medical history, COVID-19 Health / Exposure Status"

// SECTION 1
* item[0].prefix = "1"
* item[0].text = "BASIC DEMOGRAPHY" 
* item[0].linkId = "demography"
* item[0].type = #group
* item[0].required = true


* item[0].item[0].prefix = "1.1"
* item[0].item[0].text = "What year were you born:" 
* item[0].item[0].linkId = "demography.birthDate"
* item[0].item[0].type = #date
* item[0].item[0].required = true


* item[0].item[1].prefix = "1.2"
* item[0].item[1].text = "Please specify your gender:" 
* item[0].item[1].linkId = "demography.gender"
* item[0].item[1].type = #choice
* item[0].item[1].answerValueSet = 	"http://hl7.org/fhir/ValueSet/administrative-gender"
* item[0].item[1].required = true

// add the other questions

// SECTION 1
* item[1].prefix = "2"
* item[1].text = "OVERALL HEALTH STATUS" 
* item[1].linkId = "overallHealthStatus"
* item[1].type = #group
* item[1].required = true

* item[1].item[0].prefix = "A)"
* item[1].item[0].text = "Health status" 
* item[1].item[0].linkId = "healthStatus"
* item[1].item[0].type = #group

* item[1].item[0].item[0].prefix = "2.1"
* item[1].item[0].item[0].text = "How would you rate your overall physical health in the last 2 weeks?" 
* item[1].item[0].item[0].linkId = "healthStatus.rate"
* item[1].item[0].item[0].type = #choice
* item[1].item[0].item[0].answerOption[0].valueCoding = $loinc#LA9206-9 "Excellent"
* item[1].item[0].item[0].answerOption[1].valueCoding = $loinc#LA13913-1 "Very Good"
* item[1].item[0].item[0].answerOption[2].valueCoding = $loinc#LA8967-7 "Good"
* item[1].item[0].item[0].answerOption[3].valueCoding = $loinc#LA8968-5 "Fair"
* item[1].item[0].item[0].answerOption[4].valueCoding = $loinc#LA8969-3 "Poor"
* item[1].item[0].item[0].required = true


* item[1].item[1].prefix = "B)"
* item[1].item[1].text = "Medical history" 
* item[1].item[1].linkId = "medicalHistory"
* item[1].item[1].type = #group
* item[1].item[1].required = true

* item[1].item[1].item[0].prefix = "2.2"
* item[1].item[1].item[0].text = "Has a health professional ever told you that you had any of the following health conditions? (check all that apply)" 
* item[1].item[1].item[0].linkId = "medicalHistory.problems"
* item[1].item[1].item[0].type = #open-choice
* item[1].item[1].item[0].repeats = true
* item[1].item[1].item[0].answerOption[0].valueString = 	"Respiratory illness" 
* item[1].item[1].item[0].answerOption[1].valueString = 	"Diabetes Type 2" 
* item[1].item[1].item[0].answerOption[2].valueString = 	"Obesity" 
* item[1].item[1].item[0].answerOption[3].valueString = 	"Cardiovascular disease: heart failure, coronary artery disease or cardiomyopathies" 
* item[1].item[1].item[0].answerOption[4].valueString = 	"Cancer"
* item[1].item[1].item[0].answerOption[5].valueString = 	"Chronic kidney disease"
* item[1].item[1].item[0].answerOption[6].valueString = 	"Arthritis"
* item[1].item[1].item[0].answerOption[7].valueString = 	"Immune disorder"
* item[1].item[1].item[0].answerOption[8].valueString = 	"Immune disorder"
* item[1].item[1].item[0].answerOption[9].valueString = 	"Other (name):"
* item[1].item[1].item[0].required = true

// OTHER questions and groups to be added ....
