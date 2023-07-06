//Supporting Info Extension. HL7 Extension for supporting info not used because of Reference restriction to Observation or Procedure
Extension: Supporting_Info
Id: supporting-info
Title: "Supporting Info"
Description: "Enables to reference a finding <Observation> the diagnostic report refers to"
* ^definition = "Enables to reference a supporting info <Observation or Procedure>. It contains additional information not containt in results and was used/applied during the creation of the report e.g. intermediate Observation results like RECIST target sum or infiltrations used within TNM staging procedures."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/supporting-info" 
* value[x] 1..1
* value[x] only Reference(Observation or Procedure)
