Instance: pam
InstanceOf: Questionnaire
Usage: #example
* url = "http://example.org/Questionnaire/pam"
* version = "0.0.1"
* language = #es-ES
* name = "PAM"
* title = "Patient Activation Measure-PAM"
* status = #draft
* date = "2021-05-10"
* publisher = "GATEKEEPER Project - Pilot site"
* description = "Patient Activation Measure-PAM"
* subjectType = #Patient
* item[0].linkId = "1"
* item[=].text = "Yo soy la persona responsable de gestionar mi salud."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "2"
* item[=].text = "Tomar un rol activo en el cuidado de mi salud es el factor más importante en la determinación de mi salud y mi capacidad funcional."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "3"
* item[=].text = "Estoy seguro de que puedo tomar acciones que ayudan a prevenir o minimizar algunos síntomas o problemas relacionados con mi salud."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "4"
* item[=].text = "Sé lo que cada uno de mis medicamentos recetados hace."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "5"
* item[=].text = "Estoy seguro de que puedo decir cuando necesito atención médica y cuando puedo gestionar un problema de salud yo solo."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "6"
* item[=].text = "Estoy seguro de que puedo contarle a un doctor preocupaciones que tengo, aunque él no pregunte."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "7"
* item[=].text = "Estoy seguro de que puedo seguir tratamientos médicos que necesito en casa."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "8"
* item[=].text = "Entiendo la naturaleza y causas de mis problemas de salud ."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "9"
* item[=].text = "Conozco las diferentes opciones disponibles de tratamientos médicos para mi condición de salud."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "10"
* item[=].text = "He podido mantener los cambios del estilo de vida por mi salud que he tenido que hacer. "
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "11"
* item[=].text = "Sé cómo prevenir futuros problemas de mi salud."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "12"
* item[=].text = "Estoy seguro que podré buscar soluciones cuando ocurran nuevas situaciones o problemas relacionados con mi salud."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1
* item[+].linkId = "13"
* item[=].text = "Estoy seguro que puedo mantener los cambios de vida, como dietas, ejercicio, incluso durante situaciones de estrés."
* item[=].prefix = "statement"
* item[=].type = #integer
* item[=].required = true
* item[=].repeats = false
* item[=].extension[0].url = "http://hl7.org/fhir/StructureDefinition/maxValue"
* item[=].extension[=].valueInteger = 5
* item[=].extension[+].url = "http://hl7.org/fhir/StructureDefinition/minValue"
* item[=].extension[=].valueInteger = 1