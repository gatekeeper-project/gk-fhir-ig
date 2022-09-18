Instance: caidas
InstanceOf: Questionnaire
Usage: #example
* version = "0.0.1"
* language = #es-ES
* name = "Caidas"
* title = "Caidas"
* status = #draft
* date = "2021-05-10"
* publisher = "GATEKEEPER Project - Spanish Pilot site"
* description = "Valoración de los riesgos del hogar"
* subjectType = #Patient
* item[0].linkId = "1"
* item[=].text = "Suelos - Compruebe el estado del suelo en cada uno de los cuartos."
* item[=].type = #group
* item[=].item[0].linkId = "1.1"
* item[=].item[=].text = "¿Cuándo usted camina por un cuarto, tiene que caminar alrededor de muebles que dificultan el paso?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.2"
* item[=].item[=].text = "¿Tiene usted alfombras en el suelo?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.3"
* item[=].item[=].text = "¿Hay periódicos, revistas, libros, zapatos, cajas, mantas, toallas u otros objetos en el suelo?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.4"
* item[=].item[=].text = "¿Tiene usted que caminar sobre cables, o alrededor de los mismos (como por ejemplo cables de lámparas, cables alargadores o cables de teléfono?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "1.5"
* item[=].item[=].text = "¿Se encuentra el suelo excesivamente abrillantado y resbaladizo?"
* item[=].item[=].type = #boolean
* item[+].linkId = "2"
* item[=].type = #group
* item[=].text = "Iluminación - Compruebe la iluminación dentro de la casa"
* item[=].item[0].linkId = "2.1"
* item[=].item[=].text = "¿Hay suficiente iluminación en toda la casa tanto de día como de noche?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "2.2"
* item[=].item[=].text = "¿Hay interruptores accesibles en todas las habitaciones de la casa?"
* item[=].item[=].type = #boolean
* item[+].linkId = "3"
* item[=].type = #group
* item[=].text = "Cocina - Compruebe la cocina y el área donde coma"
* item[=].item[0].linkId = "3.1"
* item[=].item[=].text = "¿Están las cosas que se utilizan a menudo en estantes o anaqueles altos?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "3.2"
* item[=].item[=].text = "¿Suele mojarse la superficie del suelo alrededor del fregadero al lavar los platos?"
* item[=].item[=].type = #boolean
* item[+].linkId = "4"
* item[=].text = "Dormitorios - Compruebe todos los dormitorios"
* item[=].type = #group
* item[=].item[0].linkId = "4.1"
* item[=].item[=].text = "¿Es difícil llegar al interruptor de la luz que se encuentra cerca de la cama?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "4.2"
* item[=].item[=].text = "¿Tiene los elementos necesarios, como vaso de agua, gafas, bastón, orinal, al alcance de la mano desde la cama?"
* item[=].item[=].type = #boolean
* item[+].linkId = "5"
* item[=].type = #group
* item[=].text = "Pasillos - Compruebe los pasillos desde el dormitorio hasta el cuarto de baño."
* item[=].item[0].linkId = "5.1"
* item[=].item[=].text = "¿Se encuentra oscuro el pasillo que va desde la cama al baño?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "5.2"
* item[=].item[=].text = "¿Se encuentran oscuros el resto de pasillos de la vivienda?"
* item[=].item[=].type = #boolean
* item[+].linkId = "6"
* item[=].text = "Cuarto de baño - Compruebe todos sus cuartos de baño"
* item[=].type = #group
* item[=].item[0].linkId = "6.1"
* item[=].item[=].text = "¿Está resbaladizo el suelo de la bañera o la ducha?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "6.2"
* item[=].item[=].text = "¿Dispone de agarradera adecuada para entrar o salir de la bañera o la ducha o para cuando se levanta del inodoro o del bidet?"
* item[=].item[=].type = #boolean
* item[+].linkId = "7"
* item[=].text = "Calzado y vestido"
* item[=].type = #group
* item[=].item[0].linkId = "7.1"
* item[=].item[=].text = "¿Utiliza en la casa calzado cerrado que sujete bien el pie y que tenga suela antideslizante?"
* item[=].item[=].type = #boolean
* item[=].item[+].linkId = "7.2"
* item[=].item[=].text = "¿Utiliza en la casa pantalones, pijamas o vestidos largos que puedan arrastrar por el suelo?"
* item[=].item[=].type = #boolean