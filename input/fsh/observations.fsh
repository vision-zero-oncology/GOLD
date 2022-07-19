// Vitals Signs Base Profile
Profile: SD_Vital_Signs_Base
Parent: Observation
Id: vital-signs-base
Title: "Profile Vital Signs Base"
Description: "Profile for the base definition of all vital signs. May not be used directly. Only for reprofiling purposes."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/vital-signs-base"
* obeys vs-2
* status MS
* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains vs-cat 1..1
* category[vs-cat] = ObsCat#vital-signs
* code MS
* subject 1.. MS
* subject only Reference(Patient)
* effective[x] 1.. MS
* effective[x] only dateTime or Period
* effective[x] obeys vs-1
* effective[x] ^slicing.discriminator.type = #type
* effective[x] ^slicing.discriminator.path = "$this"
* effective[x] ^slicing.rules = #open
* effective[x] ^short = "Often just a dateTime for vital signs"
* effective[x] ^definition = "Often just a dateTime for vital signs."
* value[x] ^short = "Vital Signs value are recorded using the Quantity data type. For supporting observations such as Cuff size could use other datatypes such as CodeableConcept."
* value[x] ^definition = "Vital Signs value are recorded using the Quantity data type. For supporting observations such as Cuff size could use other datatypes such as CodeableConcept."
* value[x] ^requirements = "9. SHALL contain exactly one [1..1] value with @xsi:type=\"PQ\" (CONF:7305)."
* value[x] ^condition = "vs-2"
* dataAbsentReason ^condition = "vs-2"
* hasMember ^short = "Used when reporting vital signs panel components"
* hasMember ^definition = "Used when reporting vital signs panel components."

Instance: example-vital-signs-base
InstanceOf: vital-signs-base
Usage: #example
Title: "Example Vital Signs Base Observation"
Description: "Example of a vital signs base observation."
* status = #final
* category[vs-cat] = ObsCat#vital-signs
* code.coding[0] = LNC#8302-2 "Body height"
* code.coding[+] = SCT#1153637007 "Body height (observable entity)"
* code.text = "Body height"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-02-18"
* valueQuantity = 167 'cm' "centimeter"

//Body Height
Profile: SD_Body_Height
Parent: SD_Vital_Signs_Base
Id: body-height
Title: "Profile Body Height"
Description: "Profile for body height of a patient"
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/body-height"
* code ^short = "Body Height"
* code ^definition = "Body Height"
* code ^comment = "Additional codes that translate or map to this code are allowed. For example a more granular LOINC code or code that is used locally in a system."
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed 0..*
* code.coding[loinc] = LNC#8302-2
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* code.coding[snomed] = SCT#1153637007
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* value[x] only Quantity
* value[x] MS
* valueQuantity 0..1
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1.. MS
* valueQuantity.code from http://hl7.org/fhir/ValueSet/ucum-bodylength|4.0.0 (required)
* dataAbsentReason MS

Instance: example-body-height
InstanceOf: body-height
Usage: #example
Title: "Example Body Height"
Description: "Example body height of a patient."
* status = #final
* category[vs-cat] = ObsCat#vital-signs
* code.coding[loinc] = LNC#8302-2 "Body height"
* code.coding[snomed] = SCT#1153637007 "Body height (observable entity)"
* code.text = "Body height"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-02-18"
* valueQuantity = 167 'cm' "centimeter"

// Body Weight
Profile: SD_Body_Weight
Parent: SD_Vital_Signs_Base
Id: body-weight
Title: "Profile Body Weight"
Description: "Profile for body weight of a patient"
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/body-weight"
* code ^short = "Body Weight"
* code ^definition = "Body Weight"
* code ^comment = "Additional codes that translate or map to this code are allowed. For example a more granular LOINC code or code that is used locally in a system."
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed 0..*
* code.coding[loinc] = LNC#29463-7
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* code.coding[snomed] = SCT#27113001
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* value[x] only Quantity
* value[x] MS
* valueQuantity 0..1
* valueQuantity.value 1.. MS
* valueQuantity.unit 1.. MS
* valueQuantity.system 1.. MS
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code 1.. MS
* valueQuantity.code from http://hl7.org/fhir/ValueSet/ucum-bodyweight|4.0.0 (required)
* dataAbsentReason MS

Instance: example-body-weight
InstanceOf: body-weight
Usage: #example
Title: "Example Body Weight"
Description: "Example body weight of a patient."
* status = #final
* category[vs-cat] = ObsCat#vital-signs
* code.coding[loinc] = LNC#29463-7 "Body weight"
* code.coding[snomed] = SCT#27113001 "Body weight (observable entity)"
* code.text = "Body weight"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-02-18"
* valueQuantity = 84 'kg' "kilogram"

// ECOG
Profile: SD_ECOG_Performance_Status
Parent: Observation
Id: ecog-performance-status
Title: "Profile ECOG Performance Status"
Description: "Profile for the Eastern Cooperative Oncology Group (ECOG) Performance Status that represents a cancer patient's functional status."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/ecog-performance-status"
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..*
* category[survey] = ObsCat#survey
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed 0..*
* code.coding[loinc] = LNC#89247-1
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* code.coding[snomed] = SCT#423740007
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    valueLoinc 1..1 and
    valueSnomed 0..1
* valueCodeableConcept.coding[valueLoinc] from http://loinc.org/vs/LL529-9 (required)
* valueCodeableConcept.coding[valueLoinc] ^patternCoding.system = "http://loinc.org"
* valueCodeableConcept.coding[valueLoinc].system 1..
* valueCodeableConcept.coding[valueLoinc].code 1..
* valueCodeableConcept.coding[valueSnomed] from VS_ECOG_Performance_Status_SNOMED (required)
* valueCodeableConcept.coding[valueSnomed] ^patternCoding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding[valueSnomed].system 1..
* valueCodeableConcept.coding[valueSnomed].code 1..

Instance: example-ecog-performance-status
InstanceOf: ecog-performance-status
Usage: #example
Title: "Example ECOG Performance Status"
Description: "Example ECOG status observation."
* status = #final
* category[survey] = ObsCat#survey
* code.coding[loinc] = LNC#89247-1 "ECOG Performance Status score"
* code.coding[snomed] = SCT#423740007 "Eastern Cooperative Oncology Group performance status (observable entity)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-03-07"
* valueCodeableConcept.coding[valueLoinc] = LNC#LA9623-5 "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work"
* valueCodeableConcept.coding[valueSnomed] = SCT#422512005 "Eastern Cooperative Oncology Group performance status - grade 1 (finding)"

// KarnofskyIndex

Profile: SD_Karnofsky_Performance_Status
Parent: Observation
Id: karnofsky-performance-status
Title: "Profile Karnofsky Performance Status"
Description: "Profile for the Karnofsky Performance Status to measure a cancer patient's ability to perform ordinary tasks."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/karnofsky-performance-status"
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..*
* category[survey] = ObsCat#survey
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed 0..*
* code.coding[loinc] = LNC#89243-0
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* code.coding[snomed] = SCT#761869008
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL4986-7

Instance: example-karnofsky-performance-status
InstanceOf: karnofsky-performance-status
Usage: #example
Title: "Example Karnofsky Performance Status"
Description: "Example Karnofsky performance status observation."
* status = #final
* code.coding[loinc] = LNC#89243-0 "Karnofsky Performance Status score"
* code.coding[snomed] = SCT#761869008 "Karnofsky Performance Status score (observable entity)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-03-07"
* valueCodeableConcept = LNC#LA29177-5 "Normal activity with effort; some signs or symptoms of disease"

// Morphology(Histology) / Topography

Profile: SD_Histology_Topography
Parent: Observation
Id: histology-topography
Title: "Profile Histology Topography"
Description: "Profile for the classification of a tumor's morphology(histology) and topography using ICD-O-3."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/histology-topography"
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains laboratory 1..*
* category[laboratory] = ObsCat#laboratory
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed_hist 0..* and
    snomed_topo 0..*
* code.coding[loinc] = LNC#59847-4
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* code.coding[snomed_hist] = SCT#1145214003
* code.coding[snomed_hist].system 1..
* code.coding[snomed_hist].code 1..
* code.coding[snomed_topo] = SCT#371480007
* code.coding[snomed_topo].system 1..
* code.coding[snomed_topo].code 1..
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    morphologyICD-O-3 1..1 MS and
    morphologySnomed 0..1
* valueCodeableConcept.coding[morphologyICD-O-3] from VS_Morphology_ICD_O_3 (required)
* valueCodeableConcept.coding[morphologyICD-O-3] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* valueCodeableConcept.coding[morphologyICD-O-3].system 1..
* valueCodeableConcept.coding[morphologyICD-O-3].code 1..
* valueCodeableConcept.coding[morphologySnomed] from VS_Morphology_SNOMED (required)
* valueCodeableConcept.coding[morphologySnomed] ^patternCoding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding[morphologySnomed].system 1..
* valueCodeableConcept.coding[morphologySnomed].code 1..
* bodySite.coding ^slicing.discriminator.type = #pattern
* bodySite.coding ^slicing.discriminator.path = "$this"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains
    topographyICD-O-3 1..1 MS and
    topographySnomed 0..1
* bodySite.coding[topographyICD-O-3] from VS_Topography_ICD_O_3 (required)
* bodySite.coding[topographyICD-O-3] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/icd-o-3"
* bodySite.coding[topographyICD-O-3].system 1..
* bodySite.coding[topographyICD-O-3].code 1..
* bodySite.coding[topographySnomed] from VS_Topography_SNOMED (required)
* bodySite.coding[topographySnomed] ^patternCoding.system = "http://snomed.info/sct"
* bodySite.coding[topographySnomed].system 1..
* bodySite.coding[topographySnomed].code 1..

Instance: example-histology-topography
InstanceOf: histology-topography
Usage: #example
Title: "Example Histology and Topography"
Description: "Example tumor histology and topography observation."
* status = #final
* code.coding[loinc] = LNC#59847-4 "Histology and Behavior ICD-O-3 Cancer"
* code.coding[snomed_hist] = SCT#1145214003 "Histologic feature of proliferative mass (observable entity)"
* code.coding[snomed_topo] = SCT#371480007 "Anatomic location of neoplasm (observable entity)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-03-07"
* valueCodeableConcept.coding[morphologyICD-O-3] = ICDO3#8070/33 "schlecht differenziertes Plattenepithelkarzinom"
* valueCodeableConcept.coding[morphologySnomed] = SCT#1162767002 "Squamous cell carcinoma (morphologic abnormality)"
* bodySite.coding[topographyICD-O-3] = ICDO3#C34.1 "Lungenoberlappen"
* bodySite.coding[topographySnomed] = SCT#45653009 "Structure of upper lobe of lung (body structure)"

// Histologic Tumor Grade

Profile: SD_Histopathological_Grading_WHO
Parent: Observation
Id: histopathological-grading-who
Title: "Profile Histopathological Tumor Grading WHO"
Description: "Profile for the description of a tumor's grade using the general four-tier grading scheme following the recommendations of the WHO classification of tumors and UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/histopathological-grading-who"
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains laboratory 1..*
* category[laboratory] = ObsCat#laboratory
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed 0..*
* code.coding[loinc] = LNC#33732-9
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..
* code.coding[snomed] = SCT#371469007
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "$this"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    histologicGradeSnomed 1..1 MS
* valueCodeableConcept.coding[histologicGradeSnomed] from VS_Histopathological_Grade_SNOMED (required)
* valueCodeableConcept.coding[histologicGradeSnomed] ^patternCoding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding[histologicGradeSnomed].system 1..
* valueCodeableConcept.coding[histologicGradeSnomed].code 1..

Instance: example-histologic-grade
InstanceOf: histopathological-grading-who
Usage: #example
Title: "Example Histologic Tumor Grade"
Description: "Example tumor grade using the general four-tier grading scheme."
* status = #final
* code.coding[loinc] = LNC#33732-9 "Histology grade [Identifier] in Cancer specimen"
* code.coding[snomed] = SCT#371469007 "Histologic grade of neoplasm (observable entity)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-03-07"
* valueCodeableConcept.coding[histologicGradeSnomed] = SCT#54102005 "G1 grade (finding)"

// Introducing radlex codes
Alias: $RID = http://radlex.org/RID/

// RECIST assessment response
Profile: RecistAssessmentResponse
Parent: Observation
Id: recist-assessment-response
Title: "Profile RECIST timepoint assessment response"
Description: "Profile for the RECIST timepoint assessment response which is available for each assessment timepoint as published here: https://recist.eortc.org/recist-1-1-2/
Please note there is no assessment timepoint response for the baseline assessment."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/recist-assessment-response"
* partOf only Reference(ImagingStudy)
* code = $RID11510
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from RecistAssessmentTimepointResponseVS (required)


ValueSet: RecistAssessmentTimepointResponseVS
Id: recist-asstimepoint-response-vs
Title: "recist-timepoint-response-vs"
Description: "Defines the valid values for the recist assessment response observation resource"
* $RID11514 "stable disease"
* $RID11513 "partial response"
* $RID11511 "complete imaging response"
* $RID11515 "progressive disease"

Instance: ExampleRecistAssessmentResponse
InstanceOf: recist-assessment-response
Usage: #example
Title: "Example RECIST assessment timepoint response"
Description: "Example RECIST assessment timepoint response observation."
* status = #final
* code.coding[radlex] = RID11510 "Therapeutic response"
(observable entity)"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-07-19"
* valueCodeableConcept = RID11514 "stable disease"
