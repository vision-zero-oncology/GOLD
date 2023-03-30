Profile: Radiological_Diagnostic_Report
Parent: DiagnosticReport
Id: radiological-diagnostic-report
Title: "Profile Radiological Diagnostic Report"
Description: "Profile for the base definition of all radiological diagnostic reports."
* ^version = "1.0.0"
* ^status = #active
* status 
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
* extension 1..*
* extension contains $SupportingInfo named supportingInfo 1..* MS
* result 1.. 

Instance: example-diagnostic-report
InstanceOf: radiological-diagnostic-report
Usage: #example
Title: "Example Diagnostic Report"
* code = $SCT#722124004 "Radiology studies report"
* status = #final
* category.coding = $SCT#4231000179109 "Mammography report"
* subject = Reference(ExamplePatient)
* extension.url = $SupportingInfo
* extension.valueReference = Reference(ExampleFindingObservation)
* result = Reference (ExampleResultObservation)