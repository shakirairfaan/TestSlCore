Extension: SLAddressExt
Id: SLAddressExt
Title: "Sri Lanka Core - Address Extension"
Description: "an example address extension which could be used in Sri Lanka"
* ^meta.lastUpdated = "2022-06-23T16:06:30.695+09:00"
* ^url = "http://example.org/fhir/SLcore/StructureDefinition/SLAddressExt"
* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Buddhika"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://example.org/fhir/SLcore/"
* ^jurisdiction = urn:iso:std:iso:3166#KR
* ^purpose = "Described Addresses in Sri Lanka"
//The type of element the extension is based on
* ^context.type = #element
* ^context.expression = "Address"
* . ..1
* . ^short = "Sri lanka core address"
* . ^definition = "District and road"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
//Defining new elements for the address 
    province 1..1 and
    district 1..1 and
    gnarea 1..1 and
    road 1..1 
* extension[province] ^short = "Province the person lives in"
* extension[province].value[x] 1..
* extension[province].value[x] only string
* extension[district] ^short = "District the person lives in"
* extension[district].value[x] 1..
* extension[district].value[x] only string
* extension[gnarea] ^short = "GN Area the person lives in"
* extension[gnarea].value[x] 1..
* extension[gnarea].value[x] only string
* extension[road] ^short = "The name of the road"
* extension[road].value[x] 1..
* extension[road].value[x] only string
// url = http://example.org/fhir/SLcore/StructureDefinition/SLAddressExt