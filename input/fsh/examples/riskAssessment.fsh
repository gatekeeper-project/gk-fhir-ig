Instance: riskCalculationExample
InstanceOf: RiskAssessmentGK
Usage: #example

* status = #final
* code = $sct#225338004 "Risk assessment" 
* subject = Reference(Patient/pat-1)
* occurrenceDateTime = 2021-06-22
* basis = 	Reference(Observation/bloodPressure)
* prediction.probabilityDecimal	= 0.15
* note.text = "This is just a note"

