Alias: $string = string

Instance: covid-quest-2
InstanceOf: http://hl7.org/fhir/StructureDefinition/Questionnaire
Title: "Short Questionnaire COVID-19 GateKeeper"
Description: "Example of questionnaire defined for the COVID-19 Short Survey by the GATEKEEPER project"

* version = "0.0.1"
* contained[0] = inlineValueSet-covid19-4-1
* contained[+] = inlineValueSet-covid19-7-7

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


// SECTION 2
* item[+].prefix = "2"
* item[=].text = "OVERALL HEALTH STATUS"
* item[=].linkId = "overallHealthStatus"
* item[=].type = #group
* item[=].required = true

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

* item[=].item[+].prefix = "B)"
* item[=].item[=].text = "PHQ-4"
* item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4"
* item[=].item[=].type = #group

* item[=].item[=].item[+].prefix = "4.7"
* item[=].item[=].item[=].text = "Have you taken advantage of psychosocial support services since the beginning of the COVID-19 pandemic to reduce the burden? (e.g. online information, personal/video counselling, team counselling etc.)?"
* item[=].item[=].item[=].linkId = "covid19PsychologicalImpact.PHQ4.psychosocialSupport"
* item[=].item[=].item[=].type = #open-choice
* item[=].item[=].item[=].repeats = false
* item[=].item[=].item[=].answerOption[0].valueString = "No"
* item[=].item[=].item[=].answerOption[1].valueString = "None available"
* item[=].item[=].item[=].answerOption[2].valueString = "Yes, and this is:"
* item[=].item[=].item[=].required = true


// SECTION 6
* item[+].prefix = "6"
* item[=].text = "PHYSICAL ACTIVITY"
* item[=].linkId = "physicalActivity"
* item[=].type = #group
* item[=].required = true

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

* item[=].item[+].prefix = "7.7"
* item[=].item[=].text = "How would you consider the quality of your sleep in the last 2 weeks in comparison to what you experienced before COVID-19 pandemic?"
* item[=].item[=].linkId = "sleepHealth.overallQualityVsBeforeCovid19"
* item[=].item[=].type = #choice
* item[=].item[=].repeats = false
* item[=].item[=].answerValueSet = 	"#inlineValueSet-covid19-7-7"
* item[=].item[=].required = true

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
* item[=].item[=].type = #open-choice
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
* item[=].item[=].answerOption[9].valueString = "Other:"
* item[=].item[=].answerOption[10].valueString = "None"
* item[=].item[=].required = true

* item[=].item[+].prefix = "9.2"
* item[=].item[=].text = "During the COVID-19 pandemic, which of the following digital health technologies have you used to manage your health? (check all that apply; do not worry if any of these technologies are unfamiliar to you)"
* item[=].item[=].linkId = "digitalHealthcare.healthTechnologiesUsedDuringCovid19"
* item[=].item[=].type = #open-choice
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
* item[=].item[=].answerOption[9].valueString = "Other:"
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
