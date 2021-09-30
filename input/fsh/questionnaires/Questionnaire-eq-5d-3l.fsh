


Instance: Inline-Instance-for-eq5d3l-1-1
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-eq5d3l-1-1"
// * name = "LOINC Codes for Cholesterol in Serum/Plasma"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"You have no problems in walking about"
* compose.include.concept[+].code = #"You have some problems in walking about"
* compose.include.concept[+].code = #"You are confined to bed"


Instance: Inline-Instance-for-eq5d3l-1-2
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-eq5d3l-1-2"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"You have no problems with self-care"
* compose.include.concept[+].code = #"You have some problems washing or dressing yourself"
* compose.include.concept[+].code = #"You are unable to wash or dress yourself"

Instance: Inline-Instance-for-eq5d3l-1-3
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-eq5d3l-1-3"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"You have no problems doing your usual activities"
* compose.include.concept[+].code = #"You have some problems doing your usual activities"
* compose.include.concept[+].code = #"You are unable to do your usual activities"

Instance: Inline-Instance-for-eq5d3l-1-4
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-eq5d3l-1-4"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"You have no pain or discomfort"
* compose.include.concept[+].code = #"You have moderate pain or discomfort"
* compose.include.concept[+].code = #"You have extreme pain or discomfort"

Instance: Inline-Instance-for-eq5d3l-1-5
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-eq5d3l-1-5"
* status = #draft
* compose.include.system = $string
* compose.include.concept[0].code = #"You are not anxious or depressed"
* compose.include.concept[+].code = #"You are moderately anxious or depressed"
* compose.include.concept[+].code = #"You are extremely anxious or depressed"

Instance: eq5d3l
InstanceOf: Questionnaire
Usage: #example
* version = "0.0.1"
* language = #en-GB
* contained[0] = Inline-Instance-for-eq5d3l-1-1
* contained[+] = Inline-Instance-for-eq5d3l-1-2
* contained[+] = Inline-Instance-for-eq5d3l-1-3
* contained[+] = Inline-Instance-for-eq5d3l-1-4
* contained[+] = Inline-Instance-for-eq5d3l-1-5
* name = "EQ5D3L"
* title = "EQ-5D-3L"
* status = #draft
* date = "2021-05-10"
* publisher = "GATEKEEPER Project - UK Pilot site"
* description = "EQ-5D-3L Health Questionnaire. English version for the UK. VERSION FOR INTERVIEWER ADMINISTRATION"
* subjectType = #Patient

* item[0].linkId = "Notes"
// * item[=].prefix = "Notes"
* item[=].type = #display
* item[=].text = "Note to interviewer: although allowance should be made for the interviewer’s particular style of speaking, the wording of the questionnaire instructions should be followed as closely as possible. In the case of the EQ-5D-3L descriptive system on page 2 of the questionnaire, the precise wording must be followed.
If the respondent has difficulty choosing a response, or asks for clarification, the interviewer should repeat the question word for word and ask the respondent to answer in a way that most closely resembles his or her thoughts about his or her health today."


* item[+].linkId = "Introduction"
// * item[=].prefix = "Introduction"
* item[=].type = #display
* item[=].text = "(Note to interviewer: please read the following to the respondent.)

We are trying to find out what you think about your health. 
I will explain what to do as I go along, but please interrupt me if you do not understand something or if things are not clear to you. 
There are no right or wrong answers. We are interested only in your personal view.
First, I am going to read out some questions. Each question has a choice of three answers. Please tell me which answer best describes your health TODAY.
Do not choose more than one answer in each group of questions.

(Note to interviewer: first read all three options for each question. Then ask the respondent to choose which one applies to him/herself. Repeat the question and options if necessary. Mark the appropriate box under each heading. You may need to remind the respondent regularly that the timeframe is TODAY.)"


// EQ-5D DESCRIPTIVE SYSTEM


* item[+].linkId = "1"
// * item[=].prefix = "DESCRIPTIVE SYSTEM"
* item[=].type = #group
* item[=].text = "EQ-5D DESCRIPTIVE SYSTEM"
* item[=].required = true
* item[=].repeats = false

* item[=].item[0].linkId = "1.1"
* item[=].item[=].prefix = "MOBILITY"
* item[=].item[=].type = #choice
* item[=].item[=].text = "First, I would like to ask you about MOBILITY. Would you say that:"

* item[=].item[=].answerValueSet = "#Inline-Instance-for-eq5d3l-1-1"

/* --
* item[=].answerOption[0].valueString = "You have no problems in walking about"
* item[=].answerOption[+].valueString = "You have some problems in walking about"
* item[=].answerOption[+].valueString = "You are confined to bed"
--*/

* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "1.2"
* item[=].item[=].prefix = "SELF-CARE"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Next, I would like to ask you about SELF-CARE. Would you say that:"
* item[=].item[=].answerValueSet = "#Inline-Instance-for-eq5d3l-1-2"
/*--
* item[=].answerOption[0].valueString = "You have no problems with self-care"
* item[=].answerOption[+].valueString = "You have some problems washing or dressing yourself"
* item[=].answerOption[+].valueString = "You are unable to wash or dress yourself"
--*/

* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "1.3"
* item[=].item[=].prefix = "USUAL ACTIVITIES"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Next, I would like to ask you about USUAL ACTIVITIES, for example work, study, housework, family or leisure activities. Would you say that"
* item[=].item[=].answerValueSet = "#Inline-Instance-for-eq5d3l-1-3"
/* --
* item[=].answerOption[0].valueString = "You have no problems doing your usual activities"
* item[=].answerOption[+].valueString = "You have some problems doing your usual activities"
* item[=].answerOption[+].valueString = "You are unable to do your usual activities"
-- */
* item[=].item[=].required = true
* item[=].item[=].repeats = false

* item[=].item[+].linkId = "1.4"
* item[=].item[=].prefix = "PAIN OR DISCOMFORT"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Next, I would like to ask you about PAIN OR DISCOMFORT. Would you say that:"
* item[=].item[=].answerValueSet = "#Inline-Instance-for-eq5d3l-1-4"
/*--
* item[=].answerOption[0].valueString = "You have no pain or discomfort"
* item[=].answerOption[+].valueString = "You have moderate pain or discomfort"
* item[=].answerOption[+].valueString = "You have extreme pain or discomfort"
---*/
* item[=].item[=].required = true
* item[=].item[=].repeats = false


* item[=].item[+].linkId = "1.5"
* item[=].item[=].prefix = "ANXIETY OR DEPRESSION"
* item[=].item[=].type = #choice
* item[=].item[=].text = "Finally, I would like to ask you about ANXIETY OR DEPRESSION. Would you say that:"
* item[=].item[=].answerValueSet = "#Inline-Instance-for-eq5d3l-1-5"
/*===
* item[=].answerOption[0].valueString = "You are not anxious or depressed"
* item[=].answerOption[+].valueString = "You are moderately anxious or depressed"
* item[=].answerOption[+].valueString = "You are extremely anxious or depressed"
===*/
* item[=].item[=].required = true
* item[=].item[=].repeats = false


* item[+].linkId = "2"
// * item[=].prefix = "VAS"
* item[=].type = #group
* item[=].text = "EQ-5D VAS"
* item[=].required = true
* item[=].repeats = false

* item[=].item[0].linkId = "2.1"
* item[=].item[=].prefix = "YOUR HEALTH TODAY"
* item[=].item[=].type = #display
* item[=].item[=].text = "Now, I would like to ask you to say how good or bad your health is TODAY.
I would like you to picture in your mind a vertical line that is numbered from 0 to 100.
(Note to interviewer: if interviewing face-to-face, please show the respondent the VAS line.)"


* item[=].item[+].linkId = "2.2"
// * item[=].item[=].prefix = "Range"
* item[=].item[=].type = #display
* item[=].item[=].text = "100 at the top of the line means the best health you can imagine.
0 at the bottom of the line means the worst health you can imagine."


* item[=].item[+].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].item[=].extension[=].valueInteger = 100
* item[=].item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].item[=].extension[=].valueInteger = 0
* item[=].item[=].linkId = "2.3"
* item[=].item[=].prefix = "SCORE"
* item[=].item[=].type = #integer
* item[=].item[=].text = "I would now like you to tell me the point on this line where you would put your health TODAY. (Note to interviewer: mark the line at the point indicating the respondent’s health today. Now, please write the number you marked on the line in the box below.)"
* item[=].item[=].required = true
* item[=].item[=].repeats = false
	
