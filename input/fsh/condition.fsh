// Tumor Condition Profile
Profile: TumorCondition
// Parent: $mii-basis-diagnose
Parent: IsikDiagnose
Id: tumor-condition
Title: "Tumor Condition"
Description: "Profile for a tumor condition"
* code  
  * coding contains icd-o-3-m 0..1 MS
  * coding[icd-o-3-m] from ICDO3 (required)
    * ^patternCoding.system = SCT
    * system 1.. MS
    * code 1.. MS