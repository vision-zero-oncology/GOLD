Profile:        ECOG
Parent:         Observation
Description:    "Profile for the Eastern Cooperative Oncology Group (ECOG) Performance Status that represents a patient's functional status."
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains survey 1..1 MS
* category[survey] = ObsCat#survey
* code = LNC#89247-1
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* valueCodeableConcept from http://loinc.org/vs/LL529-9

Instance: ECOGExample
InstanceOf: ECOG
Usage: #example
* status = #final
* category[survey] = ObsCat#survey
* code = LNC#89247-1 "ECOG Performance Status score"
* subject = Reference(Beispielpatient)
* effectiveDateTime = "2021-01-17"
* valueCodeableConcept = LNC#LA9623-5