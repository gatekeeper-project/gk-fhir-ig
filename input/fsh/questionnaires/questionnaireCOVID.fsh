Alias: $string = string

Instance: inlineValueSet-covid19-4-1
InstanceOf: ValueSet
Usage: #inline
// * url = "#inlineCovid19-4-1"
* name = "InlineValueSetCovid19x4x1"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Not at all"
* compose.include.concept[+].code = #"Little"
* compose.include.concept[+].code = #"Moderate"
* compose.include.concept[+].code = #"Quite a bit"
* compose.include.concept[+].code = #"Strongly"

Instance: inlineValueSet-covid19-4-3
InstanceOf: ValueSet
Usage: #inline
// * url = "Inline-covid19-4-3"
* name = "InlineValueSetCovid19x4x3"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Never"
* compose.include.concept[+].code = #"Rarely"
* compose.include.concept[+].code = #"Sometimes"
* compose.include.concept[+].code = #"Always"

Instance: inlineValueSet-covid19-4-5
InstanceOf: ValueSet
Usage: #inline
// * url = "Inline-covid19-4-5"
* name = "InlineValueSetCovid19x4x5"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Not at all"
* compose.include.concept[+].code = #"Several days"
* compose.include.concept[+].code = #"More than half the day"
* compose.include.concept[+].code = #"Nearly every day"


Instance: inlineValueSet-covid19-7-1
InstanceOf: ValueSet
Usage: #inline
// * url = "Inline-covid19-7-1"
* name = "InlineValueSetCovid19x7x1"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"Never"
* compose.include.concept[+].code = #"Rarely"
* compose.include.concept[+].code = #"Sometimes"
* compose.include.concept[+].code = #"Usually"
* compose.include.concept[+].code = #"Always"

Instance: inlineValueSet-covid19-7-7
InstanceOf: ValueSet
Usage: #inline
// * url = "Inline-covid19-7-7"
* status = #draft
* name = "InlineValueSetCovid19x7x7"
* compose.include.system = $string
* compose.include.concept[0].code = #"Worse"
* compose.include.concept[+].code = #"The same"
* compose.include.concept[+].code = #"Better"

Instance: inlineValueSet-covid19-9-6
InstanceOf: ValueSet
Usage: #inline
// * url = "Inline-covid19-9-6"
* status = #draft
* name = "InlineValueSetCovid19x9x6"
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
* contained[0] = inlineValueSet-covid19-4-1
* contained[+] = inlineValueSet-covid19-4-3
* contained[+] = inlineValueSet-covid19-4-5
* contained[+] = inlineValueSet-covid19-7-1
* contained[+] = inlineValueSet-covid19-7-7
* contained[+] = inlineValueSet-covid19-9-6

* name = "GKCovidSurvey2021"
* title = "GATEKEEPER COVID-19 Survey"
* status = #draft
* date = "2021-05-12"
* publisher = "GATEKEEPER Project"
* description = "GATEKEEPER COVID-19 Full Survey"
* purpose = "Collect information about the Health status, Medical history, COVID-19 Health / Exposure Status"



// SECTION 1
* item[0].prefix = "1"
* item[=].text = "BASIC DEMOGRAPHY"
* item[=].linkId = "demography"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "1.1"
* item[=].item[=].text = "What year were you born:"
* item[=].item[=].linkId = "demography.birthDate"
* item[=].item[=].type = #date
* item[=].item[=].required = true

* item[=].item[+].prefix = "1.2"
* item[=].item[=].text = "Please specify your gender:"
* item[=].item[=].linkId = "demography.gender"
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = 	"http://hl7.org/fhir/ValueSet/administrative-gender"
* item[=].item[=].required = true

* item[=].item[+].prefix = "1.3"
* item[=].item[=].text = "What is your country of residence?"
* item[=].item[=].linkId = "demography.country"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"Cyprus"
* item[=].item[=].answerOption[1].valueString = 	"Germany"
* item[=].item[=].answerOption[2].valueString = 	"Greece"
* item[=].item[=].answerOption[3].valueString = 	"Italy"
* item[=].item[=].answerOption[4].valueString = 	"Poland"
* item[=].item[=].answerOption[5].valueString = 	"Spain"
* item[=].item[=].answerOption[6].valueString = 	"United Kingdom"
* item[=].item[=].answerOption[7].valueString = 	"Hong Kong"
* item[=].item[=].answerOption[8].valueString = 	"Taiwan"
* item[=].item[=].answerOption[9].valueString = 	"Singapore"
* item[=].item[=].answerOption[10].valueString = 	"Other:"
* item[=].item[=].required = true

* item[=].item[+].prefix = "1.4"
* item[=].item[=].text = "What is the highest level of education you completed?"
* item[=].item[=].linkId = "demography.education"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"No education"
* item[=].item[=].answerOption[1].valueString = 	"Primary school"
* item[=].item[=].answerOption[2].valueString = 	"Secondary school"
* item[=].item[=].answerOption[3].valueString = 	"High school"
* item[=].item[=].answerOption[4].valueString = 	"University degree"
* item[=].item[=].answerOption[5].valueString = 	"Master degree"
* item[=].item[=].answerOption[6].valueString = 	"PhD degree"
* item[=].item[=].required = true

* item[=].item[+].prefix = "1.5"
* item[=].item[=].text = "What is your employment status now?"
* item[=].item[=].linkId = "demography.employment"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"Employed"
* item[=].item[=].answerOption[1].valueString = 	"Self-employed"
* item[=].item[=].answerOption[2].valueString = 	"Unemployed"
* item[=].item[=].answerOption[3].valueString = 	"Unable to work"
* item[=].item[=].answerOption[4].valueString = 	"Homemaker"
* item[=].item[=].answerOption[5].valueString = 	"Student"
* item[=].item[=].answerOption[6].valueString = 	"Retired"
* item[=].item[=].required = true

// add the other questions


// SECTION 2
* item[+].prefix = "2"
* item[=].text = "OVERALL HEALTH STATUS"
* item[=].linkId = "overallHealthStatus"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "A)"
* item[=].item[=].text = "Health status"
* item[=].item[=].linkId = "healthStatus"
* item[=].item[=].type = #group

* item[=].item[=].item[0].prefix = "2.1"
* item[=].item[=].item[=].text = "How would you rate your overall physical health in the last 2 weeks?"
* item[=].item[=].item[=].linkId = "healthStatus.rate"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueCoding = $loinc#LA9206-9 "Excellent"
* item[=].item[=].item[=].answerOption[1].valueCoding = $loinc#LA13913-1 "Very Good"
* item[=].item[=].item[=].answerOption[2].valueCoding = $loinc#LA8967-7 "Good"
* item[=].item[=].item[=].answerOption[3].valueCoding = $loinc#LA8968-5 "Fair"
* item[=].item[=].item[=].answerOption[4].valueCoding = $loinc#LA8969-3 "Poor"
* item[=].item[=].item[=].required = true


* item[=].item[+].prefix = "B)"
* item[=].item[=].text = "Medical history"
* item[=].item[=].linkId = "medicalHistory"
* item[=].item[=].type = #group
* item[=].item[=].required = true

* item[=].item[=].item[0].prefix = "2.2"
* item[=].item[=].item[=].text = "Has a health professional ever told you that you had any of the following health conditions? (check all that apply)"
* item[=].item[=].item[=].linkId = "medicalHistory.problems"
* item[=].item[=].item[=].type = #open-choice
* item[=].item[=].item[=].repeats = true
* item[=].item[=].item[=].answerOption[0].valueString = 	"Respiratory illness"
* item[=].item[=].item[=].answerOption[1].valueString = 	"Diabetes Type 2"
* item[=].item[=].item[=].answerOption[2].valueString = 	"Obesity"
* item[=].item[=].item[=].answerOption[3].valueString = 	"Cardiovascular disease: heart failure, coronary artery disease or cardiomyopathies"
* item[=].item[=].item[=].answerOption[4].valueString = 	"Cancer"
* item[=].item[=].item[=].answerOption[5].valueString = 	"Chronic kidney disease"
* item[=].item[=].item[=].answerOption[6].valueString = 	"Arthritis"
* item[=].item[=].item[=].answerOption[7].valueString = 	"Immune disorder"
* item[=].item[=].item[=].answerOption[8].valueString = 	"Emotional or mental health problems such as Depression or Anxiety"
* item[=].item[=].item[=].answerOption[9].valueString = 	"Other (name):"
* item[=].item[=].item[=].required = true


// SECTION 3
* item[+].prefix = "3"
* item[=].text = "COVID-19 HEALTH / EXPOSURE STATUS"
* item[=].linkId = "covid19HealthExposureStatus"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "3.1"
* item[=].item[=].text = "During the COVID-19 pandemic have you been suspected of having COVID-19 infection?"
* item[=].item[=].linkId = "covid19HealthExposureStatus.infection"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"Yes, I had some symptoms and tested positive"
* item[=].item[=].answerOption[1].valueString = 	"Yes, I had some symptoms but tested negative"
* item[=].item[=].answerOption[2].valueString = 	"Yes, I had some symptoms but never took a test"
* item[=].item[=].answerOption[3].valueString = 	"No, I had no symptoms but tested positive"
* item[=].item[=].answerOption[4].valueString = 	"No, I never had symptoms neither tested positive"
* item[=].item[=].required = true

* item[=].item[+].prefix = "3.2"
* item[=].item[=].text = "During the COVID-19 pandemic have you had any of the following symptoms? (check all that apply)"
* item[=].item[=].linkId = "covid19HealthExposureStatus.symptoms"
* item[=].item[=].type = #open-choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueString = 	"Cough"
* item[=].item[=].answerOption[1].valueString = 	"Fever"
* item[=].item[=].answerOption[2].valueString = 	"Fatigue"
* item[=].item[=].answerOption[3].valueString = 	"Headache"
* item[=].item[=].answerOption[4].valueString = 	"Shortness of breath"
* item[=].item[=].answerOption[5].valueString = 	"Sore throat"
* item[=].item[=].answerOption[6].valueString = 	"Diarrhoea"
* item[=].item[=].answerOption[7].valueString = 	"Nausea/vomiting"
* item[=].item[=].answerOption[8].valueString = 	"Loss of taste or smell"
* item[=].item[=].answerOption[9].valueString = 	"Runny nose"
* item[=].item[=].answerOption[10].valueString = 	"Abdominal pain"
* item[=].item[=].answerOption[11].valueString = 	"Other symptoms:"
* item[=].item[=].answerOption[12].valueString = 	"None of the above"
* item[=].item[=].required = true

* item[=].item[+].prefix = "3.3"
* item[=].item[=].text = "During the COVID-19 pandemic have you been exposed to someone likely to have COVID-19? (check all that apply)"
* item[=].item[=].linkId = "covid19HealthExposureStatus.other"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"Yes, someone with positive test"
* item[=].item[=].answerOption[1].valueString = 	"Yes, someone with the symptoms likely to be associated with an infection"
* item[=].item[=].answerOption[2].valueString = 	"No"
* item[=].item[=].required = true

* item[=].item[+].prefix = "3.4"
* item[=].item[=].text = "During the COVID-19 pandemic have you or anyone in your household been diagnosed with COVID-19?"
* item[=].item[=].linkId = "covid19HealthExposureStatus.household"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL361-7"
* item[=].item[=].required = true

* item[=].item[+].prefix = "3.5"
* item[=].item[=].text = "During the COVID-19 pandemic have any of the following happened to you or anyone in your household because of COVID-19? (check all that apply)"
* item[=].item[=].linkId = "covid19HealthExposureStatus.householdEvents"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueString = 	"Fallen ill physically"
* item[=].item[=].answerOption[1].valueString = 	"Hospitalized"
* item[=].item[=].answerOption[2].valueString = 	"Passed away"
* item[=].item[=].answerOption[3].valueString = 	"Put into self-quarantine with symptoms"
* item[=].item[=].answerOption[4].valueString = 	"Put into self-quarantine without symptoms (e.g., due to possible exposure)"
* item[=].item[=].answerOption[5].valueString = 	"None of the above"
* item[=].item[=].required = true


// SECTION 4
* item[+].prefix = "4"
* item[=].text = "COVID-19 PSYCHOLOGICAL IMPACT"
* item[=].linkId = "covid19PsychologicalImpact"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "A)"
* item[=].item[=].text = "General questions regarding COVID-19 related burden"
* item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions"
* item[=].item[=].type = #group


* item[=].item[=].item[0].prefix = "4.1"
* item[=].item[=].item[=].text = "How burdened have you felt by the COVID-19 pandemic in the last 2 weeks?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.last2Weeks"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-1"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "4.2"
* item[=].item[=].item[=].text = "How burdened have you felt by the COVID-19 pandemic at its highest peak?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.highestPeak"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-1"
* item[=].item[=].item[=].required = true


* item[=].item[=].item[+].prefix = "4.3"
* item[=].item[=].item[=].text = "How often have you experienced the following statements during the last two weeks?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks"
* item[=].item[=].item[=].type = #group


* item[=].item[=].item[=].item[0].prefix = "4.3.1"
* item[=].item[=].item[=].item[=].text = "I felt sufficiently informed about COVID-19."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.informed"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.3.2"
* item[=].item[=].item[=].item[=].text = "I felt protected by the actions of national and local governments."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.protected"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.3.3"
* item[=].item[=].item[=].item[=].text = "I was afraid of getting infected."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.afraid"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.3.4"
* item[=].item[=].item[=].item[=].text = "I was afraid to infect relatives or the family."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.afraidForFamily"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.3.5"
* item[=].item[=].item[=].item[=].text = "I felt isolated."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.isolated"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.3.6"
* item[=].item[=].item[=].item[=].text = "I felt avoided by others."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.avoided"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.3.7"
* item[=].item[=].item[=].item[=].text = "I felt physically or mentally exhausted."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelings2Weeks.exhausted"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "4.4"
* item[=].item[=].item[=].text = "How often have you experienced the following statements during the highest peak of COVID-19 pandemic?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak"
* item[=].item[=].item[=].type = #group


* item[=].item[=].item[=].item[0].prefix = "4.4.1"
* item[=].item[=].item[=].item[=].text = "I felt sufficiently informed about COVID-19."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.informed"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.4.2"
* item[=].item[=].item[=].item[=].text = "I felt protected by the actions of national and local governments."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.protected"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.4.3"
* item[=].item[=].item[=].item[=].text = "I was afraid of getting infected."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.afraid"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.4.4"
* item[=].item[=].item[=].item[=].text = "I was afraid to infect relatives or the family."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.afraidForFamily"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.4.5"
* item[=].item[=].item[=].item[=].text = "I felt isolated."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.isolated"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.4.6"
* item[=].item[=].item[=].item[=].text = "I felt avoided by others."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.avoided"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.4.7"
* item[=].item[=].item[=].item[=].text = "I felt physically or mentally exhausted."
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.generalQuestions.feelingsPeak.exhausted"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-3"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[+].prefix = "B)"
* item[=].item[=].text = "PHQ-4"
* item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4"
* item[=].item[=].type = #group


* item[=].item[=].item[0].prefix = "4.5"
* item[=].item[=].item[=].text = "During the last 2 weeks, how often have you been bothered by the following problems?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[0].prefix = "4.5.1"
* item[=].item[=].item[=].item[=].text = "Little interest or pleasure in doing things"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.littleIntrest"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.5.2"
* item[=].item[=].item[=].item[=].text = "Feeling down, depressed, or hopeless"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.depressed"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.5.3"
* item[=].item[=].item[=].item[=].text = "Feeling nervous, anxious or on edge"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.anxious"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.5.4"
* item[=].item[=].item[=].item[=].text = "Not being able to stop or control worrying"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problems2Weeks.worrying"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "4.6"
* item[=].item[=].item[=].text = "During the highest peak of COVID-19 pandemic, how often have you been bothered by the following problems?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak"
* item[=].item[=].item[=].type = #group

* item[=].item[=].item[=].item[0].prefix = "4.6.1"
* item[=].item[=].item[=].item[=].text = "Little interest or pleasure in doing things"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.littleIntrest"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.6.2"
* item[=].item[=].item[=].item[=].text = "Feeling down, depressed, or hopeless"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.depressed"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.6.3"
* item[=].item[=].item[=].item[=].text = "Feeling nervous, anxious or on edge"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.anxious"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[=].item[+].prefix = "4.6.4"
* item[=].item[=].item[=].item[=].text = "Not being able to stop or control worrying"
* item[=].item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.problemsPeak.worrying"
* item[=].item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-4-5"
* item[=].item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "4.7"
* item[=].item[=].item[=].text = "Have you taken advantage of psychosocial support services since the beginning of the COVID-19 pandemic to reduce the burden? (e.g. online information, personal/video counselling, team counselling etc.)?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.psychosocialSupport"
* item[=].item[=].item[=].type = #open-choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "No"
* item[=].item[=].item[=].answerOption[1].valueString = "None available"
* item[=].item[=].item[=].answerOption[2].valueString = "Yes, and this is:"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "4.8"
* item[=].item[=].item[=].text = "Since the beginning of the COVID-19 pandemic, have there been any extraordinary stresses (e.g. death or serious illness of a close person, your own serious illness, divorce/separation, etc.) that were not related to the pandemic?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.extraordinaryStress"
* item[=].item[=].item[=].type = #open-choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "No"
* item[=].item[=].item[=].answerOption[1].valueString = "Yes, and this is:"
* item[=].item[=].item[=].required = true



// SECTION 5
* item[+].prefix = "5"
* item[=].text = "LIFESTYLE HABITS"
* item[=].linkId = "lifestyleHabits"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "5.1"
* item[=].item[=].text = "Did you smoke before the COVID-19 pandemic? (including cigarettes, cigarillos, cigars, electronic cigarette)"
* item[=].item[=].linkId = "lifestyleHabits.smokingBeforeCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"No, I have never smoked"
* item[=].item[=].answerOption[1].valueString = 	"No, I quitted smoking"
* item[=].item[=].answerOption[2].valueString = 	"Yes, <7 cigarettes per week"
* item[=].item[=].answerOption[3].valueString = 	"Yes, <10 cigarettes per day"
* item[=].item[=].answerOption[4].valueString = 	"Yes, >10 cigarettes per day"
* item[=].item[=].required = true

* item[=].item[+].prefix = "5.2"
* item[=].item[=].text = "Do you currently smoke? (including cigarettes, cigarillos, cigars, electronic cigarette)"
* item[=].item[=].linkId = "lifestyleHabits.smokingNow"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"No, I have never smoked"
* item[=].item[=].answerOption[1].valueString = 	"No, I quitted smoking"
* item[=].item[=].answerOption[2].valueString = 	"Yes, <7 cigarettes per week"
* item[=].item[=].answerOption[3].valueString = 	"Yes, <10 cigarettes per day"
* item[=].item[=].answerOption[4].valueString = 	"Yes, >10 cigarettes per day"
* item[=].item[=].required = true

* item[=].item[+].prefix = "5.3"
* item[=].item[=].text = "Did you drink alcoholic beverages before the COVID-19 pandemic?"
* item[=].item[=].linkId = "lifestyleHabits.alcohoolBeforeCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"No, I have never drank (on a daily basis)"
* item[=].item[=].answerOption[1].valueString = 	"No, I quitted drinking (on a daily basis)"
* item[=].item[=].answerOption[2].valueString = 	"Yes, occasionally"
* item[=].item[=].answerOption[3].valueString = 	"Yes, daily"
* item[=].item[=].required = true

* item[=].item[+].prefix = "5.4"
* item[=].item[=].text = "Do you currently drink alcoholic beverages?"
* item[=].item[=].linkId = "lifestyleHabits.alcohoolNow"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"No, I have never drank (on a daily basis)"
* item[=].item[=].answerOption[1].valueString = 	"No, I quitted drinking (on a daily basis)"
* item[=].item[=].answerOption[2].valueString = 	"Yes, occasionally"
* item[=].item[=].answerOption[3].valueString = 	"Yes, daily"
* item[=].item[=].required = true

* item[=].item[+].prefix = "5.5"
* item[=].item[=].text = "Did you use recreational drugs before the COVID-19 pandemic?"
* item[=].item[=].linkId = "lifestyleHabits.drugsBeforeCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"No, I have never used recreational drugs"
* item[=].item[=].answerOption[1].valueString = 	"No, I quitted using recreational drugs"
* item[=].item[=].answerOption[2].valueString = 	"Yes, occasionally"
* item[=].item[=].answerOption[3].valueString = 	"Yes, regularly"
* item[=].item[=].required = true

* item[=].item[+].prefix = "5.6"
* item[=].item[=].text = "Do you currently use recreational drugs?"
* item[=].item[=].linkId = "lifestyleHabits.drugsNow"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"No, I have never used recreational drugs"
* item[=].item[=].answerOption[1].valueString = 	"No, I quitted using recreational drugs"
* item[=].item[=].answerOption[2].valueString = 	"Yes, occasionally"
* item[=].item[=].answerOption[3].valueString = 	"Yes, regularly"
* item[=].item[=].required = true

// SECTION 6
* item[+].prefix = "6"
* item[=].text = "PHYSICAL ACTIVITY"
* item[=].linkId = "physicalActivity"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "6.1"
* item[=].item[=].text = "During the last 2 weeks, how many times have you done 20 minutes of vigorous physical activity that made you sweat or puff and pant? (for example, jogging, heavy lifting, digging, aerobics, or fast bicycling)"
* item[=].item[=].linkId = "physicalActivity.vigorous"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"3 or more times/week"
* item[=].item[=].answerOption[1].valueString = 	"1–2 times/week"
* item[=].item[=].answerOption[2].valueString = 	"None"
* item[=].item[=].required = true

* item[=].item[+].prefix = "6.2"
* item[=].item[=].text = "During the last 2 weeks, how many times have you done 30 minutes of moderate physical activity or walking that increased your heart rate or made you breath harder than normal? (for example, mowing the lawn, carrying light loads, bicycling at a regular pace, or playing doubles tennis)"
* item[=].item[=].linkId = "physicalActivity.moderate"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"5 or more times/week"
* item[=].item[=].answerOption[1].valueString = 	"3–4 times/week"
* item[=].item[=].answerOption[2].valueString = 	"1–2 times/week"
* item[=].item[=].answerOption[3].valueString = 	"None"
* item[=].item[=].required = true

* item[=].item[+].prefix = "6.3"
* item[=].item[=].text = "During the last 2 weeks, on average, how much time did you spend sitting or lying down daily? (Include time spent at work, at home, and during leisure time. This may include time spent sitting at a desk, visiting friends/socialising, reading, or sitting/lying down to watch television, use the computer/mobile/tablet/Internet. Don’t count the time you spent in bed sleeping.)"
* item[=].item[=].linkId = "physicalActivity.sedentaryTime"
* item[=].item[=].type = #integer
* item[=].item[=].required = true

* item[=].item[+].prefix = "6.4"
* item[=].item[=].text = "How would you consider the amount of physical activity you have done in the last 2 weeks in comparison to what you usually did before COVID-19 pandemic?"
* item[=].item[=].linkId = "physicalActivity.overallLast2Weeks"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"Now I do less physical activity"
* item[=].item[=].answerOption[1].valueString = 	"Now I do more or less the same amount of physical activity"
* item[=].item[=].answerOption[2].valueString = 	"Now I do more physical activity"
* item[=].item[=].required = true

// SECTION 7
* item[+].prefix = "7"
* item[=].text = "SLEEP HEALTH"
* item[=].linkId = "sleepHealth"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "7.1"
* item[=].item[=].text = "During the last 2 weeks, were you satisfied with your sleep?"
* item[=].item[=].linkId = "sleepHealth.satisfaction"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-1"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.2"
* item[=].item[=].text = "During the last 2 weeks, did you stay awake all day without dozing?"
* item[=].item[=].linkId = "sleepHealth.awakeAllDay"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-1"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.3"
* item[=].item[=].text = "During the last 2 weeks, were you asleep (or trying to sleep) between 2:00 a.m. and 4:00 a.m.?"
* item[=].item[=].linkId = "sleepHealth.asleepDuringNightHours"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-1"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.4"
* item[=].item[=].text = "During the last 2 weeks, did you spend less than 30 minutes awake at night? (This includes the time it takes to fall asleep plus awakenings during sleep.)"
* item[=].item[=].linkId = "sleepHealth.timeAwake"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-1"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.5"
* item[=].item[=].text = "During the last 2 weeks, did you sleep between 6 and 8 hours per day?"
* item[=].item[=].linkId = "sleepHealth.sleepDuration"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-1"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.6"
* item[=].item[=].text = "During the last 2 weeks, did you go to bed and get out of bed at about the same time (within one hour) every day?"
* item[=].item[=].linkId = "sleepHealth.regularity"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-1"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.7"
* item[=].item[=].text = "How would you consider the quality of your sleep in the last 2 weeks in comparison to what you experienced before COVID-19 pandemic?"
* item[=].item[=].linkId = "sleepHealth.overallQualityVsBeforeCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-7"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.8"
* item[=].item[=].text = "How would you consider the quality of your sleep in the last 2 weeks in comparison to what you experienced during the highest peak of COVID-19 pandemic?"
* item[=].item[=].linkId = "sleepHealth.overallQualityVsPeakCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-7"
* item[=].item[=].required = true

* item[=].item[+].prefix = "7.9"
* item[=].item[=].text = "Do you take medication to sleep?"
* item[=].item[=].linkId = "sleepHealth.medication"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = 	"Yes, both before and during the pandemic."
* item[=].item[=].answerOption[1].valueString = 	"Yes, I started it during the pandemic."
* item[=].item[=].answerOption[2].valueString = 	"No, but I have used it before the pandemic."
* item[=].item[=].answerOption[3].valueString = 	"No, I have never used medication to sleep."
* item[=].item[=].required = true


// SECTION 8
* item[+].prefix = "8"
* item[=].text = "ADOPTION OF DIGITAL HEALTHCARE SOLUTIONS: A.VIRTUAL CONSULTATIONS"
* item[=].linkId = "virtualConsultations"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "8.0"
* item[=].item[=].text = "Virtual consultations provide an alternative to face-to-face consultations for all aspects of healthcare, including diagnosis, treatment and rehabilitation. In virtual consultations, the provider (i.e. primary care physician) and patient are in different locations, with support and care provided through telephone, video, mobile apps, email, text/SMS messaging or online platforms."
* item[=].item[=].linkId = "virtualConsultations.display"
* item[=].item[=].type = #display

* item[=].item[+].prefix = "8.1"
* item[=].item[=].text = "Before the COVID-19 pandemic, have you had any virtual (telephone, online) consultations with your healthcare provider?"
* item[=].item[=].linkId = "virtualConsultations.beforeCovid19Virtual"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL361-7"
* item[=].item[=].required = true

* item[=].item[+].prefix = "8.2"
* item[=].item[=].text = "During the COVID-19 pandemic, have you had any face-to-face consultations with your healthcare provider?"
* item[=].item[=].linkId = "virtualConsultations.duringCovid19F2F"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL361-7"
* item[=].item[=].required = true

* item[=].item[+].prefix = "8.3"
* item[=].item[=].text = "During the COVID-19 pandemic, have you had any virtual (telephone, online) consultations with your healthcare provider?"
* item[=].item[=].linkId = "virtualConsultations.duringCovid19Virtual"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL361-7"
* item[=].item[=].required = true

* item[=].item[+].prefix = "8.4"
* item[=].item[=].text = "How useful was the virtual consultation?"
* item[=].item[=].linkId = "virtualConsultations.duringCovid19VirtualUsefulness"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = "Very useful"
* item[=].item[=].answerOption[1].valueString = "Useful"
* item[=].item[=].answerOption[2].valueString = "Average"
* item[=].item[=].answerOption[3].valueString = "Not useful"
* item[=].item[=].answerOption[4].valueString = "Not useful at all"
* item[=].item[=].required = false

* item[=].item[+].prefix = "8.5"
* item[=].item[=].text = "Would you be willing to attend virtual consultations in the future?"
* item[=].item[=].linkId = "virtualConsultations.futureWill"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = "No, I would not want any virtual consultations"
* item[=].item[=].answerOption[1].valueString = "Yes, but only as part of a mix of face-to-face and virtual consultations"
* item[=].item[=].answerOption[2].valueString = "Yes, as many of my consultations as possible"
* item[=].item[=].required = true


// SECTION 9
* item[+].prefix = "9"
* item[=].text = "ADOPTION OF DIGITAL HEALTHCARE SOLUTIONS: B.DIGITAL HEALTHCARE"
* item[=].linkId = "digitalHealthcare"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "9.0"
* item[=].item[=].text = "Digital healthcare can be defined as the convergence of digital technologies with traditional healthcare provision, aiming to enhance the efficiency of healthcare delivery to make medicine more personalized and precise. Digital healthcare includes tools and technologies such as electronic health records, mobile apps, wearables that track fitness, lifestyle and vital signs, smart scales and chatbots. Do not worry if any of these terms are unfamiliar to you."
* item[=].item[=].linkId = "digitalHealthcare.display"
* item[=].item[=].type = #display

* item[=].item[+].prefix = "9.1"
* item[=].item[=].text = "Before the COVID-19 pandemic, which of the following digital health technologies have you used to manage your health? (check all that apply; do not worry if any of these technologies are unfamiliar to you)"
* item[=].item[=].linkId = "digitalHealthcare.healthTechnologiesUsedBeforeCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueString = "Virtual consultation"
* item[=].item[=].answerOption[1].valueString = "Remote monitoring"
* item[=].item[=].answerOption[2].valueString = "Smartphone/tablet apps (e.g., tracking personal activity or psychological well-being)"
* item[=].item[=].answerOption[3].valueString = "Wearable technology (e.g., a wristband activity tracker)"
* item[=].item[=].answerOption[4].valueString = "Smart scales"
* item[=].item[=].answerOption[5].valueString = "Websites"
* item[=].item[=].answerOption[6].valueString = "Social media"
* item[=].item[=].answerOption[7].valueString = "Electronic health records"
* item[=].item[=].answerOption[8].valueString = "Online support communities"
* item[=].item[=].answerOption[9].valueString = "Other"
* item[=].item[=].answerOption[10].valueString = "None"
* item[=].item[=].required = true

* item[=].item[+].prefix = "9.2"
* item[=].item[=].text = "During the COVID-19 pandemic, which of the following digital health technologies have you used to manage your health? (check all that apply; do not worry if any of these technologies are unfamiliar to you)"
* item[=].item[=].linkId = "digitalHealthcare.healthTechnologiesUsedDuringCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueString = "Virtual consultation"
* item[=].item[=].answerOption[1].valueString = "Remote monitoring"
* item[=].item[=].answerOption[2].valueString = "Smartphone/tablet apps (e.g., tracking personal activity or psychological well-being)"
* item[=].item[=].answerOption[3].valueString = "Wearable technology (e.g., a wristband activity tracker)"
* item[=].item[=].answerOption[4].valueString = "Smart scales"
* item[=].item[=].answerOption[5].valueString = "Websites"
* item[=].item[=].answerOption[6].valueString = "Social media"
* item[=].item[=].answerOption[7].valueString = "Electronic health records"
* item[=].item[=].answerOption[8].valueString = "Online support communities"
* item[=].item[=].answerOption[9].valueString = "Other"
* item[=].item[=].answerOption[10].valueString = "None"
* item[=].item[=].required = true

* item[=].item[+].prefix = "9.3"
* item[=].item[=].text = "Which of the following would you do virtually if given the choice? (check all that apply)"
* item[=].item[=].linkId = "digitalHealthcare.usageIntent"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueString = "Health and wellness advisories"
* item[=].item[=].answerOption[1].valueString = "Remote monitoring of ongoing health issues through at-home devices"
* item[=].item[=].answerOption[2].valueString = "Routine appointments"
* item[=].item[=].answerOption[3].valueString = "Mental health appointments"
* item[=].item[=].answerOption[4].valueString = "Appointments with medical specialists from chronic conditions"
* item[=].item[=].answerOption[5].valueString = "Appointments with medical specialists for diagnosis or acute care"
* item[=].item[=].answerOption[6].valueString = "Diagnoses for illnesses, diseases and disorders"
* item[=].item[=].answerOption[7].valueString = "None of the above"
* item[=].item[=].required = true

* item[=].item[+].prefix = "9.4"
* item[=].item[=].text = "What might keep you from using digital health technologies (e.g., chatbots, apps or digital devices) for your health questions and care? (check all that apply)"
* item[=].item[=].linkId = "digitalHealthcare.usageImpediments"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = true
* item[=].item[=].answerOption[0].valueString = "Concerns about my privacy or data security"
* item[=].item[=].answerOption[1].valueString = "Don’t trust the effectiveness of the service"
* item[=].item[=].answerOption[2].valueString = "Prefer my current providers"
* item[=].item[=].answerOption[3].valueString = "Don’t take the initiative to try something new or change my habit"
* item[=].item[=].answerOption[4].valueString = "Don’t know where to start"
* item[=].item[=].answerOption[5].valueString = "Lack of access or affordability of the devices I need"
* item[=].item[=].answerOption[6].valueString = "Haven’t heard of any"
* item[=].item[=].answerOption[7].valueString = "None of the above"
* item[=].item[=].required = true

* item[=].item[+].prefix = "9.5"
* item[=].item[=].text = "Overall, how confident are you that your digital healthcare data is being used responsibly and in your best interest?"
* item[=].item[=].linkId = "digitalHealthcare.responsibleDataUsageConfidence"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerOption[0].valueString = "Not at all confident"
* item[=].item[=].answerOption[1].valueString = "Not very confident"
* item[=].item[=].answerOption[2].valueString = "Somewhat confident"
* item[=].item[=].answerOption[3].valueString = "Very confident"
* item[=].item[=].required = true

* item[=].item[+].prefix = "9.6"
* item[=].item[=].text = "Overall, how much do you trust each of the following people or organizations to keep your digital healthcare information (including electronic medical records and other information) secure?"
* item[=].item[=].linkId = "digitalHealthcare.trust"
* item[=].item[=].type = #group

* item[=].item[=].item[0].prefix = "9.6.1"
* item[=].item[=].item[=].text = "Hospitals I visit"
* item[=].item[=].item[=].linkId = "digitalHealthcare.trust.hospitals"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-9-6"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "9.6.2"
* item[=].item[=].item[=].text = "My doctor(s) or other healthcare providers"
* item[=].item[=].item[=].linkId = "digitalHealthcare.trust.doctors"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-9-6"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "9.6.3"
* item[=].item[=].item[=].text = "My pharmacy"
* item[=].item[=].item[=].linkId = "digitalHealthcare.trust.pharmacy"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-9-6"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "9.6.4"
* item[=].item[=].item[=].text = "Labs that process my medical tests"
* item[=].item[=].item[=].linkId = "digitalHealthcare.trust.labs"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-9-6"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "9.6.5"
* item[=].item[=].item[=].text = "My health insurance company"
* item[=].item[=].item[=].linkId = "digitalHealthcare.trust.insuranceCompany"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-9-6"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "9.6.6"
* item[=].item[=].item[=].text = "Technological companies"
* item[=].item[=].item[=].linkId = "digitalHealthcare.trust.techCompany"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-9-6"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "9.6.7"
* item[=].item[=].item[=].text = "Government"
* item[=].item[=].item[=].linkId = "digitalHealthcare.trust.government"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-9-6"
* item[=].item[=].item[=].required = true

// SECTION 10
* item[+].prefix = "10"
* item[=].text = "EFFECTS OF COVID-19 ON CHRONIC DISEASES MANAGEMENT"
* item[=].linkId = "covid19EffectsOnChronicDiseases"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "A)"
* item[=].item[=].text = "ACCESS TO MEDICAL CARE"
* item[=].item[=].linkId = "accessMedCare"
* item[=].item[=].type = #group

* item[=].item[=].item[0].prefix = "10.1"
* item[=].item[=].item[=].text = "During the COVID-19 pandemic, how easy has it been for you to make an appointment with your doctor compared with the period before the COVID-19 pandemic?"
* item[=].item[=].item[=].linkId = "accessMedCares.bookAppointmentDuringCovid19"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "Much harder"
* item[=].item[=].item[=].answerOption[1].valueString = "Somewhat harder"
* item[=].item[=].item[=].answerOption[2].valueString = "No change"
* item[=].item[=].item[=].answerOption[3].valueString = "Somewhat easier"
* item[=].item[=].item[=].answerOption[4].valueString = "Much easier"
* item[=].item[=].item[=].answerOption[5].valueString = "Not applicable"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "10.2"
* item[=].item[=].item[=].text = "During the COVID-19 pandemic, how long did you have to wait for an appointment with your doctor compared with the period before the COVID-19 pandemic?"
* item[=].item[=].item[=].linkId = "accessMedCares.waitAppointmentDuringCovid19"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "Much longer"
* item[=].item[=].item[=].answerOption[1].valueString = "Somewhat longer"
* item[=].item[=].item[=].answerOption[2].valueString = "Stayed the same"
* item[=].item[=].item[=].answerOption[3].valueString = "Somewhat shorter"
* item[=].item[=].item[=].answerOption[4].valueString = "Much shorter"
* item[=].item[=].item[=].answerOption[5].valueString = "Not applicable"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "10.3"
* item[=].item[=].item[=].text = "During the COVID-19 pandemic, did you have any problems with receiving prescriptions for your medications?"
* item[=].item[=].item[=].linkId = "accessMedCares.prescriptionDuringCovid19"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "Each time"
* item[=].item[=].item[=].answerOption[1].valueString = "Very often"
* item[=].item[=].item[=].answerOption[2].valueString = "Sometimes"
* item[=].item[=].item[=].answerOption[3].valueString = "Rarely"
* item[=].item[=].item[=].answerOption[4].valueString = "Never"
* item[=].item[=].item[=].answerOption[5].valueString = "Not applicable"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "10.4"
* item[=].item[=].item[=].text = "During the COVID-19 pandemic, did you ran out of any of your prescribed drugs?"
* item[=].item[=].item[=].linkId = "accessMedCares.prescriptionRunoutDuringCovid19"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "No"
* item[=].item[=].item[=].answerOption[1].valueString = "Yes, once"
* item[=].item[=].item[=].answerOption[2].valueString = "Yes, twice or more"
* item[=].item[=].item[=].answerOption[3].valueString = "Not applicable"
* item[=].item[=].item[=].required = true

* item[=].item[+].prefix = "B)"
* item[=].item[=].text = "MOTIVATION AND SUPPORT"
* item[=].item[=].linkId = "motivationAndSupport"
* item[=].item[=].type = #group

* item[=].item[=].item[0].prefix = "10.5"
* item[=].item[=].item[=].text = "During the COVID-19 pandemic, what was the level of support you received from your friends and family members in relation to your health condition(s) compared with the period before the COVID-19 pandemic?"
* item[=].item[=].item[=].linkId = "motivationAndSupport.family"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "Much worse"
* item[=].item[=].item[=].answerOption[1].valueString = "Somewhat worse"
* item[=].item[=].item[=].answerOption[2].valueString = "Stayed the same"
* item[=].item[=].item[=].answerOption[3].valueString = "Somewhat better"
* item[=].item[=].item[=].answerOption[4].valueString = "Much better"
* item[=].item[=].item[=].answerOption[5].valueString = "Not applicable"
* item[=].item[=].item[=].required = true

* item[=].item[=].item[+].prefix = "10.6"
* item[=].item[=].item[=].text = "During the COVID-19 pandemic, what was the level of support you received from healthcare professionals in relation to your health condition(s) compared with the period before the COVID-19 pandemic?"
* item[=].item[=].item[=].linkId = "motivationAndSupport.healthcareProfessionals"
* item[=].item[=].item[=].type = #choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "Much worse"
* item[=].item[=].item[=].answerOption[1].valueString = "Somewhat worse"
* item[=].item[=].item[=].answerOption[2].valueString = "Stayed the same"
* item[=].item[=].item[=].answerOption[3].valueString = "Somewhat better"
* item[=].item[=].item[=].answerOption[4].valueString = "Much better"
* item[=].item[=].item[=].answerOption[5].valueString = "Not applicable"
* item[=].item[=].item[=].required = true


// SECTION 11
* item[+].prefix = "11"
* item[=].text = "COVID-19 VACCINATION"
* item[=].linkId = "covid19Vaccination"
* item[=].type = #group
* item[=].required = true

* item[=].item[0].prefix = "11.1"
* item[=].item[=].text = "How well-informed do you feel about the COVID-19 vaccines?"
* item[=].item[=].linkId = "covid19Vaccination.informed"
* item[=].item[=].type = #integer
* item[=].item[=].required = true

* item[=].item[+].prefix = "11.2"
* item[=].item[=].text = "Have you been administered a COVID-19 vaccination (at least 1st dose)?"
* item[=].item[=].linkId = "covid19Vaccination.status"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL361-7"
* item[=].item[=].required = true

* item[=].item[+].prefix = "11.3"
* item[=].item[=].text = "Are you willing to take COVID-19 vaccination?"
* item[=].item[=].linkId = "covid19Vaccination.will"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL865-7"
* item[=].item[=].required = false

* item[=].item[+].prefix = "11.4"
* item[=].item[=].text = "Have you experienced any adverse effects of COVID-19 vaccination?"
* item[=].item[=].linkId = "covid19Vaccination.adverseEffects"
* item[=].item[=].repeats = false
* item[=].item[=].type = #choice
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL865-7"
* item[=].item[=].required = false

* item[=].item[+].prefix = "11.5"
* item[=].item[=].text = "Would you agree to take COVID-19 vaccination every year?"
* item[=].item[=].linkId = "covid19Vaccination.everyYear"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"https://fhir.loinc.org/ValueSet/?url=http://loinc.org/vs/LL865-7"
* item[=].item[=].required = true


