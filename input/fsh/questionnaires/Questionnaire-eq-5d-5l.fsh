Instance: eq-5d-ql
InstanceOf: Questionnaire
Usage: #example
* status = #draft
* contained[0] = Inline-movilidad
* contained[+] = Inline-actividades-cotidianas
* contained[+] = Inline-auto-cuidado
* contained[+] = Inline-dolor
* contained[+] = Inline-ansiedad
* item[0].linkId = "1"
* item[=].prefix = "Movilidad"
* item[=].type = #choice
* item[=].answerValueSet = "#Inline-movilidad"
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "2"
* item[=].prefix = "Auto-Cuidado"
* item[=].type = #choice
* item[=].answerValueSet = "#Inline-auto-cuidado"
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "3"
* item[=].prefix = "Actividades Cotidianas"
* item[=].type = #choice
* item[=].answerValueSet = "#Inline-actividades-cotidianas"
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "4"
* item[=].prefix = "Dolor"
* item[=].type = #choice
* item[=].answerValueSet = "#Inline-dolor"
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "5"
* item[=].prefix = "Ansiedad"
* item[=].type = #choice
* item[=].answerValueSet = "#Inline-ansiedad"
* item[=].required = true
* item[=].repeats = false
* item[+].linkId = "1"
* item[=].text = "Su salud hoy"
* item[=].prefix = "Salud"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 100
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 0

Instance: Inline-movilidad
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-movilidad"
* status = #draft
* compose.include.system = "string"
* compose.include.concept[0].code = #"No tengo problemas para caminar"
* compose.include.concept[+].code = #"Tengo problemas leves para caminar"
* compose.include.concept[+].code = #"Tengo problemas moderados para caminar"
* compose.include.concept[+].code = #"Tengo problemas graves para caminar"
* compose.include.concept[+].code = #"No puedo caminar"

Instance: Inline-actividades-cotidianas
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-actividades-cotidianas"
* status = #draft
* compose.include.system = "string"
* compose.include.concept[0].code = #"No tengo problemas para realizar mis actividades cotidianas"
* compose.include.concept[+].code = #"Tengo problemas leves para realizar mis actividades cotidianas"
* compose.include.concept[+].code = #"Tengo problemas moderados para realizar mis actividades cotidianas"
* compose.include.concept[+].code = #"Tengo problemas graves para realizar mis actividades cotidianas"
* compose.include.concept[+].code = #"No puedo realizar mis actividades cotidianas"

Instance: Inline-auto-cuidado
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-auto-cuidado"
* status = #draft
* compose.include.system = "string"
* compose.include.concept[0].code = #"No tengo problemas para lavarme o vestirme"
* compose.include.concept[+].code = #"Tengo problemas leves para lavarme o vestirme"
* compose.include.concept[+].code = #"Tengo problemas moderados para lavarme o vestirme"
* compose.include.concept[+].code = #"Tengo problemas graves para lavarme o vestirme"
* compose.include.concept[+].code = #"No puedo lavarme o vestirme"

Instance: Inline-dolor
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-dolor"
* status = #draft
* compose.include.system = "string"
* compose.include.concept[0].code = #"No tengo dolor ni malestar"
* compose.include.concept[+].code = #"Tengo dolor o malestar leve"
* compose.include.concept[+].code = #"Tengo dolor o malestar moderado"
* compose.include.concept[+].code = #"Tengo dolor o malestar fuerte"
* compose.include.concept[+].code = #"Tengo dolor o malestar extremo"

Instance: Inline-ansiedad
InstanceOf: ValueSet
Usage: #inline
* url = "Inline-ansiedad"
* status = #draft
* compose.include.system = "string"
* compose.include.concept[0].code = #"No estoy ansioso ni deprimido"
* compose.include.concept[+].code = #"Estoy levemente ansioso o deprimido"
* compose.include.concept[+].code = #"Estoy moderadamente ansioso o deprimido"
* compose.include.concept[+].code = #"Estoy muy ansioso o deprimido"
* compose.include.concept[+].code = #"Estoy extremadamente ansioso o deprimido"