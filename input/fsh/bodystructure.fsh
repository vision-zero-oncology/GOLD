Profile: Body_Structure_Base
Parent: BodyStructure
Id: body-structure-base
Title: "Profile Body Structure"
Description: "Profile for the base definition of all body structures."
* location 0..0
* locationQualifier 0..0
* extension 0..*
* extension contains Diagnosis named diagnosis 0..* MS


Extension: Diagnosis
Id: diagnosis
Title: "Diagnosis"
Description: "Enables to reference a diagnosis <Condition> the body stucture refers to"
* . ^short = "Diagnosis the body structure refers to"
* . ^definition = "Enables to reference a diagnosis <Condition> the body structure refers to"
* value[x] only Reference(Condition)
* value[x] 1.. 


Instance: example-body-structure
InstanceOf: body-structure-base
Usage: #example
Title: "Example Body Structure"
* patient = Reference(ExamplePatient)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/diagnosis"
* extension.valueReference = Reference(ExampleCondition)
