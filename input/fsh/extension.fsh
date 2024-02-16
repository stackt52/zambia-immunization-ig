Extension: PatientBornInZambia
Id: patient-born-in-zambia
Title: "Patient Born In Zambia"
Description: "Codeable concept for patient born in zambia"
* value[x] only boolean
* value[x] 1..
* ^context[+].type = #element
* ^context[=].expression = "Patient"

// Extension: PatientTimeOfBirth
// Id: patient-time-of-birth
// Title: "Patient Time Of Birth"
// Description: "Patient Time Of Birth"
// * value[x] only dateTime
// * value[x] 1..
// * ^context[+].type = #element
// * ^context[=].expression = "Patient"