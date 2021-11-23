/* ========================== COMMENTED
Instance: Inline-CodeSystem-mauq
InstanceOf: CodeSystem
Usage: #inline

* url = "http://hl7.eu/fhir/ig/gk/Questionnaire/mauq#Inline-mauq-cs"
* status = #active
* content = #complete
* concept[0].code = #na
* concept[=].display = "Not Applicable"
* concept[=].definition = "Not Applicable"
				
* concept[+].code = #1  
* concept[=].display = "Strongly disagree"           
* concept[=].definition = "Strongly disagree"
* concept[+].code = #2  
* concept[=].display = "Disagree"                    
* concept[=].definition = "Disagree"
* concept[+].code = #3  
* concept[=].display = "Somewhat disagree"           
* concept[=].definition = "Somewhat disagree"
* concept[+].code = #4  
* concept[=].display = "Neither agree nor disagree"  
* concept[=].definition = "Neither agree nor disagree"
* concept[+].code = #5  
* concept[=].display = "Somewhat agree"              
* concept[=].definition = "Somewhat agree"
* concept[+].code = #6  
* concept[=].display = "Agree"                       
* concept[=].definition = "Agree" 
* concept[+].code = #7  
* concept[=].display = "Strongly agree"              
* concept[=].definition = "Strongly agree"

========== */

Instance: Inline-ValueSet-mauq
InstanceOf: ValueSet
Usage: #inline
// * url = "http://hl7.eu/fhir/ig/gk/Questionnaire/mauq#Inline-ValueSet-mauq"
// * contained[0] = Inline-CodeSystem-mauq
* status = #active
* name = "InlineValueSetMauq"
* compose.include.system = "http://hl7.eu/fhir/ig/gk/Questionnaire/mauq#Inline-mauq-cs"
* compose.include.concept[0].code = #1 
* compose.include.concept[=].display = "Strongly disagree"           
* compose.include.concept[+].code = #2 
* compose.include.concept[=].display = "Disagree"                    
* compose.include.concept[+].code = #3 
* compose.include.concept[=].display = "Somewhat disagree"           
* compose.include.concept[+].code = #4 
* compose.include.concept[=].display = "Neither agree nor disagree"  
* compose.include.concept[+].code = #5 
* compose.include.concept[=].display = "Somewhat agree"              
* compose.include.concept[+].code = #6 
* compose.include.concept[=].display = "Agree"                       
* compose.include.concept[+].code = #7 
* compose.include.concept[=].display = "Strongly agree"              



Instance: mauq
InstanceOf: Questionnaire
Usage: #example
* version = "0.0.1"
* language = #en-GB
* contained[0] = Inline-ValueSet-mauq
// * contained[+] = Inline-CodeSystem-mauq

* name = "MAUQ"
* title = "mHealth App Usability Questionnaire (MAUQ) for Standalone mHealth Apps Used by Patients"
* status = #active
* date = "2021-11-22"
* publisher = "SHRS, University of Pittsburgh"
* contact.name = "School of Health and Rehabilitation Sciences Department of Health Information Management. University of Pittsburgh."
* contact.telecom[0].system = #phone
* contact.telecom[=].value = "412-383-6653"
* contact.telecom[+].system = #fax
* contact.telecom[=].value = "412-383-6655"
* contact.telecom[+].system = #url
* contact.telecom[=].value = "https://www.shrs.pitt.edu/"
* contact.telecom[+].system = #url
* contact.telecom[=].value = "http://www.shrs.pitt.edu/him"

* description = "mHealth App Usability Questionnaire (MAUQ) for Standalone mHealth Apps Used by Patients.\r\nSchool of Health and Rehabilitation Sciences Department of Health Information Management. University of Pittsburgh."
* purpose = "Evaluate mHealth App Usability for Standalone mHealth Apps Used by Patients."
* copyright = "School of Health and Rehabilitation Sciences Department of Health Information Management. University of Pittsburgh."
// * subjectType = #Patient


// ------------------------------------

* item[0].linkId = "1"
* item[=].prefix = "1"
* item[=].type = #choice
* item[=].text = "The app was easy to use."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)

* item[+].linkId = "2"
* item[=].prefix = "2"
* item[=].type = #choice
* item[=].text = "It was easy for me to learn to use the app"
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "3"
* item[=].prefix = "3"
* item[=].type = #choice
* item[=].text = "The navigation was consistent when moving between screens."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "4"
* item[=].prefix = "4"
* item[=].type = #choice
* item[=].text = "The interface of the app allowed me to use all the functions (such as entering information, responding to reminders, viewing information) offered by the app."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "5"
* item[=].prefix = "5"
* item[=].type = #choice
* item[=].text = "Whenever I made a mistake using the app, I could recover easily and quickly."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "6"
* item[=].prefix = "6"
* item[=].type = #choice
* item[=].text = "I like the interface of the app"
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "7"
* item[=].prefix = "7"
* item[=].type = #choice
* item[=].text = "The information in the app was well organized, so I could easily find the information I needed."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "8"
* item[=].prefix = "8"
* item[=].type = #choice
* item[=].text = "The app adequately acknowledged and provided information to let me know the progress of my action."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "9"
* item[=].prefix = "9"
* item[=].type = #choice
* item[=].text = "I feel comfortable using this app in social settings."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "10"
* item[=].prefix = "10"
* item[=].type = #choice
* item[=].text = "The amount of time involved in using this app has been fitting for me."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "11"
* item[=].prefix = "11"
* item[=].type = #choice
* item[=].text = "I would use this app again"
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "12"
* item[=].prefix = "12"
* item[=].type = #choice
* item[=].text = "Overall, I am satisfied with this app"
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "13"
* item[=].prefix = "13"
* item[=].type = #choice
* item[=].text = "The app would be useful for my health and well-being."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "14"
* item[=].prefix = "14"
* item[=].type = #choice
* item[=].text = "The app improved my access to healthcare services."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "15"
* item[=].prefix = "15"
* item[=].type = #choice
* item[=].text = "The app helped me manage my health effectively."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "16"
* item[=].prefix = "16"
* item[=].type = #choice
* item[=].text = "This app has all the functions and capabilities I expected it to have."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "17"
* item[=].prefix = "17"
* item[=].type = #choice
* item[=].text = "I could use the app even when the Internet connection was poor or not available."
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)
* item[+].linkId = "18"
* item[=].prefix = "18"
* item[=].type = #choice
* item[=].text = "This mHealth app provides an acceptable way to receive healthcare services, such as accessing educational materials, tracking my own activities, and performing self-assessment"
* item[=].required = true
* item[=].repeats = false
* item[=].answerValueSet = Canonical(Inline-ValueSet-mauq)


* item[+].linkId = "Notes"
// * item[=].prefix = "Notes"
* item[=].type = #display
* item[=].text = "In this questionnaire, 1 - strongly disagree, 2 – disagree, 3 – somewhat disagree, 4 – neither agree nor disagree, 5 – somewhat agree, 6 – agree, 7 – strongly agree. \r\n
To determine the usability of an app, calculate the total and determine the average of the 
responses to all statements. The higher the overall average, the higher the usability of the app. \r\n
Please cite: Zhou L, Bao J, Setiawan A, Saptono A, Parmanto B, (2019), 'The mHealth App 
Usability Questionnaire (MAUQ): Development and Validation Study', JMIR mHealth and 
uHealth, 7(4):e11500. DOI: 10.2196/11500. PMID: 30973342"