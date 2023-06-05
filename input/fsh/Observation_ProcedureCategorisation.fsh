//TNM
// TNM Tumor Category Observation
Profile: TNM_Category_Observation
Parent: Observation
Id: tnm-category-observation
Title: "TNM Tumor Category Observation"
Description: "Profiles the category of a BodyStructure resource in the context of one TNM procedure"
* value[x] only CodeableConcept
* value[x] from VS_TNM_Category_Observation (required)
* partOf 1..1 
* partOf only $RadTnmReadProc 
* subject 1..1 MS
* subject only Patient
* focus 1..1 MS
* focus only BodyStructure 

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
* status = #completed
* valueCodeableConcept = $LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* partOf = Reference(Procedure/ExampleTNMProcedure)
* subject = Reference(ExamplePatient)
* focus = Reference(ExampleBodyStructure)


//RECIST
// RECIST Tumor Category Observation
Profile: RECISTCategoryObservation
Parent: Observation
Id: recist-category-observation
Title: "RECIST Tumor Category Observation"
Description: "Profiles the category of a BodyStructure resource in the context of one RECIST procedure"
* ^url = "https://www.vision-zero-oncology.de/fhir/"
* value[x] only CodeableConcept
* value[x] from VS_ (required)
* partOf 1..1 
* partOf only $RadRecistReadProc 
* subject 1..1 MS
* subject only Patient
* focus 1..1 MS
* focus only BodyStructure 

// RECIST Categories Valueset
ValueSet: VS_RECIST_Category_Observation
Id: vs-recsit-category-observation
Title: "Valueset for Categories of a BodyStructure in the context of one RECIST procedure"
Description: "TODO"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-recsit-category-observation"
* $system #code	"display" //TODO

//RECIST Example
Instance: example-recist-category-observation
InstanceOf: recist-category-observation
Usage: #example
Title: "Example of a RECIST Tumor Category Observation"
* code = //TODO
* status = #completed
* valueCodeableConcept = //TODO
* partOf = Reference(Procedure/ExampleRECISTProcedure)
* subject = Reference(ExamplePatient)
* focus = Reference(ExampleBodyStructure)


