Profile: TumorSpecimen
Parent: $MIIBiobankBioprobeCore
Id: tumor-specimen
Title: "Tumor Specimen"
Description: "Tumor specimen"
* insert Metadata
* identifier 1.. 
* collection.bodySite 1.. 
* extension contains part-of named partOf 0..* MS 

Profile: Tumor
Parent: BodyStructure
Id: tumor
Title: "Tumor"
Description: "Tumor"
* insert Metadata
* morphology 1.. MS
* location 1.. MS
* patient MS

Extension: PartOf
Id: part-of
Title: "Specimen part of Tumor"
Description: "Enables to reference a Tumor <BodyStructure> from its respective Specimen"
* insert Metadata
* valueReference only Reference(tumor)
* ^context[+].type = #element
* ^context[=].expression = "tumor-specimen"

// Examples
Instance: CerebellarSarcoma
InstanceOf: Tumor
Usage: #example
Title: "Tumor Example - Cerebellar Sarcoma"
Description: "Example for the Tumor profile"
* morphology = $SCT#17302008 "Cerebellar sarcoma (morphologic abnormality)"
* location = $SCT#1010600003 "Structure of left cerebellar hemisphere (body structure)"
* patient = Reference(ExamplePatient)

// TODO: Specimen collection procedure 450600007 