Alias: $RadReadProc = https://www.vision-zero-oncology.de/fhir/StructureDefinition/radiological-read-procedure
Alias: $RadRecistReadProc = https://www.vision-zero-oncology.de/fhir/StructureDefinition/radiological-recist-read-procedure
Alias: $RadTnmReadProc = https://www.vision-zero-oncology.de/fhir/StructureDefinition/radiological-tnm-read-procedure
Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $DSS = http://terminology.hl7.org/CodeSystem/v2-0074

//Base Profile
//Radiological Read Procedure Profile
Profile: Radiological_Read_Procedure
Parent: Procedure
Id: radiological-read-procedure
Title: "Radiological read procedure"
Description: "This radiological procedure profile describes a radiological reading process or an automated procedure like an AI algorithm for segmentation. Not the procedure performed during image aquisition which is described in the ImagingStudy procedureReference of the linked reports in this resource. The purpose of this resource is to give structured information in the Diagnostic Report the right context. For example this way a TNM observation resource gets the context which version of TNM was used and which entity was addressed. It can also be used to give BodyStructures resources which were addressed during a radiological read additional attributes. E.g. the category of tumor within a TNM read could be 'Primary' and the very same lesion (BodyStructure) could be 'Target' in the scope of a RECIST read procedure. The resource can be linked to multiple RadiologicalDiagnosticReport resources in cases where the context of the procedure is used over several timepoints and the additional information (e.g. the RECIST category) will not change over time."
* ^url = $RadReadProc
* category 1..1
* category = $SCT#103693007 "Diagnostic procedure" (exactly)
* subject only Reference(Patient)
* report 1..* MS 
* report ^definition = "In cases where follow ups are performed (e.g. RECIST or TNM) this procedure might be used in more than one diagnostic report this way we guarantee that the tumor categories stay the same over time."


//TNM
//TNM Procedure Profile
//TODO add version to the profile
Profile: TNM_Radiological_Read_Procedure
Parent: $RadReadProc
Id: radiological-tnm-read-procedure
Title: "Radiological read procedure for clinical TNM"
Description: "This radiological procedure profile describes the radiological reading process following TNM criteria. It derives from the Radiological_Read_Procedure and needs to define which entity and in which version the read was performed."
* ^url = $RadTnmReadProc
* code 1..1
* code from VS_TNM_Radiological_Read_Procedures (required)

// TNM Procedures Valueset
ValueSet: VS_TNM_Radiological_Read_Procedures
Id: vs-tnm-radiological-read-procedure
Title: "Valueset for TNM Radiological Read Procedures"
Description: "This Valueset contains the snomed codes of the different TNM tumor staging systems"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs-tnm-radiological-read-procedure"
* include codes from system $SCT where concept descendent-of #254293002

//TNM Example
Instance: example-radiological-tnm-read-procedure
InstanceOf: radiological-tnm-read-procedure
Usage: #example
Title: "Example of a TNM Radiological Read Procedure"
* category = $SCT#103693007 "Diagnostic procedure"
* status = #completed
* subject = Reference(ExamplePatient)
* code = $SCT#254317004 "TNM Lung and pleural tumor staging"
* report = Reference(ExampleDiagnosticReport)


//RECIST
//RECIST Procedure Profile
Profile: RECIST_Radiological_Read_Procedure
Parent: $RadReadProc
Id: radiological-recist-read-procedure
Title: "Radiological read procedure for RECIST"
Description: "This radiological procedure profile describes the radiological reading process following the RECIST criteria. Not the procedure performed during image aquisition which is described in the ImagingStudy procedureReference of the linked reports in this resource."
* ^url = $RadRecistReadProc
* code 1..1
* code from VS_RECIST_Radiological_Read_Procedures (required) //TODO: Fixed Code or Value Set?

// RECIST Procedures Valueset
ValueSet: VS_RECIST_Radiological_Read_Procedures
Id: vs-recist-radiological-read-procedure
Title: "Valueset for RECIST Radiological Read Procedures"
Description: "TODO"
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/vs_recist_radiological_read_procedure"
* $system #code	"display" // value set contains differern available RECIST versions (TODO start with current versions?)

//RECIST Example
Instance: example-radiological-recist-read-procedure
InstanceOf: radiological-recist-read-procedure
Usage: #example
Title: "Example of a RECIST Radiological Read Procedure"
* category = $SCT#103693007 "Diagnostic procedure"
* status = #completed
* subject = Reference(ExamplePatient)
* code = //TODO
* report = Reference(ExampleDiagnosticReport)
