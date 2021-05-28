Alias: $string = string

Instance: Inline-Instance-for-covid19-4-1
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-covid19-4-1"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Not at all" 
* compose.include.concept[+].code = #"Little" 
* compose.include.concept[+].code = #"Moderate" 
* compose.include.concept[+].code = #"Quite a bit"
* compose.include.concept[+].code = #"Strongly"

Instance: Inline-Instance-for-covid19-4-3
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-covid19-4-3"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Never"  
* compose.include.concept[+].code = #"Rarely"  
* compose.include.concept[+].code = #"Sometimes"
* compose.include.concept[+].code = #"Always"

Instance: Inline-Instance-for-covid19-4-5
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-covid19-4-5"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Not at all"  
* compose.include.concept[+].code = #Several days  
* compose.include.concept[+].code = #"More than half the day"
* compose.include.concept[+].code = #"Nearly every day"


Instance: Inline-Instance-for-covid19-7-1
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-covid19-7-1"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Never"  
* compose.include.concept[+].code = #"Rarely"  
* compose.include.concept[+].code = #"Sometimes"
* compose.include.concept[+].code = #"Usually"  
* compose.include.concept[+].code = #"Always"

Instance: Inline-Instance-for-covid19-7-7
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-covid19-7-7"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Worse"  
* compose.include.concept[+].code = #"The same"  
* compose.include.concept[+].code = #"Better"

Instance: Inline-Instance-for-covid19-9-6
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-covid19-9-6"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Not at all"  
* compose.include.concept[+].code = #"Not very much"  
* compose.include.concept[+].code = #"Some"
* compose.include.concept[+].code = #"Very much"


Instance: covid-quest-1
InstanceOf: http://hl7.org/fhir/StructureDefinition/Questionnaire
Title: "Questionnaire COVID-19 GateKeeper"
Description: "Example of questionnaire defined for the COVID-19 Survey by the GATEKEEPER project"

* version = "0.0.1"
* contained[0] = Inline-Instance-for-covid19-4-1
* contained[+] = Inline-Instance-for-covid19-4-3
* contained[+] = Inline-Instance-for-covid19-4-5
* contained[+] = Inline-Instance-for-covid19-7-1
* contained[+] = Inline-Instance-for-covid19-7-7
* contained[+] = Inline-Instance-for-covid19-9-6

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
* item[2].item[0].answerOption[2].valueString = 	"Yes, I had some symptoms but never took a test" 
* item[2].item[0].answerOption[3].valueString = 	"No, I had no symptoms but tested positive" 
* item[2].item[0].answerOption[4].valueString = 	"No, I never had symptoms neither tested positive" 
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
* item[3].item[0].item[0].answerValueSet = 	"#Inline-Instance-for-covid19-4-1" 
* item[3].item[0].item[0].required = true

* item[3].item[0].item[1].prefix = "4.2"
* item[3].item[0].item[1].text = " How burdened have you felt by the COVID-19 pandemic at its highest peak?" 
* item[3].item[0].item[1].linkId = "covid19PsychologicalImpact.generalQuestions.highestPeak"
* item[3].item[0].item[1].type = #choice
* item[3].item[0].item[1].answerValueSet = 	"#Inline-Instance-for-covid19-4-1" 
* item[3].item[0].item[1].required = true


* item[3].item[0].item[2].prefix = "4.3"
* item[3].item[0].item[2].text = "How often have you experienced the following statements during the last two weeks?" 
* item[3].item[0].item[2].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks"
* item[3].item[0].item[2].type = #group


* item[3].item[0].item[2].item[0].prefix = "4.3.1"
* item[3].item[0].item[2].item[0].text = "I felt sufficiently informed about COVID-19." 
* item[3].item[0].item[2].item[0].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.informed"
* item[3].item[0].item[2].item[0].type = #choice
* item[3].item[0].item[2].item[0].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[2].item[0].required = true

* item[3].item[0].item[2].item[1].prefix = "4.3.2"
* item[3].item[0].item[2].item[1].text = "I felt protected by the actions of national and local governments." 
* item[3].item[0].item[2].item[1].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.protected"
* item[3].item[0].item[2].item[1].type = #choice
* item[3].item[0].item[2].item[1].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[2].item[1].required = true

* item[3].item[0].item[2].item[2].prefix = "4.3.3"
* item[3].item[0].item[2].item[2].text = "I was afraid of getting infected." 
* item[3].item[0].item[2].item[2].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.afraid"
* item[3].item[0].item[2].item[2].type = #choice
* item[3].item[0].item[2].item[2].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[2].item[2].required = true

* item[3].item[0].item[2].item[3].prefix = "4.3.4"
* item[3].item[0].item[2].item[3].text = "I was afraid to infect relatives or the family." 
* item[3].item[0].item[2].item[3].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.afraidForFamily"
* item[3].item[0].item[2].item[3].type = #choice
* item[3].item[0].item[2].item[3].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[2].item[3].required = true

* item[3].item[0].item[2].item[4].prefix = "4.3.5"
* item[3].item[0].item[2].item[4].text = "I felt isolated." 
* item[3].item[0].item[2].item[4].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.isolated"
* item[3].item[0].item[2].item[4].type = #choice
* item[3].item[0].item[2].item[4].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[2].item[4].required = true

* item[3].item[0].item[2].item[5].prefix = "4.3.6"
* item[3].item[0].item[2].item[5].text = "I felt avoided by others." 
* item[3].item[0].item[2].item[5].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.avoided"
* item[3].item[0].item[2].item[5].type = #choice
* item[3].item[0].item[2].item[5].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[2].item[5].required = true

* item[3].item[0].item[2].item[6].prefix = "4.3.7"
* item[3].item[0].item[2].item[6].text = "I felt physically or mentally exhausted." 
* item[3].item[0].item[2].item[6].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.exhausted"
* item[3].item[0].item[2].item[6].type = #choice
* item[3].item[0].item[2].item[6].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[2].item[6].required = true

* item[3].item[0].item[3].prefix = "4.4"
* item[3].item[0].item[3].text = "How often have you experienced the following statements during the highest peak of COVID-19 pandemic?" 
* item[3].item[0].item[3].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak"
* item[3].item[0].item[3].type = #group


* item[3].item[0].item[3].item[0].prefix = "4.4.1"
* item[3].item[0].item[3].item[0].text = "I felt sufficiently informed about COVID-19." 
* item[3].item[0].item[3].item[0].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.informed"
* item[3].item[0].item[3].item[0].type = #choice
* item[3].item[0].item[3].item[0].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[3].item[0].required = true

* item[3].item[0].item[3].item[1].prefix = "4.4.2"
* item[3].item[0].item[3].item[1].text = "I felt protected by the actions of national and local governments." 
* item[3].item[0].item[3].item[1].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.protected"
* item[3].item[0].item[3].item[1].type = #choice
* item[3].item[0].item[3].item[1].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[3].item[1].required = true

* item[3].item[0].item[3].item[2].prefix = "4.4.3"
* item[3].item[0].item[3].item[2].text = "I was afraid of getting infected." 
* item[3].item[0].item[3].item[2].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.afraid"
* item[3].item[0].item[3].item[2].type = #choice
* item[3].item[0].item[3].item[2].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[3].item[2].required = true

* item[3].item[0].item[3].item[3].prefix = "4.4.4"
* item[3].item[0].item[3].item[3].text = "I was afraid to infect relatives or the family." 
* item[3].item[0].item[3].item[3].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.afraidForFamily"
* item[3].item[0].item[3].item[3].type = #choice
* item[3].item[0].item[3].item[3].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[3].item[3].required = true

* item[3].item[0].item[3].item[4].prefix = "4.4.5"
* item[3].item[0].item[3].item[4].text = "I felt isolated." 
* item[3].item[0].item[3].item[4].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.isolated"
* item[3].item[0].item[3].item[4].type = #choice
* item[3].item[0].item[3].item[4].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[3].item[4].required = true

* item[3].item[0].item[3].item[5].prefix = "4.4.6"
* item[3].item[0].item[3].item[5].text = "I felt avoided by others." 
* item[3].item[0].item[3].item[5].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.avoided"
* item[3].item[0].item[3].item[5].type = #choice
* item[3].item[0].item[3].item[5].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
* item[3].item[0].item[3].item[5].required = true

* item[3].item[0].item[3].item[6].prefix = "4.4.7"
* item[3].item[0].item[3].item[6].text = "I felt physically or mentally exhausted." 
* item[3].item[0].item[3].item[6].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.exhausted"
* item[3].item[0].item[3].item[6].type = #choice
* item[3].item[0].item[3].item[6].answerValueSet = 	"#Inline-Instance-for-covid19-4-3" 
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
* item[3].item[1].item[0].item[0].answerValueSet = 	"#Inline-Instance-for-covid19-4-5" 
* item[3].item[1].item[0].item[0].required = true

* item[3].item[1].item[0].item[1].prefix = "4.5.2"
* item[3].item[1].item[0].item[1].text = "Feeling down, depressed, or hopeless " 
* item[3].item[1].item[0].item[1].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.depressed"
* item[3].item[1].item[0].item[1].type = #choice
* item[3].item[1].item[0].item[1].answerValueSet = 	"#Inline-Instance-for-covid19-4-5" 
* item[3].item[1].item[0].item[1].required = true

* item[3].item[1].item[0].item[2].prefix = "4.5.3"
* item[3].item[1].item[0].item[2].text = "Feeling nervous, anxious or on edge " 
* item[3].item[1].item[0].item[2].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.anxious"
* item[3].item[1].item[0].item[2].type = #choice
* item[3].item[1].item[0].item[2].answerValueSet = 	"#Inline-Instance-for-covid19-4-5" 
* item[3].item[1].item[0].item[2].required = true

* item[3].item[1].item[0].item[3].prefix = "4.5.4"
* item[3].item[1].item[0].item[3].text = "Not being able to stop or control worrying " 
* item[3].item[1].item[0].item[3].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.worrying"
* item[3].item[1].item[0].item[3].type = #choice
* item[3].item[1].item[0].item[3].answerValueSet = 	"#Inline-Instance-for-covid19-4-5" 
* item[3].item[1].item[0].item[3].required = true

* item[3].item[1].item[1].prefix = "4.6"
* item[3].item[1].item[1].text = "During the highest peak of COVID-19 pandemic, how often have you been bothered by the following problems?" 
* item[3].item[1].item[1].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak"
* item[3].item[1].item[1].type = #group

* item[3].item[1].item[1].item[0].prefix = "4.6.1"
* item[3].item[1].item[1].item[0].text = "Little interest or pleasure in doing things " 
* item[3].item[1].item[1].item[0].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.littleIntrest"
* item[3].item[1].item[1].item[0].type = #choice
* item[3].item[1].item[1].item[0].answerValueSet = 	"#Inline-Instance-for-covid19-4-5" 
* item[3].item[1].item[1].item[0].required = true

* item[3].item[1].item[1].item[1].prefix = "4.6.2"
* item[3].item[1].item[1].item[1].text = "Feeling down, depressed, or hopeless " 
* item[3].item[1].item[1].item[1].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.depressed"
* item[3].item[1].item[1].item[1].type = #choice
* item[3].item[1].item[1].item[1].answerValueSet = 	"#Inline-Instance-for-covid19-4-5" 
* item[3].item[1].item[1].item[1].required = true

* item[3].item[1].item[1].item[2].prefix = "4.6.3"
* item[3].item[1].item[1].item[2].text = "Feeling nervous, anxious or on edge " 
* item[3].item[1].item[1].item[2].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.anxious"
* item[3].item[1].item[1].item[2].type = #choice
* item[3].item[1].item[1].item[2].answerValueSet = 	"#Inline-Instance-for-covid19-4-5"
* item[3].item[1].item[1].item[2].required = true

* item[3].item[1].item[1].item[3].prefix = "4.6.4"
* item[3].item[1].item[1].item[3].text = "Not being able to stop or control worrying " 
* item[3].item[1].item[1].item[3].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.worrying"
* item[3].item[1].item[1].item[3].type = #choice
* item[3].item[1].item[1].item[3].answerValueSet = 	"#Inline-Instance-for-covid19-4-5" 
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



// SECTION 5
* item[4].prefix = "5"
* item[4].text = "LIFESTYLE HABITS" 
* item[4].linkId = "lifestyleHabits"
* item[4].type = #group
* item[4].required = true

* item[4].item[0].prefix = "5.1"
* item[4].item[0].text = " Did you smoke before the COVID-19 pandemic? (including cigarettes, cigarillos, cigars, electronic cigarette)" 
* item[4].item[0].linkId = "lifestyleHabits.smokingBeforeCovid19"
* item[4].item[0].type = #choice
* item[4].item[0].answerOption[0].valueString = 	"No, I have never smoked" 
* item[4].item[0].answerOption[1].valueString = 	"No, I quitted smoking" 
* item[4].item[0].answerOption[2].valueString = 	"Yes, <7 cigarettes per week" 
* item[4].item[0].answerOption[3].valueString = 	"Yes, <10 cigarettes per day" 
* item[4].item[0].answerOption[4].valueString = 	"Yes, >10 cigarettes per day" 
* item[4].item[0].required = true

* item[4].item[1].prefix = "5.2"
* item[4].item[1].text = " Do you currently smoke? (including cigarettes, cigarillos, cigars, electronic cigarette)" 
* item[4].item[1].linkId = "lifestyleHabits.smokingNow"
* item[4].item[1].type = #choice
* item[4].item[1].answerOption[0].valueString = 	"No, I have never smoked" 
* item[4].item[1].answerOption[1].valueString = 	"No, I quitted smoking" 
* item[4].item[1].answerOption[2].valueString = 	"Yes, <7 cigarettes per week" 
* item[4].item[1].answerOption[3].valueString = 	"Yes, <10 cigarettes per day" 
* item[4].item[1].answerOption[4].valueString = 	"Yes, >10 cigarettes per day" 
* item[4].item[1].required = true

* item[4].item[2].prefix = "5.3"
* item[4].item[2].text = " Did you drink alcoholic beverages before the COVID-19 pandemic?" 
* item[4].item[2].linkId = "lifestyleHabits.alcohoolBeforeCovid19"
* item[4].item[2].type = #choice
* item[4].item[2].answerOption[0].valueString = 	"No, I have never drank (on a daily basis)" 
* item[4].item[2].answerOption[1].valueString = 	"No, I quitted drinking (on a daily basis)" 
* item[4].item[2].answerOption[2].valueString = 	"Yes, occasionally" 
* item[4].item[2].answerOption[3].valueString = 	"Yes, daily" 
* item[4].item[2].required = true

* item[4].item[3].prefix = "5.4"
* item[4].item[3].text = " Do you currently drink alcoholic beverages?" 
* item[4].item[3].linkId = "lifestyleHabits.alcohoolNow"
* item[4].item[3].type = #choice
* item[4].item[3].answerOption[0].valueString = 	"No, I have never drank (on a daily basis)" 
* item[4].item[3].answerOption[1].valueString = 	"No, I quitted drinking (on a daily basis)" 
* item[4].item[3].answerOption[2].valueString = 	"Yes, occasionally" 
* item[4].item[3].answerOption[3].valueString = 	"Yes, daily" 
* item[4].item[3].required = true

* item[4].item[4].prefix = "5.5"
* item[4].item[4].text = " Did you use recreational drugs before the COVID-19 pandemic?" 
* item[4].item[4].linkId = "lifestyleHabits.drugsBeforeCovid19"
* item[4].item[4].type = #choice
* item[4].item[4].answerOption[0].valueString = 	"No, I have never used recreational drugs" 
* item[4].item[4].answerOption[1].valueString = 	"No, I quitted using recreational drugs" 
* item[4].item[4].answerOption[2].valueString = 	"Yes, occasionally" 
* item[4].item[4].answerOption[3].valueString = 	"Yes, regularly" 
* item[4].item[4].required = true

* item[4].item[5].prefix = "5.6"
* item[4].item[5].text = " Do you currently use recreational drugs?" 
* item[4].item[5].linkId = "lifestyleHabits.drugsNow"
* item[4].item[5].type = #choice
* item[4].item[5].answerOption[0].valueString = 	"No, I have never used recreational drugs" 
* item[4].item[5].answerOption[1].valueString = 	"No, I quitted using recreational drugs" 
* item[4].item[5].answerOption[2].valueString = 	"Yes, occasionally" 
* item[4].item[5].answerOption[3].valueString = 	"Yes, regularly" 
* item[4].item[5].required = true

// SECTION 6
* item[5].prefix = "6"
* item[5].text = "PHYSICAL ACTIVITY" 
* item[5].linkId = "physicalActivity"
* item[5].type = #group
* item[5].required = true

* item[5].item[0].prefix = "6.1"
* item[5].item[0].text = " During the last 2 weeks, how many times have you done 20 minutes of vigorous physical activity that made you sweat or puff and pant? (for example, jogging, heavy lifting, digging, aerobics, or fast bicycling)" 
* item[5].item[0].linkId = "physicalActivity.vigorous"
* item[5].item[0].type = #choice
* item[5].item[0].answerOption[0].valueString = 	"3 or more times/week" 
* item[5].item[0].answerOption[1].valueString = 	"1–2 times/week" 
* item[5].item[0].answerOption[2].valueString = 	"None" 
* item[5].item[0].required = true

* item[5].item[1].prefix = "6.2"
* item[5].item[1].text = " During the last 2 weeks, how many times have you done 30 minutes of moderate physical activity or walking that increased your heart rate or made you breath harder than normal? (for example, mowing the lawn, carrying light loads, bicycling at a regular pace, or playing doubles tennis)" 
* item[5].item[1].linkId = "physicalActivity.moderate"
* item[5].item[1].type = #choice
* item[5].item[1].answerOption[0].valueString = 	"5 or more times/week" 
* item[5].item[1].answerOption[1].valueString = 	"3–4 times/week" 
* item[5].item[1].answerOption[2].valueString = 	"1–2 times/week" 
* item[5].item[1].answerOption[3].valueString = 	"None" 
* item[5].item[1].required = true

* item[5].item[2].prefix = "6.3"
* item[5].item[2].text = " During the last 2 weeks, on average, how much time did you spend sitting or lying down daily? (Include time spent at work, at home, and during leisure time. This may include time spent sitting at a desk, visiting friends/socialising, reading, or sitting/lying down to watch television, use the computer/mobile/tablet/Internet. Don’t count the time you spent in bed sleeping.)" 
* item[5].item[2].linkId = "physicalActivity.sedentaryTime"
* item[5].item[2].type = #integer
* item[5].item[2].value.unit = "hours"
* item[5].item[2].required = true

* item[5].item[3].prefix = "6.4"
* item[5].item[3].text = "How would you consider the amount of physical activity you have done in the last 2 weeks in comparison to what you usually did before COVID-19 pandemic?" 
* item[5].item[3].linkId = "physicalActivity.overallLast2Weeks"
* item[5].item[3].type = #choice
* item[5].item[3].answerOption[0].valueString = 	"Now I do less physical activity" 
* item[5].item[3].answerOption[1].valueString = 	"Now I do more or less the same amount of physical activity" 
* item[5].item[3].answerOption[2].valueString = 	"Now I do more physical activity" 
* item[5].item[3].required = true

// SECTION 7
* item[6].prefix = "7"
* item[6].text = "SLEEP HEALTH" 
* item[6].linkId = "sleepHealth"
* item[6].type = #group
* item[6].required = true

* item[6].item[0].prefix = "7.1"
* item[6].item[0].text = " During the last 2 weeks, were you satisfied with your sleep?" 
* item[6].item[0].linkId = "sleepHealth.satisfaction"
* item[6].item[0].type = #choice
* item[6].item[0].answerValueSet = 	"#Inline-Instance-for-covid19-7-1" 
* item[6].item[0].required = true

* item[6].item[1].prefix = "7.2"
* item[6].item[1].text = " During the last 2 weeks, did you stay awake all day without dozing?" 
* item[6].item[1].linkId = "sleepHealth.awakeAllDay"
* item[6].item[1].type = #choice
* item[6].item[1].answerValueSet = 	"#Inline-Instance-for-covid19-7-1" 
* item[6].item[1].required = true

* item[6].item[2].prefix = "7.3"
* item[6].item[2].text = "During the last 2 weeks, were you asleep (or trying to sleep) between 2:00 a.m. and 4:00 a.m.?" 
* item[6].item[2].linkId = "sleepHealth.asleepDuringNightHours"
* item[6].item[2].type = #choice
* item[6].item[2].answerValueSet = 	"#Inline-Instance-for-covid19-7-1" 
* item[6].item[2].required = true

* item[6].item[3].prefix = "7.4"
* item[6].item[3].text = "During the last 2 weeks, did you spend less than 30 minutes awake at night? (This includes the time it takes to fall asleep plus awakenings during sleep.)" 
* item[6].item[3].linkId = "sleepHealth.timeAwake"
* item[6].item[3].type = #choice
* item[6].item[3].answerValueSet = 	"#Inline-Instance-for-covid19-7-1" 
* item[6].item[3].required = true

* item[6].item[4].prefix = "7.5"
* item[6].item[4].text = "During the last 2 weeks, did you sleep between 6 and 8 hours per day?" 
* item[6].item[4].linkId = "sleepHealth.sleepDuration"
* item[6].item[4].type = #choice
* item[6].item[4].answerValueSet = 	"#Inline-Instance-for-covid19-7-1" 
* item[6].item[4].required = true

* item[6].item[5].prefix = "7.6"
* item[6].item[5].text = "During the last 2 weeks, did you go to bed and get out of bed at about the same time (within one hour) every day?" 
* item[6].item[5].linkId = "sleepHealth.regularity"
* item[6].item[5].type = #choice
* item[6].item[5].answerValueSet = 	"#Inline-Instance-for-covid19-7-1" 
* item[6].item[5].required = true

* item[6].item[6].prefix = "7.7"
* item[6].item[6].text = "How would you consider the quality of your sleep in the last 2 weeks in comparison to what you experienced before COVID-19 pandemic?" 
* item[6].item[6].linkId = "sleepHealth.overallQualityVsBeforeCovid19"
* item[6].item[6].type = #choice
* item[6].item[6].answerValueSet = 	"#Inline-Instance-for-covid19-7-7" 
* item[6].item[6].required = true

* item[6].item[7].prefix = "7.8"
* item[6].item[7].text = "How would you consider the quality of your sleep in the last 2 weeks in comparison to what you experienced during the highest peak of COVID-19 pandemic?" 
* item[6].item[7].linkId = "sleepHealth.overallQualityVsPeakCovid19"
* item[6].item[7].type = #choice
* item[6].item[7].answerValueSet = 	"#Inline-Instance-for-covid19-7-7" 
* item[6].item[7].required = true

* item[6].item[8].prefix = "7.9"
* item[6].item[8].text = "Do you take medication to sleep?" 
* item[6].item[8].linkId = "sleepHealth.medication"
* item[6].item[8].type = #choice
* item[6].item[8].answerOption[0].valueString = 	"Yes, both before and during the pandemic."
* item[6].item[8].answerOption[1].valueString = 	"Yes, I started it during the pandemic."
* item[6].item[8].answerOption[2].valueString = 	"No, but I have used it before the pandemic."
* item[6].item[8].answerOption[3].valueString = 	"No, I have never used medication to sleep."
* item[6].item[8].required = true


// SECTION 8
* item[7].prefix = "8"
* item[7].text = "ADOPTION OF DIGITAL HEALTHCARE SOLUTIONS: A.VIRTUAL CONSULTATIONS" 
* item[7].linkId = "virtualConsultations"
* item[7].type = #group
* item[7].required = true

* item[7].item[0].prefix = "8.0"
* item[7].item[0].text = "Virtual consultations provide an alternative to face-to-face consultations for all aspects of healthcare, including diagnosis, treatment and rehabilitation. In virtual consultations, the provider (i.e. primary care physician) and patient are in different locations, with support and care provided through telephone, video, mobile apps, email, text/SMS messaging or online platforms." 
* item[7].item[0].type = #display

* item[7].item[1].prefix = "8.1"
* item[7].item[1].text = "Before the COVID-19 pandemic, have you had any virtual (telephone, online) consultations with your healthcare provider?" 
* item[7].item[1].linkId = "virtualConsultations.beforeCovid19Virtual"
* item[7].item[1].type = #choice
* item[7].item[1].answerValueSet = 	"http://fhir.logicahealth.org/covid19/ValueSet/yes-no-vs"
* item[7].item[1].required = true

* item[7].item[2].prefix = "8.2"
* item[7].item[2].text = "During the COVID-19 pandemic, have you had any face-to-face consultations with your healthcare provider?" 
* item[7].item[2].linkId = "virtualConsultations.duringCovid19F2F"
* item[7].item[2].type = #choice
* item[7].item[2].answerValueSet = 	"http://fhir.logicahealth.org/covid19/ValueSet/yes-no-vs"
* item[7].item[2].required = true

* item[7].item[3].prefix = "8.3"
* item[7].item[3].text = "During the COVID-19 pandemic, have you had any virtual (telephone, online) consultations with your healthcare provider?" 
* item[7].item[3].linkId = "virtualConsultations.duringCovid19Virtual"
* item[7].item[3].type = #choice
* item[7].item[3].answerValueSet = 	"http://fhir.logicahealth.org/covid19/ValueSet/yes-no-vs"
* item[7].item[3].required = true

* item[7].item[4].prefix = "8.4"
* item[7].item[4].text = "How useful was the virtual consultation?" 
* item[7].item[4].linkId = "virtualConsultations.duringCovid19VirtualUsefulness"
* item[7].item[4].type = #choice
* item[7].item[4].answerOption[0].valueString = "Very useful"
* item[7].item[4].answerOption[1].valueString = "Useful"
* item[7].item[4].answerOption[2].valueString = "Average"
* item[7].item[4].answerOption[3].valueString = "Not useful"
* item[7].item[4].answerOption[4].valueString = "Not useful at all"
* item[7].item[4].required = false

* item[7].item[5].prefix = "8.5"
* item[7].item[5].text = "Would you be willing to attend virtual consultations in the future?" 
* item[7].item[5].linkId = "virtualConsultations.futureWill"
* item[7].item[5].type = #choice
* item[7].item[5].answerOption[0].valueString = "No, I would not want any virtual consultations"
* item[7].item[5].answerOption[1].valueString = "Yes, but only as part of a mix of face-to-face and virtual consultations"
* item[7].item[5].answerOption[2].valueString = "Yes, as many of my consultations as possible"
* item[7].item[5].required = true


// SECTION 9
* item[8].prefix = "9"
* item[8].text = "ADOPTION OF DIGITAL HEALTHCARE SOLUTIONS: B.DIGITAL HEALTHCARE" 
* item[8].linkId = "digitalHealthcare"
* item[8].type = #group
* item[8].required = true

* item[8].item[0].prefix = "9.0"
* item[8].item[0].text = "Digital healthcare can be defined as the convergence of digital technologies with traditional healthcare provision, aiming to enhance the efficiency of healthcare delivery to make medicine more personalized and precise. Digital healthcare includes tools and technologies such as electronic health records, mobile apps, wearables that track fitness, lifestyle and vital signs, smart scales and chatbots. Do not worry if any of these terms are unfamiliar to you." 
* item[8].item[0].type = #display

* item[8].item[1].prefix = "9.1"
* item[8].item[1].text = "Before the COVID-19 pandemic, which of the following digital health technologies have you used to manage your health? (check all that apply; do not worry if any of these technologies are unfamiliar to you)" 
* item[8].item[1].linkId = "digitalHealthcare.healthTechnologiesUsedBeforeCovid19"
* item[8].item[1].type = #open-choice
* item[8].item[1].answerOption[0].valueString = "Virtual consultation"
* item[8].item[1].answerOption[1].valueString = "Remote monitoring"
* item[8].item[1].answerOption[2].valueString = "Smartphone/tablet apps (e.g., tracking personal activity or psychological well-being)"
* item[8].item[1].answerOption[3].valueString = "Wearable technology (e.g., a wristband activity tracker)"
* item[8].item[1].answerOption[4].valueString = "Smart scales"
* item[8].item[1].answerOption[5].valueString = "Websites"
* item[8].item[1].answerOption[6].valueString = "Social media"
* item[8].item[1].answerOption[7].valueString = "Electronic health records"
* item[8].item[1].answerOption[8].valueString = "Online support communities"
* item[8].item[1].answerOption[9].valueString = "Other"
* item[8].item[1].answerOption[10].valueString = "None"
* item[8].item[1].required = true

* item[8].item[2].prefix = "9.2"
* item[8].item[2].text = "During the COVID-19 pandemic, which of the following digital health technologies have you used to manage your health? (check all that apply; do not worry if any of these technologies are unfamiliar to you)" 
* item[8].item[2].linkId = "digitalHealthcare.healthTechnologiesUsedDuringCovid19"
* item[8].item[2].type = #open-choice
* item[8].item[2].answerOption[0].valueString = "Virtual consultation"
* item[8].item[2].answerOption[1].valueString = "Remote monitoring"
* item[8].item[2].answerOption[2].valueString = "Smartphone/tablet apps (e.g., tracking personal activity or psychological well-being)"
* item[8].item[2].answerOption[3].valueString = "Wearable technology (e.g., a wristband activity tracker)"
* item[8].item[2].answerOption[4].valueString = "Smart scales"
* item[8].item[2].answerOption[5].valueString = "Websites"
* item[8].item[2].answerOption[6].valueString = "Social media"
* item[8].item[2].answerOption[7].valueString = "Electronic health records"
* item[8].item[2].answerOption[8].valueString = "Online support communities"
* item[8].item[2].answerOption[9].valueString = "Other"
* item[8].item[2].answerOption[10].valueString = "None"
* item[8].item[2].required = true

* item[8].item[3].prefix = "9.3"
* item[8].item[3].text = "Which of the following would you do virtually if given the choice? (check all that apply)" 
* item[8].item[3].linkId = "digitalHealthcare.usageIntent"
* item[8].item[3].type = #open-choice
* item[8].item[3].answerOption[0].valueString = "Health and wellness advisories"
* item[8].item[3].answerOption[1].valueString = "Remote monitoring of ongoing health issues through at-home devices"
* item[8].item[3].answerOption[2].valueString = "Routine appointments"
* item[8].item[3].answerOption[3].valueString = "Mental health appointments"
* item[8].item[3].answerOption[4].valueString = "Appointments with medical specialists from chronic conditions"
* item[8].item[3].answerOption[5].valueString = "Appointments with medical specialists for diagnosis or acute care"
* item[8].item[3].answerOption[6].valueString = "Diagnoses for illnesses, diseases and disorders"
* item[8].item[3].answerOption[7].valueString = "None of the above"
* item[8].item[3].required = true

* item[8].item[4].prefix = "9.4"
* item[8].item[4].text = "What might keep you from using digital health technologies (e.g., chatbots, apps or digital devices) for your health questions and care? (check all that apply)" 
* item[8].item[4].linkId = "digitalHealthcare.usageImpediments"
* item[8].item[4].type = #open-choice
* item[8].item[4].answerOption[0].valueString = "Concerns about my privacy or data security"
* item[8].item[4].answerOption[1].valueString = "Don’t trust the effectiveness of the service"
* item[8].item[4].answerOption[2].valueString = "Prefer my current providers"
* item[8].item[4].answerOption[3].valueString = "Don’t take the initiative to try something new or change my habit"
* item[8].item[4].answerOption[4].valueString = "Don’t know where to start"
* item[8].item[4].answerOption[5].valueString = "Lack of access or affordability of the devices I need"
* item[8].item[4].answerOption[6].valueString = "Haven’t heard of any"
* item[8].item[4].answerOption[7].valueString = "None of the above"
* item[8].item[4].required = true

* item[8].item[5].prefix = "9.5"
* item[8].item[5].text = "Overall, how confident are you that your digital healthcare data is being used responsibly and in your best interest?" 
* item[8].item[5].linkId = "digitalHealthcare.responsibleDataUsageConfidence"
* item[8].item[5].type = #open-choice
* item[8].item[5].answerOption[0].valueString = "Not at all confident"
* item[8].item[5].answerOption[1].valueString = "Not very confident"
* item[8].item[5].answerOption[2].valueString = "Somewhat confident"
* item[8].item[5].answerOption[3].valueString = "Very confident"
* item[8].item[5].required = true

* item[8].item[6].prefix = "9.6"
* item[8].item[6].text = "Overall, how much do you trust each of the following people or organizations to keep your digital healthcare information (including electronic medical records and other information) secure?" 
* item[8].item[6].linkId = "digitalHealthcare.trust"
* item[8].item[6].type = #group

* item[8].item[6].item[0].prefix = "9.6.1"
* item[8].item[6].item[0].text = "Hospitals I visit" 
* item[8].item[6].item[0].linkId = "digitalHealthcare.trust.hospitals"
* item[8].item[6].item[0].type = #choice
* item[8].item[6].item[0].answerValueSet = 	"#Inline-Instance-for-covid19-9-6" 
* item[8].item[6].item[0].required = true

* item[8].item[6].item[1].prefix = "9.6.2"
* item[8].item[6].item[1].text = "My doctor(s) or other healthcare providers" 
* item[8].item[6].item[1].linkId = "digitalHealthcare.trust.doctors"
* item[8].item[6].item[1].type = #choice
* item[8].item[6].item[1].answerValueSet = 	"#Inline-Instance-for-covid19-9-6" 
* item[8].item[6].item[1].required = true

* item[8].item[6].item[2].prefix = "9.6.3"
* item[8].item[6].item[2].text = "My pharmacy" 
* item[8].item[6].item[2].linkId = "digitalHealthcare.trust.pharmacy"
* item[8].item[6].item[2].type = #choice
* item[8].item[6].item[2].answerValueSet = 	"#Inline-Instance-for-covid19-9-6" 
* item[8].item[6].item[2].required = true

* item[8].item[6].item[3].prefix = "9.6.4"
* item[8].item[6].item[3].text = "Labs that process my medical tests" 
* item[8].item[6].item[3].linkId = "digitalHealthcare.trust.labs"
* item[8].item[6].item[3].type = #choice
* item[8].item[6].item[3].answerValueSet = 	"#Inline-Instance-for-covid19-9-6" 
* item[8].item[6].item[3].required = true

* item[8].item[6].item[4].prefix = "9.6.5"
* item[8].item[6].item[4].text = "My health insurance company" 
* item[8].item[6].item[4].linkId = "digitalHealthcare.trust.insuranceCompany"
* item[8].item[6].item[4].type = #choice
* item[8].item[6].item[4].answerValueSet = 	"#Inline-Instance-for-covid19-9-6" 
* item[8].item[6].item[4].required = true

* item[8].item[6].item[5].prefix = "9.6.6"
* item[8].item[6].item[5].text = "Technological companies" 
* item[8].item[6].item[5].linkId = "digitalHealthcare.trust.techCompany"
* item[8].item[6].item[5].type = #choice
* item[8].item[6].item[5].answerValueSet = 	"#Inline-Instance-for-covid19-9-6" 
* item[8].item[6].item[5].required = true

* item[8].item[6].item[6].prefix = "9.6.7"
* item[8].item[6].item[6].text = "Government" 
* item[8].item[6].item[6].linkId = "digitalHealthcare.trust.government"
* item[8].item[6].item[6].type = #choice
* item[8].item[6].item[6].answerValueSet = 	"#Inline-Instance-for-covid19-9-6" 
* item[8].item[6].item[6].required = true

// SECTION 10
* item[9].prefix = "10"
* item[9].text = "EFFECTS OF COVID-19 ON CHRONIC DISEASES MANAGEMENT" 
* item[9].linkId = "covid19EffectsOnChronicDiseases"
* item[9].type = #group
* item[9].required = true

* item[9].item[0].prefix = "A)"
* item[9].item[0].text = "ACCESS TO MEDICAL CARE" 
* item[9].item[0].linkId = "accessMedCare"
* item[9].item[0].type = #group

* item[9].item[0].item[0].prefix = "10.1"
* item[9].item[0].item[0].text = "During the COVID-19 pandemic, how easy has it been for you to make an appointment with your doctor compared with the period before the COVID-19 pandemic?" 
* item[9].item[0].item[0].linkId = "accessMedCares.bookAppointmentDuringCovid19"
* item[9].item[0].item[0].type = #choice
* item[9].item[0].item[0].answerOption[0].valueString = "Much harder"
* item[9].item[0].item[0].answerOption[1].valueString = "Somewhat harder"
* item[9].item[0].item[0].answerOption[2].valueString = "No change"
* item[9].item[0].item[0].answerOption[3].valueString = "Somewhat easier"
* item[9].item[0].item[0].answerOption[4].valueString = "Much easier"
* item[9].item[0].item[0].answerOption[5].valueString = "Not applicable"
* item[9].item[0].item[0].required = true

* item[9].item[0].item[1].prefix = "10.2"
* item[9].item[0].item[1].text = "During the COVID-19 pandemic, how long did you have to wait for an appointment with your doctor compared with the period before the COVID-19 pandemic?" 
* item[9].item[0].item[1].linkId = "accessMedCares.waitAppointmentDuringCovid19"
* item[9].item[0].item[1].type = #choice
* item[9].item[0].item[1].answerOption[0].valueString = "Much longer"
* item[9].item[0].item[1].answerOption[1].valueString = "Somewhat longer"
* item[9].item[0].item[1].answerOption[2].valueString = "Stayed the same"
* item[9].item[0].item[1].answerOption[3].valueString = "Somewhat shorter"
* item[9].item[0].item[1].answerOption[4].valueString = "Much shorter"
* item[9].item[0].item[1].answerOption[5].valueString = "Not applicable"
* item[9].item[0].item[1].required = true

* item[9].item[0].item[2].prefix = "10.3"
* item[9].item[0].item[2].text = "During the COVID-19 pandemic, did you have any problems with receiving prescriptions for your medications?" 
* item[9].item[0].item[2].linkId = "accessMedCares.prescriptionDuringCovid19"
* item[9].item[0].item[2].type = #choice
* item[9].item[0].item[2].answerOption[0].valueString = "Each time"
* item[9].item[0].item[2].answerOption[1].valueString = "Very often"
* item[9].item[0].item[2].answerOption[2].valueString = "Sometimes"
* item[9].item[0].item[2].answerOption[3].valueString = "Rarely"
* item[9].item[0].item[2].answerOption[4].valueString = "Never"
* item[9].item[0].item[2].answerOption[5].valueString = "Not applicable"
* item[9].item[0].item[2].required = true

* item[9].item[0].item[3].prefix = "10.4"
* item[9].item[0].item[3].text = "During the COVID-19 pandemic, did you have any problems with receiving prescriptions for your medications?" 
* item[9].item[0].item[3].linkId = "accessMedCares.prescriptionDuringCovid19"
* item[9].item[0].item[3].type = #choice
* item[9].item[0].item[3].answerOption[0].valueString = "No"
* item[9].item[0].item[3].answerOption[1].valueString = "Yes, once"
* item[9].item[0].item[3].answerOption[2].valueString = "Yes, twice or more"
* item[9].item[0].item[3].answerOption[3].valueString = "Not applicable"
* item[9].item[0].item[3].required = true

* item[9].item[1].prefix = "B)"
* item[9].item[1].text = "MOTIVATION AND SUPPORT" 
* item[9].item[1].linkId = "motivationAndSupport"
* item[9].item[1].type = #group

* item[9].item[1].item[0].prefix = "10.5"
* item[9].item[1].item[0].text = "During the COVID-19 pandemic, what was the level of support you received from your friends and family members in relation to your health condition(s) compared with the period before the COVID-19 pandemic?" 
* item[9].item[1].item[0].linkId = "motivationAndSupport.family"
* item[9].item[1].item[0].type = #choice
* item[9].item[1].item[0].answerOption[0].valueString = "Much worse"
* item[9].item[1].item[0].answerOption[1].valueString = "Somewhat worse"
* item[9].item[1].item[0].answerOption[2].valueString = "Stayed the same"
* item[9].item[1].item[0].answerOption[3].valueString = "Somewhat better"
* item[9].item[1].item[0].answerOption[4].valueString = "Much better"
* item[9].item[1].item[0].answerOption[5].valueString = "Not applicable"
* item[9].item[1].item[0].required = true

* item[9].item[1].item[1].prefix = "10.6"
* item[9].item[1].item[1].text = "During the COVID-19 pandemic, what was the level of support you received from healthcare professionals in relation to your health condition(s) compared with the period before the COVID-19 pandemic?" 
* item[9].item[1].item[1].linkId = "motivationAndSupport.healthcareProfessionals"
* item[9].item[1].item[1].type = #choice
* item[9].item[1].item[1].answerOption[0].valueString = "Much worse"
* item[9].item[1].item[1].answerOption[1].valueString = "Somewhat worse"
* item[9].item[1].item[1].answerOption[2].valueString = "Stayed the same"
* item[9].item[1].item[1].answerOption[3].valueString = "Somewhat better"
* item[9].item[1].item[1].answerOption[4].valueString = "Much better"
* item[9].item[1].item[1].answerOption[5].valueString = "Not applicable"
* item[9].item[1].item[1].required = true


// SECTION 11
* item[10].prefix = "11"
* item[10].text = "COVID-19 VACCINATION" 
* item[10].linkId = "covid19Vaccination"
* item[10].type = #group
* item[10].required = true

* item[10].item[0].prefix = "11.1"
* item[10].item[0].text = "How well-informed do you feel about the COVID-19 vaccines?" 
* item[10].item[0].linkId = "covid19Vaccination.informed"
* item[10].item[0].type = #integer
* item[10].item[0].required = true

* item[10].item[1].prefix = "11.2"
* item[10].item[1].text = "Have you been administered a COVID-19 vaccination (at least 1st dose)?" 
* item[10].item[1].linkId = "covid19Vaccination.status"
* item[10].item[1].type = #choice
* item[10].item[1].answerValueSet = 	"http://fhir.logicahealth.org/covid19/ValueSet/yes-no-vs"
* item[10].item[1].required = true

* item[10].item[2].prefix = "11.3"
* item[10].item[2].text = "Are you willing to take COVID-19 vaccination?" 
* item[10].item[2].linkId = "covid19Vaccination.will"
* item[10].item[2].type = #choice
* item[10].item[2].answerOption[0].valueString = "Yes"
* item[10].item[2].answerOption[1].valueString = "No"
* item[10].item[2].answerOption[2].valueString = "I am not sure"
* item[10].item[2].required = false

* item[10].item[3].prefix = "11.4"
* item[10].item[3].text = "Have you experienced any adverse effects of COVID-19 vaccination?" 
* item[10].item[3].linkId = "covid19Vaccination.adverseEffects"
* item[10].item[3].type = #choice
* item[10].item[3].answerOption[0].valueString = "Yes"
* item[10].item[3].answerOption[1].valueString = "No"
* item[10].item[3].answerOption[2].valueString = "I do not know"
* item[10].item[3].required = false

* item[10].item[4].prefix = "11.5"
* item[10].item[4].text = "Would you agree to take COVID-19 vaccination every year?" 
* item[10].item[4].linkId = "covid19Vaccination.everyYear"
* item[10].item[4].type = #choice
* item[10].item[4].answerOption[0].valueString = "Yes"
* item[10].item[4].answerOption[1].valueString = "No"
* item[10].item[4].answerOption[2].valueString = "I do not know"
* item[10].item[4].required = true


// OTHER questions and groups to be added ....
