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
* identifier[bodyStructureIdentifier].type.coding.system 1..*
* identifier[bodyStructureIdentifier].type.coding.code 1..*
* identifier[bodyStructureIdentifier].value 1..*
* location 0..0
* locationQualifier 0..0
* extension contains Diagnosis named diagnosis 0..* MS and
    IncludedStructure named included-structure 1..* MS and
    ExcludedStructure named excluded-structure 0..* MS


Extension: IncludedStructure
Id: included-structure
Title: "Included Structure"
Description: "Description of the included Structure of the Body Structure"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure (exactly)"
* extension contains 
    structure 1..* MS 
    and laterality 0..* MS
    and landmarkDescription 0..* MS 
    and clockFacePosition 0..* MS 
    and device 0..* MS 
    and value 0..* MS 
    and surfaceOrientation 0..* MS 
    and spatialReference 0..* MS 
    and qualifier 0..* MS 
* extension[structure].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.structure" 
* extension[structure].value[x] only CodeableConcept
* extension[laterality].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.laterality" 
* extension[laterality].value[x] only CodeableConcept
* extension[landmarkDescription].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.landmarkDescription"
* extension[landmarkDescription].value[x] only CodeableConcept
* extension[clockFacePosition].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.clockFacePosition"
* extension[clockFacePosition].value[x] only CodeableConcept
* extension[device].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark.device"
* extension[device].value[x] only Reference
* extension[value].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark.value"
* extension[value].value[x] only Quantity
* extension[surfaceOrientation].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.surfaceOrientation" 
* extension[surfaceOrientation].value[x] only surfaceOrientation
* extension[spatialReference].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.spatialReference" 
* extension[spatialReference].value[x] only Reference
* extension[qualifier].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.qualifier" 
* extension[qualifier].value[x] only CodeableConcept



Extension: ExcludedStructure
Id: excluded-structure
Title: "Excluded Structure"
Description: "Description of the excluded Structure of the Body Structure"
* ^url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure (exactly)"
* extension contains
    excludedstructure 1..* MS and
    excludedlaterality 0..* MS and
    excludedlandmarkDescription 0..* MS and
    excludedclockFacePosition 0..* MS and
    excludeddevice 0..* MS and
    excludedvalue 0..* MS and
    excludedsurfaceOrientation 0..* MS and
    excludedspatialReference 0..* MS and
    excludedqualifier 0..* MS
* extension[excludedstructure].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.structure" 
* extension[excludedstructure].value[x] only CodeableConcept
* extension[excludedlaterality].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.laterality" 
* extension[excludedlaterality].value[x] only CodeableConcept
* extension[excludedlandmarkDescription].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.landmarkDescription"
* extension[excludedlandmarkDescription].value[x] only CodeableConcept
* extension[excludedclockFacePosition].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.clockFacePosition"
* extension[excludedclockFacePosition].value[x] only CodeableConcept
* extension[excludeddevice].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.distanceFromLandmark.device"
* extension[excludeddevice].value[x] only Reference
* extension[excludedvalue].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.distanceFromLandmark.value"
* extension[excludedvalue].value[x] only Quantity
* extension[excludedsurfaceOrientation].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.surfaceOrientation"
* extension[excludedsurfaceOrientation].value[x] only surfaceOrientation
* extension[excludedspatialReference].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.spatialReference"
* extension[excludedspatialReference].value[x] only Reference
* extension[excludedqualifier].url = "http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.qualifier "
* extension[excludedqualifier].value[x] only CodeableConcept


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