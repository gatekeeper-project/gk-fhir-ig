Instance: covid-quest-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/Questionnaire
Title: "Questionnaire COVID-19 GateKeeper"
Description: "Example of questionnaire defined for the COVID-19 Survey by the GATEKEEPER project"

* version = "0.0.1"
* name = "GKCovidSurvey2021"
* title = "GATEKEEPER COVID-19 Survey"
* status = #draft
* date = "2021-05-12"
* publisher = "GATEKEEPER Project"
* description = "GATEKEEPER COVID-19 Full Survey"
* purpose = "Collect information about the Health status, Medical history, COVID-19 Health / Exposure Status"

// SECTION 0
* item[0].prefix = "0"
* item[0].text = "Questionnaire Details" 
* item[0].linkId = "qdetails"
* item[0].type = #group
* item[0].required = true

* item[0].item[0].prefix = "0.1"
* item[0].item[0].text = "Questionnaire Date" 
* item[0].item[0].linkId = "qdetails.Date"
* item[0].item[0].type = #date
* item[0].item[0].required = true

* item[0].item[1].prefix = "0.2"
* item[0].item[1].text = "Questionnaire Type" 
* item[0].item[1].linkId = "qdetails.type"
* item[0].item[1].type = #choice
* item[0].item[1].answerOption[0].valueString = 	"full"
//* item[0].item[1].answerOption[1].valueString = 	"short"
* item[0].item[1].required = true


// SECTION 1
* item[1].prefix = "1"
* item[1].text = "BASIC DEMOGRAPHY" 
* item[1].linkId = "demography"
* item[1].type = #group
* item[1].required = true

* item[1].item[0].prefix = "1.1"
* item[1].item[0].text = "What year were you born:" 
* item[1].item[0].linkId = "demography.birthDate"
* item[1].item[0].type = #date
* item[1].item[0].required = true

* item[1].item[1].prefix = "1.2"
* item[1].item[1].text = "Please specify your gender:" 
* item[1].item[1].linkId = "demography.gender"
* item[1].item[1].type = #choice
* item[1].item[1].answerValueSet = 	"http://hl7.org/fhir/ValueSet/administrative-gender"
* item[1].item[1].required = true

* item[1].item[2].prefix = "1.3"
* item[1].item[2].text = "What is your country of residence?" 
* item[1].item[2].linkId = "demography.country"
* item[1].item[2].type = #choice
* item[1].item[2].answerOption[0].valueString = 	"Cyprus"
* item[1].item[2].answerOption[1].valueString = 	"Germany"
* item[1].item[2].answerOption[2].valueString = 	"Greece"
* item[1].item[2].answerOption[3].valueString = 	"Italy"
* item[1].item[2].answerOption[4].valueString = 	"Poland"
* item[1].item[2].answerOption[5].valueString = 	"Spain"
* item[1].item[2].answerOption[6].valueString = 	"United Kingdom"
* item[1].item[2].answerOption[7].valueString = 	"Hong Kong"
* item[1].item[2].answerOption[8].valueString = 	"Taiwan"
* item[1].item[2].answerOption[9].valueString = 	"Singapore"
* item[1].item[2].answerOption[9].valueString = 	"Other:"
* item[1].item[2].required = true

* item[1].item[3].prefix = "1.4"
* item[1].item[3].text = "What is the highest level of education you completed?" 
* item[1].item[3].linkId = "demography.education"
* item[1].item[3].type = #choice
* item[1].item[3].answerOption[0].valueString = 	"No education"
* item[1].item[3].answerOption[1].valueString = 	"Primary school"
* item[1].item[3].answerOption[2].valueString = 	"Secondary school"
* item[1].item[3].answerOption[3].valueString = 	"High school"
* item[1].item[3].answerOption[4].valueString = 	"University degree"
* item[1].item[3].answerOption[5].valueString = 	"Master degree"
* item[1].item[3].answerOption[6].valueString = 	"PhD degree"
* item[1].item[3].required = true

* item[1].item[4].prefix = "1.5"
* item[1].item[4].text = "What is your employment status now?" 
* item[1].item[4].linkId = "demography.employment"
* item[1].item[4].type = #choice
* item[1].item[4].answerOption[0].valueString = 	"Employed"
* item[1].item[4].answerOption[1].valueString = 	"Self-employed"
* item[1].item[4].answerOption[2].valueString = 	"Unemployed"
* item[1].item[4].answerOption[3].valueString = 	"Unable to work"
* item[1].item[4].answerOption[4].valueString = 	"Homemaker"
* item[1].item[4].answerOption[5].valueString = 	"Student"
* item[1].item[4].answerOption[6].valueString = 	"Retired"
* item[1].item[4].required = true

// add the other questions


// SECTION 2
* item[2].prefix = "2"
* item[2].text = "OVERALL HEALTH STATUS" 
* item[2].linkId = "overallHealthStatus"
* item[2].type = #group
* item[2].required = true

* item[2].item[0].prefix = "A)"
* item[2].item[0].text = "Health status" 
* item[2].item[0].linkId = "healthStatus"
* item[2].item[0].type = #group

* item[2].item[0].item[0].prefix = "2.1"
* item[2].item[0].item[0].text = "How would you rate your overall physical health in the last 2 weeks?" 
* item[2].item[0].item[0].linkId = "healthStatus.rate"
* item[2].item[0].item[0].type = #choice
* item[2].item[0].item[0].answerOption[0].valueCoding = $loinc#LA9206-9 "Excellent"
* item[2].item[0].item[0].answerOption[1].valueCoding = $loinc#LA13913-1 "Very Good"
* item[2].item[0].item[0].answerOption[2].valueCoding = $loinc#LA8967-7 "Good"
* item[2].item[0].item[0].answerOption[3].valueCoding = $loinc#LA8968-5 "Fair"
* item[2].item[0].item[0].answerOption[4].valueCoding = $loinc#LA8969-3 "Poor"
* item[2].item[0].item[0].required = true


* item[2].item[1].prefix = "B)"
* item[2].item[1].text = "Medical history" 
* item[2].item[1].linkId = "medicalHistory"
* item[2].item[1].type = #group
* item[2].item[1].required = true

* item[2].item[1].item[0].prefix = "2.2"
* item[2].item[1].item[0].text = "Has a health professional ever told you that you had any of the following health conditions? (check all that apply)" 
* item[2].item[1].item[0].linkId = "medicalHistory.problems"
* item[2].item[1].item[0].type = #open-choice
* item[2].item[1].item[0].repeats = true
* item[2].item[1].item[0].answerOption[0].valueString = 	"Respiratory illness" 
* item[2].item[1].item[0].answerOption[1].valueString = 	"Diabetes Type 2" 
* item[2].item[1].item[0].answerOption[2].valueString = 	"Obesity" 
* item[2].item[1].item[0].answerOption[3].valueString = 	"Cardiovascular disease: heart failure, coronary artery disease or cardiomyopathies" 
* item[2].item[1].item[0].answerOption[4].valueString = 	"Cancer"
* item[2].item[1].item[0].answerOption[5].valueString = 	"Chronic kidney disease"
* item[2].item[1].item[0].answerOption[6].valueString = 	"Arthritis"
* item[2].item[1].item[0].answerOption[7].valueString = 	"Immune disorder"
* item[2].item[1].item[0].answerOption[8].valueString = 	"Immune disorder"
* item[2].item[1].item[0].answerOption[9].valueString = 	"Other (name):"
* item[2].item[1].item[0].required = true


// SECTION 3
* item[3].prefix = "3"
* item[3].text = "COVID-19 HEALTH / EXPOSURE STATUS" 
* item[3].linkId = "covid19HealthExposureStatus"
* item[3].type = #group
* item[3].required = true

* item[3].item[0].prefix = "3.1"
* item[3].item[0].text = " … have you been suspected of having COVID-19 infection?" 
* item[3].item[0].linkId = "covid19HealthExposureStatus.infection"
* item[3].item[0].type = #choice
* item[3].item[0].answerOption[0].valueString = 	"Yes, I had some symptoms and tested positive" 
* item[3].item[0].answerOption[1].valueString = 	"Yes, I had some symptoms but tested negative" 
* item[3].item[0].answerOption[2].valueString = 	"No, I had no symptoms but tested positive" 
* item[3].item[0].answerOption[3].valueString = 	"No, I never had symptoms neither tested positive" 
* item[3].item[0].required = true

* item[3].item[1].prefix = "3.2"
* item[3].item[1].text = " … have you had any of the following symptoms? (check all that apply)" 
* item[3].item[1].linkId = "covid19HealthExposureStatus.symptoms"
* item[3].item[1].type = #open-choice
* item[3].item[1].repeats = true
* item[3].item[1].answerOption[0].valueString = 	"Cough" 
* item[3].item[1].answerOption[1].valueString = 	"Fever" 
* item[3].item[1].answerOption[2].valueString = 	"Fatigue" 
* item[3].item[1].answerOption[3].valueString = 	"Headache" 
* item[3].item[1].answerOption[4].valueString = 	"Shortness of breath" 
* item[3].item[1].answerOption[5].valueString = 	"Sore throat" 
* item[3].item[1].answerOption[6].valueString = 	"Diarrhoea" 
* item[3].item[1].answerOption[7].valueString = 	"Nausea/vomiting" 
* item[3].item[1].answerOption[8].valueString = 	"Loss of taste or smell" 
* item[3].item[1].answerOption[9].valueString = 	"Runny nose" 
* item[3].item[1].answerOption[10].valueString = 	"Abdominal pain" 
* item[3].item[1].answerOption[11].valueString = 	"Other symptoms:" 
* item[3].item[1].answerOption[12].valueString = 	"None of the above" 
* item[3].item[1].required = true


// OTHER questions and groups to be added ....
