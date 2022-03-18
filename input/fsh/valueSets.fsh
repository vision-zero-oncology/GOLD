// ECOG
ValueSet: VS_ECOG_Performance_Status_SNOMED
Id: vs-ecog-performance-status-snomed
Title: "ValueSet ECOG Performance Status SNOMED"
Description: "The ValueSet contains the ECOG Performance Status values from SNOMED CT."
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* include codes from system SCT where concept descendent-of #424122007

// Morphology ICD-O-3 
ValueSet: VS_Morphology_ICD_O_3
Id: vs-morphology-icd-o-3
Title: "ValueSet Morphology ICD-O-3"
Description: "The ValueSet contains the morphology (histology) codes from ICD-O-3."
* include codes from system ICDO3 where concept regex "^\\d\\S*$"

// Topography ICD-O-3 
ValueSet: VS_Topography_ICD_O_3
Id: vs-topography-icd-o-3
Title: "ValueSet Topography ICD-O-3"
Description: "The ValueSet contains the topography codes from ICD-O-3."
* include codes from system ICDO3 where concept regex "^C\\S*$"

// Morphology SNOMED
ValueSet: VS_Morphology_SNOMED
Id: vs-morphology-snomed
Title: "ValueSet Morphology SNOMED"
Description: "The ValueSet contains the morphology (histology) codes from SNOMED CT."
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* include codes from system SCT where concept descendent-of #400177003

// Topography SNOMED
ValueSet: VS_Topography_SNOMED
Id: vs-topography-snomed
Title: "ValueSet Topography SNOMED"
Description: "The ValueSet contains the topography codes from SNOMED CT."
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* include codes from system SCT where concept descendent-of #123037004

// Tumor Histologic Grade SNOMED 
ValueSet: VS_Histologic_Grade_SNOMED
Id: vs-histologic-grade-snomed
Title: "ValueSet Histologic Grade SNOMED"
Description: "The ValueSet contains codes for the grading system that is generally used for a tumor type if no other system is specified from SNOMED CT."
* SCT#12619005 "GX grade (finding)"
* SCT#54102005 "G1 grade (finding)"
* SCT#1663004 "G2 grade (finding)"
* SCT#61026006 "G3 grade (finding)"
* SCT#258245003 "G4 grade (finding)"