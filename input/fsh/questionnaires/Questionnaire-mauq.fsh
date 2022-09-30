RuleSet: ExtensionContextRule
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 7
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1

Instance: mauq
InstanceOf: Questionnaire
Usage: #example
* url = "http://example.org/Questionnaire/mauq"
* version = "0.0.1"
* language = #en-GB
* name = "MAUQ"
* title = "MAUQ"
* status = #draft
* date = "2021-05-10"
* publisher = "GATEKEEPER Project - Pilot site"
* description = "mHealth App Usability Questionnaire (MAUQ) for Standalone mHealth Apps Used by Patients."
* subjectType = #Patient

* item[0].linkId = "1"
* item[=].text = "The app was easy to use."
* insert ExtensionContextRule

* item[+].linkId = "2"
* item[=].text = "It was easy for me to learn to use the app."
* insert ExtensionContextRule

* item[+].linkId = "3"
* item[=].text = "The navigation was consistent when moving ☐ between screens."
* insert ExtensionContextRule

* item[+].linkId = "4"
* item[=].text = "The interface of the app allowed me to use all the functions (such as entering information, responding to reminders, viewing information) offered by the app."
* insert ExtensionContextRule

* item[+].linkId = "5"
* item[=].text = "Whenever I made a mistake using the app, I could recover easily and quickly."
* insert ExtensionContextRule

* item[+].linkId = "6"
* item[=].text = "I like the interface of the app."
* insert ExtensionContextRule

* item[+].linkId = "7"
* item[=].text = "The information in the app was well organized, so I could easily find the information I needed."
* insert ExtensionContextRule

* item[+].linkId = "8"
* item[=].text = "The app adequately acknowledged and provided information to let me know the progress of my action."
* insert ExtensionContextRule

* item[+].linkId = "9"
* item[=].text = "I feel comfortable using this app in social settings."
* insert ExtensionContextRule

* item[+].linkId = "10"
* item[=].text = "The amount of time involved in using this app has been fitting for me."
* insert ExtensionContextRule

* item[+].linkId = "11"
* item[=].text = "I would use this app again."
* insert ExtensionContextRule

* item[+].linkId = "12"
* item[=].text = "Overall, I am satisfied with this app."
* insert ExtensionContextRule

* item[+].linkId = "13"
* item[=].text = "The app would be useful for my health and wellbeing."
* insert ExtensionContextRule

* item[+].linkId = "14"
* item[=].text = "The app improved my access to healthcare services."
* insert ExtensionContextRule

* item[+].linkId = "15"
* item[=].text = "The app helped me manage my health effectively."
* insert ExtensionContextRule

* item[+].linkId = "16"
* item[=].text = "This app has all the functions and capabilities I expected it to have."
* insert ExtensionContextRule

* item[+].linkId = "17"
* item[=].text = "I could use the app even when the Internet connection was poor or not available."
* insert ExtensionContextRule

* item[+].linkId = "18"
* item[=].text = "This mHealth app provides an acceptable way to receive healthcare services, such as accessing educational materials, tracking my own activities, and performing self-assessment."
* insert ExtensionContextRule