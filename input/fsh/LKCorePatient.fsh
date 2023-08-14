Alias: $lk-core-address = http://fhir.health.gov.lk/StructureDefinition/lk-core-address

Profile:     LKCorePatient 
Id:          lk-core-patient-profile
Parent:      Patient
Title:       "LK Core Patient"
Description: "National core Patient FHIR profile published by the Ministry of Health Sri Lanka"
* identifier 1..
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #openAtEnd
* identifier contains
    phn 1..1 and
    nic 0..* and
    ppn 0..* and
    scn 0..* and
    dl 0..* and
    other 0..1
* identifier[phn].system 1..
* identifier[phn].value 1..
* identifier[phn].system = "https://fhir.health.gov.lk/id/phn" (exactly)
* identifier[phn] ^short = "Personal Health Number"
* identifier[nic].system 1..
* identifier[nic].value 1..
* identifier[nic].system = "https://fhir.health.gov.lk/id/nic" (exactly)
* identifier[nic] ^short = "National Identity Card Number"
* identifier[ppn].system 1..
* identifier[ppn].value 1..
* identifier[ppn].system = "https://fhir.health.gov.lk/id/ppn" (exactly)
* identifier[ppn] ^short = "Passport Number"
* identifier[scn].system 1.. 
* identifier[scn].value 1.. 
* identifier[scn].system = "https://fhir.health.gov.lk/id/scn" (exactly)
* identifier[scn] ^short = "Senior Citizen Number"
* identifier[dl].system 1..
* identifier[dl].value 1..
* identifier[dl].system = "https://fhir.health.gov.lk/id/dl" (exactly)
* identifier[dl] ^short = "Driving License Number"
* identifier[other].system 1..
* identifier[other].value 1..
* identifier[other].system = "https://fhir.health.gov.lk/id/other" (exactly)
* identifier[other] ^short = "Other Identifier Not Specified Above"
* gender 1..
* birthDate 1..
* birthDate ^comment = "When exact birthDate is not known, it should be calculated from the age"
* address only $lk-core-address 