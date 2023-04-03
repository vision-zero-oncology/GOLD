Profile: Body_Structure_Base
Parent: BodyStructure
Id: body-structure-base
Title: "Profile Body Structure"
Description: "Profile for the base definition of all body structures."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    bodyStructureIdentifier 1..1 
* identifier[bodyStructureIdentifier].use = #usual
* identifier[bodyStructureIdentifier].type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier[bodyStructureIdentifier].type.coding.system 1..
* identifier[bodyStructureIdentifier].type.coding.code 1..
* identifier[bodyStructureIdentifier].value 1..
// * location 0..0
// * locationQualifier 0..0
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
InstanceOf: BodyStructure
Usage: #example
* identifier.use = #usual
* identifier.type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier.system = "http://radiology.hospital.example.org"
* identifier.value = "Tumor 1234"
* patient = Reference(ExamplePatient)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/diagnosis"
* extension.valueReference = Reference(ExampleCondition)