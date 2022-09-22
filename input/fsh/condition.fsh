// Tumor Condition Profile
Profile: TumorDisorder
Parent: $IsikDiagnose
Id: tumor-disorder
Title: "Tumor Disorder"
Description: "Profile for a tumor disorder"
* insert Metadata
* code  
  * coding contains icd-o-3-m 0..1 MS
  * coding[icd-o-3-m] from $ICDO3M (required)
    * ^patternCoding.system = $ICDO3
    * system 1.. MS
    * code 1.. MS
    * extension contains diagnosesicherung-icd-o named diagnosesicherung 0..1 MS
  * text MS
* bodySite MS
  * coding ^slicing.discriminator.type = #pattern
  * coding ^slicing.discriminator.path = "$this"
  * coding ^slicing.rules = #open
  * coding ^slicing.ordered = false
  * coding contains snomed-ct 0..1 MS and icdo3-t 1..1 MS
  * coding[snomed-ct] from $MIIBiobankVSBodySite (required)
    * system 1..1 MS
    * code 1..1 MS
    * display MS
  * coding[icdo3-t] from $ICDO3T (required)
    * system 1..1 MS
    * code 1..1 MS
    * version 1..1 MS
    * display MS
* onset[x] MS
* abatement[x] MS
* abatement[x] only dateTime
* stage MS
* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "$this"
* stage ^slicing.rules = #open
* stage ^slicing.ordered = false
* stage contains staging 0..* and grading 0..* MS
* stage[staging]
  * assessment MS
  * assessment only Reference(uicc-tnm)
  * type 1.. MS
  * type = $SCT#254293002
* stage[grading]
  * assessment MS
  * assessment only Reference(histopathological-grading-who)
  * type 1.. MS
  * type = $SCT#258244004
* evidence MS
  * detail MS

Extension: DiagnosesicherungICDO
Id: diagnosesicherung-icd-o
Title: "Diagnosesicherung ICD O"
Description: "Extension für die Erfassung der Diagnosesicherung der ICD-O-3"
* insert Metadata
* valueCodeableConcept from $DiagnosesicherungVS (required)

// TODO: Example 
Instance: mamma-ca-rechts
InstanceOf: tumor-disorder
Usage: #example
Title: "Diagnose MammaCa rechts"
Description: "Beispiel einer Diagnose Mamma Ca rechts."
* clinicalStatus = $ClinStatus#active
* verificationStatus = $VerStatus#confirmed
* code.coding[ICD-10-GM] = $ICD10GM#C50.2 "Bösartige Neubildung der Brustdrüse [Mamma] Oberer innerer Quadrant der Brustdrüse"
* code.coding[ICD-10-GM].version = "2019"
* code.coding[ICD-10-GM].extension[seitenlokalisation].valueCoding = $ICD10SeitenlokalisationCS#R "Rechts"
* code.coding[icd-o-3-m] = $ICDO3#8500/3 "Invasives duktales Karzinom o.n.A."
* code.coding[icd-o-3-m].version = "2019"
* code.coding[icd-o-3-m].extension[diagnosesicherung-icd-o].valueCodeableConcept = $DiagnosesicherungCS#7 "Histologische Untersuchung eines Primärtumors"
* bodySite.coding[icdo3-t] = $ICDO3#C50.2 "Oberer innerer Quadrant der Brust"
* bodySite.coding[icdo3-t].version = "2019"
* subject = Reference(Patient/example)
* onsetDateTime = "2019-09-17"
* recordedDate = "2019-09-19"
* recorder = Reference(Practitioner/dokumentar)
* asserter = Reference(Practitioner/kliniker)
* stage[staging].assessment = Reference(Observation/tnm-cT2cN2cM1IV)
* stage[staging].type = $SCT#254293002 "Tumor-node-metastasis (TNM) tumor staging system (tumor staging)"
* stage[grading].assessment = Reference(Observation/G3)
* stage[grading].type = $SCT#258244004 "Tumor histopathological grade status values (tumor staging)"
* evidence.detail = Reference(DiagnosticReport/pathologie)