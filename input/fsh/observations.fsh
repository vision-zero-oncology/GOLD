// ECOG

Profile: ECOG
Parent: Observation
Description: "Profile for the Eastern Cooperative Oncology Group (ECOG) Performance Status that represents a cancer patient's functional status."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1
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
    valueLoinc 1..1 MS and
    valueSnomed 0..1
* valueCodeableConcept.coding[valueLoinc] from http://loinc.org/vs/LL529-9 (required)
* valueCodeableConcept.coding[valueLoinc] ^patternCoding.system = "http://loinc.org"
* valueCodeableConcept.coding[valueLoinc].system 1..
* valueCodeableConcept.coding[valueLoinc].code 1..
* valueCodeableConcept.coding[valueSnomed] from VS_ECOG_Performance_Status_SNOMED (required)
* valueCodeableConcept.coding[valueSnomed] ^patternCoding.system = "http://snomed.info/sct"
* valueCodeableConcept.coding[valueSnomed].system 1..
* valueCodeableConcept.coding[valueSnomed].code 1..

Instance: ECOGExample
InstanceOf: ECOG
Usage: #example
Description: "Example ECOG status observation."
* status = #final
* category[survey] = ObsCat#survey
* code.coding[loinc] = LNC#89247-1 "ECOG Performance Status score"
* code.coding[snomed] = SCT#423740007 "Eastern Cooperative Oncology Group performance status (observable entity)"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2021-01-17"
* valueCodeableConcept.coding[valueLoinc] = LNC#LA9623-5 "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work"
* valueCodeableConcept.coding[valueSnomed] = SCT#422512005 "Eastern Cooperative Oncology Group performance status - grade 1 (finding)|"

// KarnofskyIndex

Profile: KarnofskyIndex
Parent: Observation
Description: "Profile for the Karnofsky Performance Status to measure a cancer patient's ability to perform ordinary tasks."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1
* category[survey] = ObsCat#survey
* code = LNC#89243-0
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL4986-7

Instance: KarnofskyIndexExample
InstanceOf: KarnofskyIndex
Usage: #example
Description: "Example Karnofsky performance status observation."
* status = #final
* code = LNC#89243-0 "Karnofsky Performance Status score"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2021-01-17"
* valueCodeableConcept = LNC#LA29177-5 "Normal activity with effort; some signs or symptoms of disease"