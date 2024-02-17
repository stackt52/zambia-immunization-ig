Instance: ImmunisationPatientExample
InstanceOf: ImmunisationPatient
Usage: #example
Title: "Immunisation Patient Example"
Description: "Test Patient Example one"
* contact[0].name.given[0] = "Firstname"
* contact[0].name.given[1] = "Middlename"
* contact[0].name.family = "Surname"
* identifier[NRC].value = "123456/23/1"
* identifier[NRC].system = "http://openhie.org/fhir/zambia-training/identifier/patient-nrc"
* identifier[NUPN].value = "1234-12345-12345-5"
* identifier[NUPN].system = "http://openhie.org/fhir/zambia-training/identifier/patient-nupn"
* gender = #male
* extension[bornInZambia].valueBoolean = true
* birthDate.extension[birthTime].valueDateTime = "1983-05-22T16:40:17+02:00"