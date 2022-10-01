Profile: LKCorePractitioner
Parent: Practitioner
Id: lk-core-practitioner
Title: "LK Core Practitioner"
Description: "Defines the Sri Lanka Core constraints and extensions on the Practitioner resource for the minimal set of data to query and retrieve practitioner information."
* ^version = "0.1.0"
* ^status = #draft
* ^date = "2022-09-30"
* ^publisher = "HIU MoH LK"
* ^contact[0].name = ""
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = ""
* ^contact[=].telecom.use = #work
* ^contact[=].telecom.rank = 1
* ^contact[+].name = ""
* ^contact[=].telecom.system = #email
* ^contact[=].telecom.value = ""
* ^contact[=].telecom.use = #work
* ^contact[=].telecom.rank = 2
* ^purpose = "This profile allows exchange of information about all individuals who are engaged in the healthcare process and healthcare-related services as part of their formal responsibilities and this profile is used for attribution of activities and responsibilities to these individuals."
* ^copyright = ""