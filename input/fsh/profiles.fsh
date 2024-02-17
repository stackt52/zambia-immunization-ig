Profile: ImmunisationPatient
Parent: Patient
Id: immunisation-patient
Title: "Immunisation Patient"
Description: "Immunisation patient"
* ^description = "Immunisation patient"
* identifier 1..*
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slice based on type of identifier"
* identifier ^slicing.ordered = false
* identifier contains
    NUPN 1..1 MS and
    NRC 0..1 MS
* identifier[NUPN].value 1..1
* identifier[NUPN].system = "http://openhie.org/fhir/zambia-training/identifier/patient-nupn"
* identifier[NRC].value 0..1
* identifier[NRC].system = "http://openhie.org/fhir/zambia-training/identifier/patient-nrc"
* contact 1..*
* contact.name.given 1..*
* contact.name.family 1..1
* contact.relationship
* gender 1..1
* maritalStatus 0..1
* address.district 0..1
* managingOrganization 0..1
* birthDate 0..1
* birthDate.extension contains patient-birthTime named birthTime 1..1

* extension contains PatientBornInZambia named bornInZambia 0..1

// Profile: ImmunisationObservation
// Parent: Observation
// Id: immunisation-observation
// Title: "Immunisation Observation"
// Description: "Immunisation observation"
// * valueCodeableConcept 0..1
// * valueCodeableConcept ^slicing.discriminator.type = #value
// * valueCodeableConcept ^slicing.discriminator.path = "system"
// * valueCodeableConcept ^slicing.rules = #open
// * valueCodeableConcept ^slicing.description = ""
// * valueCodeableConcept ^slicing.ordered = false
// * valueCodeableConcept contains
//     EDUCATION_LEVEL 0..1 and
//     SPOUSE_OCCUPATION 0..1 and
//     GUARDIAN_OCCUPATION 0..1 and
//     HOME_LANGUAGE 0..1
// * valueCodeableConcept[EDUCATION_LEVEL].value 0..1
// * valueCodeableConcept[EDUCATION_LEVEL].system = "http://openhie.org/fhir/zambia-training/codeable-concept/education-level"
// * valueCodeableConcept[SPOUSE_OCCUPATION].value 0..1
// * valueCodeableConcept[SPOUSE_OCCUPATION].system = "http://openhie.org/fhir/zambia-training/codeable-concept/spouse-occupation"
// * valueCodeableConcept[GUARDIAN_OCCUPATION].value 0..1
// * valueCodeableConcept[GUARDIAN_OCCUPATION].system = "http://openhie.org/fhir/zambia-training/codeable-concept/guardian-occupation"
// * valueCodeableConcept[HOME_LANGUAGE].value 0..1
// * valueCodeableConcept[HOME_LANGUAGE].system = "http://openhie.org/fhir/zambia-training/codeable-concept/home-languange"

// Profile: ImmunisationRelatedPerson
// Parent: RelatedPerson
// Id: immunisation-related-person
// Title: "Immunisation Related Person"
// Description: "Immunisation related person"
// * name.given 0..1
// * name.family 0..1
// * telecom 0..1

// Profile: ImmunisationCoverage
// Parent: Coverage
// Id: immunisation-coverage
// Title: "Immunisation Coverage"
// Description: "Immunisation coverage"
// * subscriberId 0..1
// * policyHolder 0..1

// Profile: ZambiaImmunisation
// Parent: Immunization
// Id: zambia-immunisation
// Title:  "Zambia Immunisation"
// Description: "Zambia immunisation"
// * occurrenceDateTime 0..1
// * protocolApplied.doseNumberPositiveInt 0..1