Alias: $lst = http://www.lst.tfo.upm.es

Instance: mahalifestyle
InstanceOf: Questionnaire
Usage: #example
* version = "0.0.1"
* language = #es-ES
* name = "Estilo de vida MAHA"
* title = "Estilo de vid MAHA"
* status = #draft
* date = "2021-05-10"
* publisher = "GATEKEEPER Project - Spanish Pilot site"
* description = "Estilo de vid MAHA"
* subjectType = #Patient
* jurisdiction = $lst#MAHA
* item[0].linkId = "diet_info"
* item[=].type = #group
* item[=].item[0].linkId = "daily_meals"
* item[=].item[=].text = "Número de comidas diarias"
* item[=].item[=].type = #integer
* item[=].item[+].linkId = "meals_plan"
* item[=].item[=].type = #group
* item[=].item[=].text = "¿Cómo planificas tu comida diaria?"
* item[=].item[=].item[0].linkId = "meals_plan_0"
* item[=].item[=].item[=].text = "Procuro comer mucha fruta y  verdura (50%)"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "meals_plan_1"
* item[=].item[=].item[=].text = "Procuro comer suficientes carbohidratos (25%)"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "meals_plan_2"
* item[=].item[=].item[=].text = "Procuro comer suficiente proteína (25%)"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "meals_plan_3"
* item[=].item[=].item[=].text = "No hago ninguna planificación"
* item[=].item[=].item[=].type = #boolean
* item[=].item[+].linkId = "diet_type"
* item[=].item[=].type = #group
* item[=].item[=].text = "Tipo de dieta"
* item[=].item[=].item[0].linkId = "diet_type_0"
* item[=].item[=].item[=].text = "Mediterránea"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "diet_type_1"
* item[=].item[=].item[=].text = "Vegetariana"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "diet_type_2"
* item[=].item[=].item[=].text = "Vegana"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "diet_type_3"
* item[=].item[=].item[=].text = "Otras"
* item[=].item[=].item[=].type = #boolean
* item[=].item[+].linkId = "diet_type_other"
* item[=].item[=].text = "*Solo en caso de que se haya seleccionado otras"
* item[=].item[=].type = #string
* item[+].linkId = "physical_activity_info"
* item[=].type = #group
* item[=].item[0].linkId = "physical_activity"
* item[=].item[=].text = "Actividad física habitual"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #3 "Alta (1 hora o más al día)"
* item[=].item[=].answerOption[+].valueCoding = #2 "Media (30 minutos al día más o menos)"
* item[=].item[=].answerOption[+].valueCoding = #1 "Baja (menos de 30 minutos al día)"
* item[=].item[+].linkId = "sleep"
* item[=].item[=].text = "¿Qué tal duermes?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #3 "Mal"
* item[=].item[=].answerOption[+].valueCoding = #2 "Regular"
* item[=].item[=].answerOption[+].valueCoding = #1 "Bien"
* item[=].item[+].linkId = "sleep_problem"
* item[=].item[=].type = #group
* item[=].item[=].text = "¿Qué tal duermes?"
* item[=].item[=].item[0].linkId = "sleep_problem_0"
* item[=].item[=].item[=].text = "Somnolencia media"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "sleep_problem_1"
* item[=].item[=].item[=].text = "Insomnio"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "sleep_problem_2"
* item[=].item[=].item[=].text = "Ronquidos"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "sleep_problem_3"
* item[=].item[=].item[=].text = "Apneas"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "sleep_problem_4"
* item[=].item[=].item[=].text = "Otros"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "sleep_problem_5"
* item[=].item[=].item[=].text = "Sueño normal"
* item[=].item[=].item[=].type = #boolean
* item[=].item[+].linkId = "sleep_problem_other"
* item[=].item[=].text = "*en caso de otros"
* item[=].item[=].type = #string
* item[+].linkId = "lifestyle_info"
* item[=].type = #group
* item[=].item[0].linkId = "tobacco"
* item[=].item[=].text = "¿Fumas? (tabaco, cigarrillo electrónico, otros...)"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #3 "No, nunca"
* item[=].item[=].answerOption[+].valueCoding = #2 "No, hace un año o más que no consumo"
* item[=].item[=].answerOption[+].valueCoding = #1 "Sí, actualmente"
* item[=].item[+].linkId = "social_life"
* item[=].item[=].text = "Vida social"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #2 "Escasa"
* item[=].item[=].answerOption[+].valueCoding = #1 "Activa"
* item[=].item[+].linkId = "alcohol"
* item[=].item[=].text = "¿Consumes alcohol?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #1 "Sí, más o menos todos los días"
* item[=].item[=].answerOption[+].valueCoding = #2 "Sí, ocasionalmente"
* item[=].item[=].answerOption[+].valueCoding = #3 "No, hace tiempo que dejé de consumir"
* item[=].item[=].answerOption[+].valueCoding = #4 "No, nunca"
* item[=].item[+].linkId = "drugs"
* item[=].item[=].text = "¿Tomas otro tipo de drogas?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #1 "Sí, más o menos todos los días"
* item[=].item[=].answerOption[+].valueCoding = #2 "Sí, ocasionalmente"
* item[=].item[=].answerOption[+].valueCoding = #3 "No, hace tiempo que dejé de consumir"
* item[=].item[=].answerOption[+].valueCoding = #4 "No, nunca"