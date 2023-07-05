//TNM
// TNM Tumor Category Observation
Profile: TNM_Category_Observation
Parent: Observation
Id: tnm-category-observation
Title: "TNM Tumor Category Observation"
Description: "Profiles the category of a BodyStructure resource in the context of one TNM procedure"
* value[x] only CodeableConcept
* value[x] from VS_TNM_Category_Observation (required)
* partOf 1..1 MS
* partOf only Reference(radiological-tnm-read-procedure)
* subject 1..1 MS
* subject only Reference(Patient)
* focus 1..1 MS
* focus only Reference(BodyStructure) 

// TNM Categories Valueset
ValueSet: VS_TNM_Category_Observation
Id: vs-tnm-category-observation
Title: "Valueset for Categories of a BodyStructure in the context of one TNM procedure"
Description: "This Valueset contains the coded for the different categories for BodyStructures in the context of TNM (Tumor|Node|Metastase)"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-tnm-category-observation"
* $LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* $LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* $LNC#21907-1 "Distant metastases.clinical [Class] Cancer"

//TNM Example
Instance: example-tnm-category-observation
InstanceOf: tnm-category-observation
Usage: #example
Title: "Example of a TNM Tumor Category Observation"
* code = $SCT#254353002 "TNM Brain tumor staging" //TODO Is this Code correct?
* status = #final
* valueCodeableConcept = $LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* partOf = Reference(Procedure/ExampleTNMProcedure)
* subject = Reference(Patient/examplePatient)
* focus = Reference(BodyStructure/exampleBodyStructure)


//RECIST
// RECIST Tumor Category Observation
Profile: RECISTCategoryObservation
Parent: Observation
Id: recist-category-observation
Title: "RECIST Tumor Category Observation"
Description: "Profiles the category of a BodyStructure resource in the context of one RECIST procedure"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-recist-category-observation"
* value[x] only CodeableConcept
* value[x] from VS_RECIST_Category_Observation (required)
* partOf 1..1 MS
* partOf only Reference(radiological-recist-read-procedure)
* subject 1..1 MS
* subject only Reference(Patient)
* focus 1..1 MS
* focus only Reference(BodyStructure) 

// RECIST Categories Valueset
ValueSet: VS_RECIST_Category_Observation
Id: vs-recsit-category-observation
Title: "Valueset for Categories of a BodyStructure in the context of one RECIST procedure"
Description: "TODO"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-recsit-category-observation"
* $SCT#103337004 "In partial remission" //TODO

//RECIST Example
Instance: example-recist-category-observation
InstanceOf: recist-category-observation
Usage: #example
Title: "Example of a RECIST Tumor Category Observation"
* code = $SCT#103337004 "In partial remission" //TODO
* status = #final
* valueCodeableConcept = $SCT#103337004 "In partial remission"//TODO
* partOf = Reference(Procedure/exampleRECISTProcedure)
* subject = Reference(Patient/examplePatient)
* focus = Reference(BodyStructure/exampleBodyStructure)


