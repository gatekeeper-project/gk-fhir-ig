Alias: $lst = http://www.lst.tfo.upm.es

Instance: mahaprofile
InstanceOf: Questionnaire
Usage: #example
* version = "0.0.1"
* language = #es-ES
* name = "Perfil MAHA"
* title = "Perfil MAHA"
* status = #draft
* date = "2021-05-10"
* publisher = "GATEKEEPER Project - Spanish Pilot site"
* description = "Perfil MAHA"
* subjectType = #Patient
* jurisdiction = $lst#MAHA
* item[0].linkId = "attendance_events"
* item[=].text = "Lista de id de eventos asistidos en MAHA app"
* item[=].type = #string
* item[+].linkId = "viewed_content"
* item[=].text = "Lista de id de eventos y articulos visualizados en MAHA app"
* item[=].type = #string
* item[+].linkId = "favourite_content"
* item[=].text = "Lista de id de eventos y articulos marcados como favoritos en MAHA app"
* item[=].type = #string
* item[+].linkId = "register"
* item[=].text = "Fecha de registro"
* item[=].type = #date
* item[+].linkId = "gender_info"
* item[=].type = #group
* item[=].item[0].linkId = "gender"
* item[=].item[=].text = "Genero"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #2 "Mujer"
* item[=].item[=].answerOption[+].valueCoding = #1 "Hombre"
* item[=].item[=].answerOption[+].valueCoding = #3 "Prefiero no indicar"
* item[=].item[=].answerOption[+].valueCoding = #4 "Otro"
* item[=].item[+].linkId = "gender_other"
* item[=].item[=].text = "Otro"
* item[=].item[=].type = #string
* item[+].linkId = "personal_info"
* item[=].type = #group
* item[=].item[0].linkId = "birth_year"
* item[=].item[=].text = "Año de nacimiento"
* item[=].item[=].type = #date
* item[=].item[+].linkId = "altura"
* item[=].item[=].text = "altura (cm)"
* item[=].item[=].type = #decimal
* item[=].item[+].linkId = "peso"
* item[=].item[=].text = "peso (kg)"
* item[=].item[=].type = #decimal
* item[=].item[+].linkId = "pilot"
* item[=].item[=].text = "Lugar de residencia"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #1 "Aragon"
* item[=].item[=].answerOption[+].valueCoding = #2 "Pais Vasco"
* item[=].item[+].linkId = "pilot_province"
* item[=].item[=].text = "Ciudad"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #2 "Guipuzkoa"
* item[=].item[=].answerOption[+].valueCoding = #1 "Araba"
* item[=].item[=].answerOption[+].valueCoding = #3 "Bizcaia"
* item[=].item[+].linkId = "pilot_AR"
* item[=].item[=].text = "AR Code"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "language"
* item[=].item[=].text = "Idioma"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #1 "castellano"
* item[=].item[=].answerOption[+].valueCoding = #2 "euskera"
* item[=].item[+].linkId = "live_with"
* item[=].item[=].text = "Con quien vives?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #1 "Yo solo"
* item[=].item[=].answerOption[+].valueCoding = #2 "Con pareja"
* item[=].item[=].answerOption[+].valueCoding = #3 "Con familia"
* item[=].item[=].answerOption[+].valueCoding = #4 "Con una persona cuidadora"
* item[+].linkId = "patologies"
* item[=].type = #group
* item[=].item[0].linkId = "pat_0"
* item[=].item[=].text = "Ninguna"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_1"
* item[=].item[=].text = "Asma"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_2"
* item[=].item[=].text = "enfermedad cardiovascular"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_3"
* item[=].item[=].text = "Diabetes"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_4"
* item[=].item[=].text = "Hipertension"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_5"
* item[=].item[=].text = "EPOC"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_6"
* item[=].item[=].text = "Cancer"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_7"
* item[=].item[=].text = "Parkinson"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_8"
* item[=].item[=].text = "Esclerosis multiple"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_9"
* item[=].item[=].text = "Artrosis, dolor de espalda-fibromialgia-osteoporosis"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_10"
* item[=].item[=].text = "Demencia y Alzheimer"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "pat_11"
* item[=].item[=].text = "Ansiedad y/o depresion"
* item[=].item[=].type = #boolean
* item[+].linkId = "maha_info"
* item[=].type = #group
* item[=].item[0].linkId = "maha_find"
* item[=].item[=].text = "Como conociste MAHA?"
* item[=].item[=].type = #choice
* item[=].item[=].answerOption[0].valueCoding = #1 "Por mi profesional médico"
* item[=].item[=].answerOption[+].valueCoding = #2 "Por un folleto o cartel en mi centro de salud"
* item[=].item[=].answerOption[+].valueCoding = #3 "Por el servicio de teleasistencia"
* item[=].item[=].answerOption[+].valueCoding = #4 "Por internet (Google, Facebook...)"
* item[=].item[=].answerOption[+].valueCoding = #5 "Por un conocido, amigo o familiar"
* item[=].item[=].answerOption[+].valueCoding = #6 "Por mi entorno (asociaciones, programas comunitarios...)"
* item[=].item[+].linkId = "maha_use"
* item[=].item[=].type = #group
* item[=].item[=].item[0].linkId = "use_0"
* item[=].item[=].item[=].text = "Mejorar mis hábitos de vida"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "use_1"
* item[=].item[=].item[=].text = "Ayudar a otra persona a mejorar sus hábitos de vida"
* item[=].item[=].item[=].type = #boolean
* item[=].item[=].item[+].linkId = "use_2"
* item[=].item[=].item[=].text = "Otro"
* item[=].item[=].item[=].type = #boolean
* item[=].item[+].linkId = "maha_use_other"
* item[=].item[=].text = "Otros"
* item[=].item[=].type = #string
* item[=].item[+].linkId = "goal"
* item[=].item[=].text = "Plan seleccionado"
* item[=].item[=].type = #string