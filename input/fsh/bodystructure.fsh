Profile: Body_Structure_Base
Parent: BodyStructure
Id: body-structure-base
Title: "Profile Body Structure"
Description: "Profile for the base definition of all body structures."
* ^version = "1.0.0"
* ^status = #active
* location 0..0
* locationQualifier 0..0
* extension 0..*
* extension contains Diagnosis named diagnosis 0..* MS


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
InstanceOf: body-structure-base
Usage: #example
Title: "Example Body Structure"
* patient = Reference(ExamplePatient)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/diagnosis"
* extension.valueReference = Reference(ExampleCondition)
