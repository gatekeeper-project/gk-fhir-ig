Instance: comoestas
InstanceOf: Questionnaire
Usage: #example
* url = "http://example.org/Questionnaire/comoestas"
* version = "0.0.1"
* language = #es-ES
* name = "Como stas"
* title = "Como estas"
* status = #draft
* date = "2021-05-10"
* publisher = "GATEKEEPER Project - Pilot site"
* description = "Cuestionario MAHA como estas"
* subjectType = #Patient
* contained = Inline-Instance-Status
* item[0].linkId = "1.1"
* item[=].text = "Ayer hice algo que me hizo sentir bien."
* item[=].prefix = "Preguntas"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "1.2"
* item[=].text = "Me siento aburrido con frecuencia"
* item[=].prefix = "Preguntas"
* item[=].type = #boolean
* item[=].repeats = false
* item[+].linkId = "1.3"
* item[=].text = "Cómo te sientes en general?"
* item[=].prefix = "statement"
* item[=].answerValueSet = "#Inline-Instance-Status"
* item[=].repeats = false
* item[+].linkId = "2.1"
* item[=].text = "Hoy he tenido problemas para descansar por la noche"
* item[=].prefix = "Preguntas"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "2.2"
* item[=].text = "Me he sentido en tensión. nervioso o preocupado últimamente"
* item[=].prefix = "Preguntas"
* item[=].type = #boolean
* item[=].repeats = false
* item[+].linkId = "2.3"
* item[=].text = "¿Cómo te sientes en general?"
* item[=].prefix = "Preguntas"
* item[=].answerValueSet = "#Inline-Instance-Status"
* item[=].repeats = false
* item[+].linkId = "3.1"
* item[=].text = "Hoy siento dolor o molestia"
* item[=].prefix = "Preguntas"
* item[=].type = #boolean
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "3.2"
* item[=].text = "Sigo pudiendo hacer las mismas cosas que la semana pasada"
* item[=].prefix = "Preguntas"
* item[=].type = #boolean
* item[=].repeats = false
* item[+].linkId = "3.3"
* item[=].text = "Cómo te sientes de activo físicamente?"
* item[=].prefix = "Preguntas"
* item[=].answerValueSet = "#Inline-Instance-Status"
* item[=].repeats = false

Instance: Inline-Instance-Status
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-Instance-Status"
* status = #draft
* compose.include.system = "string"
* compose.include.concept[0].code = #"Muy bien"
* compose.include.concept[+].code = #Bien
* compose.include.concept[+].code = #Normal
* compose.include.concept[+].code = #Mal
* compose.include.concept[+].code = #"Muy Mal"