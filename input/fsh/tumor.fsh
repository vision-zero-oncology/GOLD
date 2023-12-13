Profile: TumorSpecimen
Parent: $MIIBiobankBioprobeCore
Id: tumor-specimen
Title: "Profile Tumor Specimen"
Description: "Profile of a tumor specimen"
* insert Metadata
* identifier 1.. 
* collection.bodySite 1.. 
* extension contains part-of named partOf 0..* MS 

Profile: Tumor
Parent: body-structure-base
Id: tumor
Title: "Profile Tumor"
Description: "Profile of a tumor"
* insert Metadata
* morphology 1..1 MS
* patient MS

Extension: PartOf
Id: part-of
Title: "Specimen part of Tumor"
Description: "Enables to reference a Tumor <BodyStructure> from its respective Specimen"
* insert Metadata
* valueReference only Reference(tumor)
* ^context[+].type = #element
* ^context[=].expression = "Specimen"

// Examples
Instance: SplenicStructure
InstanceOf: Tumor
Usage: #example
Title: "Tumor Example - Cerebellar Sarcoma"
Description: "Example for the Tumor profile"
* identifier[bodyStructureIdentifier].use = #usual
* identifier[bodyStructureIdentifier].type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier[bodyStructureIdentifier].system = "http://radiology.hospital.example.org"
* identifier[bodyStructureIdentifier].value = "Tumor 1234"
* morphology = $SCT#4147007 "Mass (morphologic abnormality)"
* extension[included-structure].extension[$structure].valueCodeableConcept.coding = $SCT#78961009 "Splenic structure (body structure)"
* patient = Reference(ExamplePatient)

Instance: blood-specimen
InstanceOf: TumorSpecimen
Usage: #example
* extension[partOf].valueReference = Reference(SplenicStructure)
* status = #available
* type = $SCT#16210851000119107 "Cerebellar neoplasm specimen (specimen)"
* subject = Reference(ExamplePatient)
* receivedTime = "2021-11-24"
* collection.collectedDateTime = "2021-11-23"
* collection.bodySite = $SCT#113305005 "Cerebellar structure (body structure)"
* identifier.system = "https://www.charite.de/fhir/sid/bioproben"
* identifier.value = "specimen_02"

// TODO: Specimen collection procedure 450600007 