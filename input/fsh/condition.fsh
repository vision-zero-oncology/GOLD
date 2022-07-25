// Tumor Condition Profile
Profile: TumorDisorder
Parent: $IsikDiagnose
Id: tumor-disorder
Title: "Tumor Disorder"
Description: "Profile for a tumor disorder"
* code  
  * coding contains icd-o-3-m 0..1 MS
  * coding[icd-o-3-m] from $ICDO3M (required)
    * ^patternCoding.system = $SCT
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
  * type = $SCT#254293002 "Tumor-node-metastasis (TNM) tumor staging system (tumor staging)"
* stage[grading]
  * assessment MS
  * assessment only Reference(histopathological-grading-who)
  * type 1.. MS
  * type = $SCT#258244004 "Tumor histopathological grade status values (tumor staging)"
* evidence MS
  * detail MS

Extension: DiagnosesicherungICDO
Id: diagnosesicherung-icd-o
Title: "Diagnosesicherung ICD O"
Description: "Extension für die Erfassung der Diagnosesicherung der ICD-O-3"
* valueCodeableConcept from $DiagnosesicherungVS (required)

 // TODO: Example 