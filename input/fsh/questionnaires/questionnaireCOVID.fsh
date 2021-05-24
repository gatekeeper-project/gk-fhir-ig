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

* item[0].item[2].prefix = "1.3"
* item[0].item[2].text = "What is your country of residence?" 
* item[0].item[2].linkId = "demography.country"
* item[0].item[2].type = #choice
* item[0].item[2].answerOption[0].valueString = 	"Cyprus"
* item[0].item[2].answerOption[1].valueString = 	"Germany"
* item[0].item[2].answerOption[2].valueString = 	"Greece"
* item[0].item[2].answerOption[3].valueString = 	"Italy"
* item[0].item[2].answerOption[4].valueString = 	"Poland"
* item[0].item[2].answerOption[5].valueString = 	"Spain"
* item[0].item[2].answerOption[6].valueString = 	"United Kingdom"
* item[0].item[2].answerOption[7].valueString = 	"Hong Kong"
* item[0].item[2].answerOption[8].valueString = 	"Taiwan"
* item[0].item[2].answerOption[9].valueString = 	"Singapore"
* item[0].item[2].answerOption[10].valueString = 	"Other:"
* item[0].item[2].required = true

* item[0].item[3].prefix = "1.4"
* item[0].item[3].text = "What is the highest level of education you completed?" 
* item[0].item[3].linkId = "demography.education"
* item[0].item[3].type = #choice
* item[0].item[3].answerOption[0].valueString = 	"No education"
* item[0].item[3].answerOption[1].valueString = 	"Primary school"
* item[0].item[3].answerOption[2].valueString = 	"Secondary school"
* item[0].item[3].answerOption[3].valueString = 	"High school"
* item[0].item[3].answerOption[4].valueString = 	"University degree"
* item[0].item[3].answerOption[5].valueString = 	"Master degree"
* item[0].item[3].answerOption[6].valueString = 	"PhD degree"
* item[0].item[3].required = true

* item[0].item[4].prefix = "1.5"
* item[0].item[4].text = "What is your employment status now?" 
* item[0].item[4].linkId = "demography.employment"
* item[0].item[4].type = #choice
* item[0].item[4].answerOption[0].valueString = 	"Employed"
* item[0].item[4].answerOption[1].valueString = 	"Self-employed"
* item[0].item[4].answerOption[2].valueString = 	"Unemployed"
* item[0].item[4].answerOption[3].valueString = 	"Unable to work"
* item[0].item[4].answerOption[4].valueString = 	"Homemaker"
* item[0].item[4].answerOption[5].valueString = 	"Student"
* item[0].item[4].answerOption[6].valueString = 	"Retired"
* item[0].item[4].required = true

// add the other questions


// SECTION 2
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


// SECTION 3
* item[2].prefix = "3"
* item[2].text = "COVID-19 HEALTH / EXPOSURE STATUS" 
* item[2].linkId = "covid19HealthExposureStatus"
* item[2].type = #group
* item[2].required = true

* item[2].item[0].prefix = "3.1"
* item[2].item[0].text = " During the COVID-19 pandemic have you been suspected of having COVID-19 infection?" 
* item[2].item[0].linkId = "covid19HealthExposureStatus.infection"
* item[2].item[0].type = #choice
* item[2].item[0].answerOption[0].valueString = 	"Yes, I had some symptoms and tested positive" 
* item[2].item[0].answerOption[1].valueString = 	"Yes, I had some symptoms but tested negative" 
* item[2].item[0].answerOption[2].valueString = 	"No, I had no symptoms but tested positive" 
* item[2].item[0].answerOption[3].valueString = 	"No, I never had symptoms neither tested positive" 
* item[2].item[0].required = true

* item[2].item[1].prefix = "3.2"
* item[2].item[1].text = " During the COVID-19 pandemic have you had any of the following symptoms? (check all that apply)" 
* item[2].item[1].linkId = "covid19HealthExposureStatus.symptoms"
* item[2].item[1].type = #open-choice
* item[2].item[1].repeats = true
* item[2].item[1].answerOption[0].valueString = 	"Cough" 
* item[2].item[1].answerOption[1].valueString = 	"Fever" 
* item[2].item[1].answerOption[2].valueString = 	"Fatigue" 
* item[2].item[1].answerOption[3].valueString = 	"Headache" 
* item[2].item[1].answerOption[4].valueString = 	"Shortness of breath" 
* item[2].item[1].answerOption[5].valueString = 	"Sore throat" 
* item[2].item[1].answerOption[6].valueString = 	"Diarrhoea" 
* item[2].item[1].answerOption[7].valueString = 	"Nausea/vomiting" 
* item[2].item[1].answerOption[8].valueString = 	"Loss of taste or smell" 
* item[2].item[1].answerOption[9].valueString = 	"Runny nose" 
* item[2].item[1].answerOption[10].valueString = 	"Abdominal pain" 
* item[2].item[1].answerOption[11].valueString = 	"Other symptoms:" 
* item[2].item[1].answerOption[12].valueString = 	"None of the above" 
* item[2].item[1].required = true

* item[2].item[2].prefix = "3.3"
* item[2].item[2].text = " During the COVID-19 pandemic have you been exposed to someone likely to have COVID-19? (check all that apply)" 
* item[2].item[2].linkId = "covid19HealthExposureStatus.other"
* item[2].item[2].type = #choice
* item[2].item[2].answerOption[0].valueString = 	"Yes, someone with positive test" 
* item[2].item[2].answerOption[1].valueString = 	"Yes, someone with the symptoms likely to be associated with an infection" 
* item[2].item[2].answerOption[2].valueString = 	"No" 
* item[2].item[2].required = true

* item[2].item[3].prefix = "3.4"
* item[2].item[3].text = " During the COVID-19 pandemic have you or anyone in your household been diagnosed with COVID-19?" 
* item[2].item[3].linkId = "covid19HealthExposureStatus.household"
* item[2].item[3].type = #choice
* item[2].item[3].answerOption[0].valueString = 	"Yes" 
* item[2].item[3].answerOption[1].valueString = 	"No" 
* item[2].item[3].required = true

* item[2].item[4].prefix = "3.5"
* item[2].item[4].text = " During the COVID-19 pandemic have any of the following happened to you or anyone in your household because of COVID-19? (check all that apply)" 
* item[2].item[4].linkId = "covid19HealthExposureStatus.household"
* item[2].item[4].type = #open-choice
* item[2].item[4].repeats = true
* item[2].item[4].answerOption[0].valueString = 	"Fallen ill physically" 
* item[2].item[4].answerOption[1].valueString = 	"Hospitalized" 
* item[2].item[4].answerOption[2].valueString = 	"Passed away" 
* item[2].item[4].answerOption[3].valueString = 	"Put into self-quarantine with symptoms" 
* item[2].item[4].answerOption[4].valueString = 	"Put into self-quarantine without symptoms (e.g., due to possible exposure)" 
* item[2].item[4].answerOption[5].valueString = 	"None of the above" 
* item[2].item[4].required = true


// SECTION 4
* item[3].prefix = "4"
* item[3].text = "COVID-19 PSYCHOLOGICAL IMPACT" 
* item[3].linkId = "covid19PsychologicalImpact"
* item[3].type = #group
* item[3].required = true

* item[3].item[0].prefix = "A)"
* item[3].item[0].text = "General questions regarding COVID-19 related burden" 
* item[3].item[0].linkId = "covid19PsychologicalImpact.generalQuestions"
* item[3].item[0].type = #group


* item[3].item[0].item[0].prefix = "4.1"
* item[3].item[0].item[0].text = " How burdened have you felt by the COVID-19 pandemic in the last 2 weeks?" 
* item[3].item[0].item[0].linkId = "covid19PsychologicalImpact.generalQuestions.last2Weeks"
* item[3].item[0].item[0].type = #choice
* item[3].item[0].item[0].answerOption[0].valueString = 	"Not at all" 
* item[3].item[0].item[0].answerOption[1].valueString = 	"Little" 
* item[3].item[0].item[0].answerOption[2].valueString = 	"Moderate" 
* item[3].item[0].item[0].answerOption[3].valueString = 	"Quite a bit" 
* item[3].item[0].item[0].answerOption[4].valueString = 	"Strongly" 
* item[3].item[0].item[0].required = true

* item[3].item[0].item[1].prefix = "4.2"
* item[3].item[0].item[1].text = " How burdened have you felt by the COVID-19 pandemic at its highest peak?" 
* item[3].item[0].item[1].linkId = "covid19PsychologicalImpact.generalQuestions.highestPeak"
* item[3].item[0].item[1].type = #choice
* item[3].item[0].item[1].answerOption[0].valueString = 	"Not at all" 
* item[3].item[0].item[1].answerOption[1].valueString = 	"Little" 
* item[3].item[0].item[1].answerOption[2].valueString = 	"Moderate" 
* item[3].item[0].item[1].answerOption[3].valueString = 	"Quite a bit" 
* item[3].item[0].item[1].answerOption[4].valueString = 	"Strongly" 
* item[3].item[0].item[1].required = true


* item[3].item[0].item[2].prefix = "4.3"
* item[3].item[0].item[2].text = "How often have you experienced the following statements during the last two weeks?" 
* item[3].item[0].item[2].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks"
* item[3].item[0].item[2].type = #group


* item[3].item[0].item[2].item[0].prefix = "4.3.1"
* item[3].item[0].item[2].item[0].text = "I felt sufficiently informed about COVID-19." 
* item[3].item[0].item[2].item[0].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.informed"
* item[3].item[0].item[2].item[0].type = #choice
* item[3].item[0].item[2].item[0].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[2].item[0].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[2].item[0].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[2].item[0].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[2].item[0].required = true

* item[3].item[0].item[2].item[1].prefix = "4.3.2"
* item[3].item[0].item[2].item[1].text = "I felt protected by the actions of national and local governments." 
* item[3].item[0].item[2].item[1].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.protected"
* item[3].item[0].item[2].item[1].type = #choice
* item[3].item[0].item[2].item[1].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[2].item[1].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[2].item[1].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[2].item[1].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[2].item[1].required = true

* item[3].item[0].item[2].item[2].prefix = "4.3.3"
* item[3].item[0].item[2].item[2].text = "I was afraid of getting infected." 
* item[3].item[0].item[2].item[2].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.afraid"
* item[3].item[0].item[2].item[2].type = #choice
* item[3].item[0].item[2].item[2].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[2].item[2].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[2].item[2].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[2].item[2].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[2].item[2].required = true

* item[3].item[0].item[2].item[3].prefix = "4.3.4"
* item[3].item[0].item[2].item[3].text = "I was afraid to infect relatives or the family." 
* item[3].item[0].item[2].item[3].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.afraidForFamily"
* item[3].item[0].item[2].item[3].type = #choice
* item[3].item[0].item[2].item[3].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[2].item[3].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[2].item[3].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[2].item[3].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[2].item[3].required = true

* item[3].item[0].item[2].item[4].prefix = "4.3.5"
* item[3].item[0].item[2].item[4].text = "I felt isolated." 
* item[3].item[0].item[2].item[4].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.isolated"
* item[3].item[0].item[2].item[4].type = #choice
* item[3].item[0].item[2].item[4].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[2].item[4].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[2].item[4].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[2].item[4].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[2].item[4].required = true

* item[3].item[0].item[2].item[5].prefix = "4.3.6"
* item[3].item[0].item[2].item[5].text = "I felt avoided by others." 
* item[3].item[0].item[2].item[5].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.avoided"
* item[3].item[0].item[2].item[5].type = #choice
* item[3].item[0].item[2].item[5].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[2].item[5].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[2].item[5].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[2].item[5].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[2].item[5].required = true

* item[3].item[0].item[2].item[6].prefix = "4.3.7"
* item[3].item[0].item[2].item[6].text = "I felt physically or mentally exhausted." 
* item[3].item[0].item[2].item[6].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.exhausted"
* item[3].item[0].item[2].item[6].type = #choice
* item[3].item[0].item[2].item[6].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[2].item[6].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[2].item[6].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[2].item[6].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[2].item[6].required = true

* item[3].item[0].item[3].prefix = "4.4"
* item[3].item[0].item[3].text = "How often have you experienced the following statements during the highest peak of COVID-19 pandemic?" 
* item[3].item[0].item[3].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak"
* item[3].item[0].item[3].type = #group


* item[3].item[0].item[3].item[0].prefix = "4.4.1"
* item[3].item[0].item[3].item[0].text = "I felt sufficiently informed about COVID-19." 
* item[3].item[0].item[3].item[0].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.informed"
* item[3].item[0].item[3].item[0].type = #choice
* item[3].item[0].item[3].item[0].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[3].item[0].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[3].item[0].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[3].item[0].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[3].item[0].required = true

* item[3].item[0].item[3].item[1].prefix = "4.4.2"
* item[3].item[0].item[3].item[1].text = "I felt protected by the actions of national and local governments." 
* item[3].item[0].item[3].item[1].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.protected"
* item[3].item[0].item[3].item[1].type = #choice
* item[3].item[0].item[3].item[1].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[3].item[1].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[3].item[1].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[3].item[1].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[3].item[1].required = true

* item[3].item[0].item[3].item[2].prefix = "4.4.3"
* item[3].item[0].item[3].item[2].text = "I was afraid of getting infected." 
* item[3].item[0].item[3].item[2].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.afraid"
* item[3].item[0].item[3].item[2].type = #choice
* item[3].item[0].item[3].item[2].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[3].item[2].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[3].item[2].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[3].item[2].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[3].item[2].required = true

* item[3].item[0].item[3].item[3].prefix = "4.4.4"
* item[3].item[0].item[3].item[3].text = "I was afraid to infect relatives or the family." 
* item[3].item[0].item[3].item[3].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.afraidForFamily"
* item[3].item[0].item[3].item[3].type = #choice
* item[3].item[0].item[3].item[3].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[3].item[3].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[3].item[3].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[3].item[3].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[3].item[3].required = true

* item[3].item[0].item[3].item[4].prefix = "4.4.5"
* item[3].item[0].item[3].item[4].text = "I felt isolated." 
* item[3].item[0].item[3].item[4].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.isolated"
* item[3].item[0].item[3].item[4].type = #choice
* item[3].item[0].item[3].item[4].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[3].item[4].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[3].item[4].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[3].item[4].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[3].item[4].required = true

* item[3].item[0].item[3].item[5].prefix = "4.4.6"
* item[3].item[0].item[3].item[5].text = "I felt avoided by others." 
* item[3].item[0].item[3].item[5].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.avoided"
* item[3].item[0].item[3].item[5].type = #choice
* item[3].item[0].item[3].item[5].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[3].item[5].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[3].item[5].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[3].item[5].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[3].item[5].required = true

* item[3].item[0].item[3].item[6].prefix = "4.4.7"
* item[3].item[0].item[3].item[6].text = "I felt physically or mentally exhausted." 
* item[3].item[0].item[3].item[6].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.exhausted"
* item[3].item[0].item[3].item[6].type = #choice
* item[3].item[0].item[3].item[6].answerOption[0].valueCoding = $loinc#LA6270-8 "Never" 
* item[3].item[0].item[3].item[6].answerOption[1].valueCoding = $loinc#LA10066-1 "Rarely" 
* item[3].item[0].item[3].item[6].answerOption[2].valueCoding = $loinc#LA10082-8 "Sometimes" 
* item[3].item[0].item[3].item[6].answerOption[3].valueCoding = $loinc#LA9933-8	"Always" 
* item[3].item[0].item[3].item[6].required = true

* item[3].item[1].prefix = "B)"
* item[3].item[1].text = "PHQ-4" 
* item[3].item[1].linkId = "covid19PsychologicalImpact.PHQ4"
* item[3].item[1].type = #group


* item[3].item[1].item[0].prefix = "4.5"
* item[3].item[1].item[0].text = "During the last 2 weeks, how often have you been bothered by the following problems?" 
* item[3].item[1].item[0].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks"
* item[3].item[1].item[0].type = #group

* item[3].item[1].item[0].item[0].prefix = "4.5.1"
* item[3].item[1].item[0].item[0].text = "Little interest or pleasure in doing things " 
* item[3].item[1].item[0].item[0].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.littleIntrest"
* item[3].item[1].item[0].item[0].type = #choice
* item[3].item[1].item[0].item[0].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[0].item[0].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[0].item[0].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[0].item[0].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[0].item[0].required = true

* item[3].item[1].item[0].item[1].prefix = "4.5.2"
* item[3].item[1].item[0].item[1].text = "Feeling down, depressed, or hopeless " 
* item[3].item[1].item[0].item[1].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.depressed"
* item[3].item[1].item[0].item[1].type = #choice
* item[3].item[1].item[0].item[1].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[0].item[1].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[0].item[1].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[0].item[1].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[0].item[1].required = true

* item[3].item[1].item[0].item[2].prefix = "4.5.3"
* item[3].item[1].item[0].item[2].text = "Feeling nervous, anxious or on edge " 
* item[3].item[1].item[0].item[2].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.anxious"
* item[3].item[1].item[0].item[2].type = #choice
* item[3].item[1].item[0].item[2].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[0].item[2].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[0].item[2].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[0].item[2].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[0].item[2].required = true

* item[3].item[1].item[0].item[3].prefix = "4.5.4"
* item[3].item[1].item[0].item[3].text = "Not being able to stop or control worrying " 
* item[3].item[1].item[0].item[3].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.worrying"
* item[3].item[1].item[0].item[3].type = #choice
* item[3].item[1].item[0].item[3].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[0].item[3].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[0].item[3].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[0].item[3].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[0].item[3].required = true

* item[3].item[1].item[1].prefix = "4.6"
* item[3].item[1].item[1].text = "During the highest peak of COVID-19 pandemic, how often have you been bothered by the following problems?" 
* item[3].item[1].item[1].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak"
* item[3].item[1].item[1].type = #group

* item[3].item[1].item[1].item[0].prefix = "4.6.1"
* item[3].item[1].item[1].item[0].text = "Little interest or pleasure in doing things " 
* item[3].item[1].item[1].item[0].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.littleIntrest"
* item[3].item[1].item[1].item[0].type = #choice
* item[3].item[1].item[1].item[0].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[1].item[0].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[1].item[0].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[1].item[0].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[1].item[0].required = true

* item[3].item[1].item[1].item[1].prefix = "4.6.2"
* item[3].item[1].item[1].item[1].text = "Feeling down, depressed, or hopeless " 
* item[3].item[1].item[1].item[1].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.depressed"
* item[3].item[1].item[1].item[1].type = #choice
* item[3].item[1].item[1].item[1].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[1].item[1].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[1].item[1].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[1].item[1].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[1].item[1].required = true

* item[3].item[1].item[1].item[2].prefix = "4.6.3"
* item[3].item[1].item[1].item[2].text = "Feeling nervous, anxious or on edge " 
* item[3].item[1].item[1].item[2].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.anxious"
* item[3].item[1].item[1].item[2].type = #choice
* item[3].item[1].item[1].item[2].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[1].item[2].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[1].item[2].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[1].item[2].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[1].item[2].required = true

* item[3].item[1].item[1].item[3].prefix = "4.6.4"
* item[3].item[1].item[1].item[3].text = "Not being able to stop or control worrying " 
* item[3].item[1].item[1].item[3].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.worrying"
* item[3].item[1].item[1].item[3].type = #choice
* item[3].item[1].item[1].item[3].answerOption[0].valueString = "Not at all" 
* item[3].item[1].item[1].item[3].answerOption[1].valueString = "Several days" 
* item[3].item[1].item[1].item[3].answerOption[2].valueString = "More than half the day" 
* item[3].item[1].item[1].item[3].answerOption[3].valueString = "Nearly every day" 
* item[3].item[1].item[1].item[3].required = true

* item[3].item[1].item[2].prefix = "4.7"
* item[3].item[1].item[2].text = "Have you taken advantage of psychosocial support services since the beginning of the COVID-19 pandemic to reduce the burden? (e.g. online information, personal/video counselling, team counselling etc.)?" 
* item[3].item[1].item[2].linkId = "covid19PsychologicalImpact.PHQ4.psychosocialSupport"
* item[3].item[1].item[2].type = #choice
* item[3].item[1].item[2].answerOption[0].valueString = "No"
* item[3].item[1].item[2].answerOption[1].valueString = "None available"
* item[3].item[1].item[2].answerOption[2].valueString = "Yes, and this is: "
* item[3].item[1].item[2].required = true

* item[3].item[1].item[3].prefix = "4.8"
* item[3].item[1].item[3].text = "Since the beginning of the COVID-19 pandemic, have there been any extraordinary stresses (e.g. death or serious illness of a close person, your own serious illness, divorce/separation, etc.) that were not related to the pandemic?" 
* item[3].item[1].item[3].linkId = "covid19PsychologicalImpact.PHQ4.extraordinaryStress"
* item[3].item[1].item[3].type = #choice
* item[3].item[1].item[3].answerOption[0].valueString = "No"
* item[3].item[1].item[3].answerOption[1].valueString = "Yes, and this is:"
* item[3].item[1].item[3].required = true




// OTHER questions and groups to be added ....
