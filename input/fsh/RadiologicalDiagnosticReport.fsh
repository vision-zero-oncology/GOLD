Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $DSS = http://terminology.hl7.org/CodeSystem/v2-0074

//Profile for a Radiological Diagnostic Report
Profile: Radiological_Diagnostic_Report
Parent: DiagnosticReport
Id: radiological-diagnostic-report
Title: "Profile Radiological Diagnostic Report"
Description: "Profile for the base definition of all radiological diagnostic reports."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/radiological-diagnostic-report" 
* category 1..* 
* category.coding 1.. 
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    loinc 0..1 and
    diagnostic-service-sections 0..1 and 
    snomed-ct 1..1
* category.coding[loinc] = $LNC#18748-4 "Diagnostic imaging study"
* category.coding[diagnostic-service-sections] = $DSS#RAD "Radiology"
* category.coding[snomed-ct] = $SCT#4201000179104 "Imaging report"
* code 
* code.coding 1..* 
* subject 1..1 
* subject only Reference(Patient)
* extension 0..* 
* extension contains Supporting_Info named supportingInfo 0..* MS
* extension[supportingInfo] ^definition = "Enables to reference a supporting info <Observation or Procedure>. It contains additional information not containt in results and was used/applied during the creation of the report e.g. intermediate Observation results like RECIST target sum or infiltrations used within TNM staging procedures."
* result 0..* MS 
* imagingStudy 0..* MS
* specimen 0..0


//Supporting Info Extension. HL7 Extension for supporting info not used because of Reference restriction to Observation or Procedure
Extension: Supporting_Info
Id: supporting-info
Title: "Supporting Info"
Description: "Enables to reference a finding <Observation> the diagnostic report refers to"
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/supporting-info" 
* value[x] 1..1
* value[x] only Reference(Observation or Procedure)


//Example of a Radiological Diagnostic Report
Instance: example-diagnostic-report
InstanceOf: radiological-diagnostic-report
Usage: #example
Title: "Example Diagnostic Report"
* code = $SCT#4231000179109 "Mammography report"
* status = #final
* category.coding[snomed-ct] = $SCT#4201000179104 "Imaging report"
* subject = Reference(ExamplePatient)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/supportingInfo"
* extension.valueReference = Reference(Observation/ExampleFindingObservation)
* extension.url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/supportingInfo"
* extension.valueReference = Reference(Procedure/ExampleProcedure)
* result = Reference (ExampleResultObservation)
* imagingStudy = Reference (ExampleStudy)