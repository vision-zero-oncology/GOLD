Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $RAD = http://radlex.org


Profile: Body_Structure_Base
Parent: BodyStructure
Id: body-structure-base
Title: "Profile Body Structure"
Description: "Profile for the base definition of all body structures."
* ^version = "1.0.0"
* ^status = #active
* morphology 1..1 MS
* morphology.coding ^slicing.discriminator.type = #pattern
* morphology.coding ^slicing.discriminator.path = "$this"
* morphology.coding ^slicing.rules = #open
* morphology.coding contains
    primary 0..1 MS and 
    node 0..1 MS and
    metastatic 0..1 MS
* morphology.coding[primary] = $LNC#21855-2 "Primary site Cancer"
* morphology.coding[node] = $LNC#21892-5 "Lymph node involvement"
* morphology.coding[metastatic] = $LNC#21920-4 "Site of distant metastasis Cancer"
* extension 1..*
* extension contains Diagnosis named diagnosis 1..* MS


Extension: Diagnosis
Id: diagnosis
Title: "Diagnosis"
Description: "Enables to reference a diagnosis <Condition> the body stucture refers to"
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/diagnosis"
* ^version = "1.0.0"
* . ^short = "Diagnosis the body structure refers to"
* . ^definition = "Enables to reference a diagnosis <Condition> the body structure refers to"
* . ^base.path = "DomainResource.extension"
* . ^base.min = 1
* . ^base.max = "1"
* url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/diagnosis" (exactly)
* value[x] 1..
* value[x] only Reference(Condition)


Instance: example-body-structure
InstanceOf: body-structure
Usage: #example
Title: "Example Body Structure"
* status = #final
* primary = $LNC#21855-2 "Primary site Cancer"
* patient = Reference(ExamplePatient)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/diagnosis"
* extension.valueReference = Reference(ExampleCondition)
* result = Reference (ExampleCondition)