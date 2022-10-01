Profile: LKCoreOrganization
Parent: Organization
Id: lk-core-organization
Title: "LK Core Organization"
Description: "Defines the Sri Lanka Core constraints and extensions on the Organization resource for the minimal set of data to query and retrieve practitioner information."
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
* ^purpose = ""
* ^copyright = ""
* extension contains LKCoreMOHAreaExt named mohArea 0..*
* extension contains LKCoreProvinceExt named province 0..*