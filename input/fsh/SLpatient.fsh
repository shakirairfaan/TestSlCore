Profile: SLCorePatient
Parent: Patient
Id: SLCorePatient
Description: "Defines the LK Core constraints and extensions on the Patient resource for the minimal set of data to query and retrieve an individual’s demographic information."
* ^meta.lastUpdated = "2022-07-15T15:03:51.220+00:00"
* ^url = "http://fhir.health.gov.lk/fhir/SLcore/StructureDefinition/SLCorePatient"
* ^version = "0.1"
* ^status = #draft
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains
    PHN 1..* and
    NIC 0..1 and
    SSN 0..*
* identifier[PHN].type 1..
* identifier[PHN] ^short = "PHN"
* identifier[PHN] ^definition = "Personal Health Number"
* identifier[PHN].type = http://terminology.hl7.org/CodeSystem/v2-0203#JHN (exactly)
* identifier[PHN].system 1..
* identifier[PHN].system = "http://fhir.health.gov.lk/ns/phn" (exactly)
* identifier[PHN].value 1..
* identifier[NIC].type 1..
* identifier[NIC].type = http://terminology.hl7.org/CodeSystem/v2-0203#NI (exactly)
* identifier[NIC].system 1..
* identifier[NIC].system = "http://fhir.health.gov.lk/ns/nic" (exactly)
* identifier[NIC].value 1..
* identifier[SSN] ^short = "Senior Citizen number"
* identifier[SSN] ^definition = "SSN for this client."
* identifier[SSN].type = http://terminology.hl7.org/CodeSystem/v2-0203#SSN (exactly)
* identifier[SSN].system = "http://fhir.health.gov.lk/ns/SSN" (exactly)
* name 1..
* contact.organization obeys ref-1
* contact.organization ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* contact.period obeys per-1
* contact.period ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* generalPractitioner obeys ref-1
* generalPractitioner ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* managingOrganization obeys ref-1
* managingOrganization ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
* link.other obeys ref-1
* link.other ^constraint[1].source = "http://hl7.org/fhir/StructureDefinition/Encounter"
//Putting the address extension under the address element 
* address.extension contains $SLAddressExt named SLAddressExt 0..*
* address.extension[SLAddressExt] ^short = "SL address example extension"
* address.extension[SLAddressExt] ^min = 0

Invariant: ref-1
Description: "SHALL have a contained resource if a local reference is provided"
Severity: #error

Invariant: per-1
Description: "If present, start SHALL have a lower value than end"
Severity: #error