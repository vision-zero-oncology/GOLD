Alias: $structure = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.structure
Alias: $laterality = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.laterality
Alias: $landmarkDescription = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.landmarkDescription
Alias: $clockFacePosition = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.clockFacePosition
Alias: $device = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark.device
Alias: $value = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark.value
Alias: $surfaceOrientation = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.surfaceOrientation
Alias: $spatialReference = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.spatialReference
Alias: $qualifier = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.qualifier
Alias: $excludedstructure = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.structure
Alias: $excludedlaterality = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.laterality
Alias: $excludedlandmarkDescription = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.landmarkDescription
Alias: $excludedclockFacePosition = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.clockFacePosition
Alias: $excludeddevice = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.distanceFromLandmark.device
Alias: $excludedvalue = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.distanceFromLandmark.value
Alias: $excludedsurfaceOrientation = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.surfaceOrientation
Alias: $excludedspatialReference = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.spatialReference
Alias: $excludedqualifier = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.qualifier

Profile: Body_Structure_Base
Parent: BodyStructure
Id: body-structure-base
Title: "Profile Body Structure"
Description: "Profile for the base definition of all body structures."
* identifier 1..*
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier contains
    bodyStructureIdentifier 1..1 
* identifier[bodyStructureIdentifier].use = #usual
* identifier[bodyStructureIdentifier].type = http://hl7.org/fhir/resource-types#BodyStructure
* identifier[bodyStructureIdentifier].type.coding 1..*
* identifier[bodyStructureIdentifier].value 1..1
* location 0..0
* locationQualifier 0..0
* extension contains Diagnosis named diagnosis 0..* MS and
    IncludedStructure named included-structure 1..* MS and
    ExcludedStructure named excluded-structure 0..* MS


Extension: IncludedStructure
Id: included-structure
Title: "Included Structure"
Description: "Description of the included Structure of the Body Structure"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure" (exactly)
* extension contains 
    $structure 1..* MS 
    and $laterality 0..* MS
    and $landmarkDescription 0..* MS 
    and $clockFacePosition 0..* MS 
    and $device 0..* MS 
    and $value 0..* MS 
    and $surfaceOrientation 0..* MS 
    and $spatialReference 0..* MS 
    and $qualifier 0..* MS 
* extension[$structure].value[x] only CodeableConcept
* extension[$laterality].value[x] only CodeableConcept
* extension[$landmarkDescription].value[x] only CodeableConcept
* extension[$clockFacePosition].value[x] only CodeableConcept
* extension[$device].value[x] only Reference or CodeableConcept
* extension[$value].value[x] only Quantity
* extension[$surfaceOrientation].value[x] only surfaceOrientation
* extension[$spatialReference].value[x] only Reference or CodeableConcept
* extension[$qualifier].value[x] only CodeableConcept



Extension: ExcludedStructure
Id: excluded-structure
Title: "Excluded Structure"
Description: "Description of the excluded Structure of the Body Structure"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure (exactly)"
* extension contains
    $excludedstructure 1..* MS and
    $excludedlaterality 0..* MS and
    $excludedlandmarkDescription 0..* MS and
    $excludedclockFacePosition 0..* MS and
    $excludeddevice 0..* MS and
    $excludedvalue 0..* MS and
    $excludedsurfaceOrientation 0..* MS and
    $excludedspatialReference 0..* MS and
    $excludedqualifier 0..* MS
* extension[$excludedstructure].value[x] only CodeableConcept
* extension[$excludedlaterality].value[x] only CodeableConcept
* extension[$excludedlandmarkDescription].value[x] only CodeableConcept
* extension[$excludedclockFacePosition].value[x] only CodeableConcept
* extension[$excludeddevice].value[x] only Reference or CodeableConcept
* extension[$excludedvalue].value[x] only Quantity
* extension[$excludedsurfaceOrientation].value[x] only surfaceOrientation
* extension[$excludedspatialReference].value[x] only Reference or CodeableConcept
* extension[$excludedqualifier].value[x] only CodeableConcept


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