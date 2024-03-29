// External Code Systems
Alias: $LNC = http://loinc.org
Alias: $SCT = http://snomed.info/sct
Alias: $UCUM = http://unitsofmeasure.org
Alias: $NCIT = http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl
Alias: $RID = http://radlex.org/RID
Alias: $ICD10GM = http://fhir.de/CodeSystem/bfarm/icd-10-gm
Alias: $iso3166 = urn:iso:std:iso:3166
Alias: $vs-atc = http://fhir.de/ValueSet/bfarm/atc
Alias: $cs-atc = http://fhir.de/CodeSystem/bfarm/atc
Alias: $standardterms = http://standardterms.edqm.eu

// From Terminology.hl7.org
Alias: $ClinStatus = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $VerStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: $ObsCat = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $ICDO3 = http://terminology.hl7.org/CodeSystem/icd-o-3
Alias: $StudyPrimPurpType = http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type
Alias: $StudyObjectiveType = http://terminology.hl7.org/CodeSystem/research-study-objective-type
Alias: $StudyPhase = http://terminology.hl7.org/CodeSystem/research-study-phase

// From hl7.org
Alias: $BodyWeightUCUM = http://hl7.org/fhir/ValueSet/ucum-bodyweight|4.0.0
Alias: $BodyLengthUCUM = http://hl7.org/fhir/ValueSet/ucum-bodylength|4.0.0
Alias: $ResearchStudyPhase = http://hl7.org/fhir/ValueSet/research-study-phase
Alias: $DSS = http://terminology.hl7.org/CodeSystem/v2-0074

// Core Extensions
// Alias: $WorkFlowEpisodeOfCare = http://hl7.org/fhir/StructureDefinition/workflow-episodeOfCare


//TNM related
Alias: $UICC-TNM = urn:oid:2.16.840.1.113883.15.16

//BasisProfile-DE
// Alias: $ICD10Coding = http://fhir.de/StructureDefinition/CodingICD10GM
// Alias: $CodingOPS = http://fhir.de/StructureDefinition/CodingOPS
// Alias: $OPS = http://fhir.de/CodeSystem/bfarm/ops
// Alias: $ICD10Seitenlokalisation = http://fhir.de/StructureDefinition/seitenlokalisation
// Alias: $DiagnoseSicherheit = http://fhir.de/StructureDefinition/icd-10-gm-diagnosesicherheit
// Alias: $Seitenlokalisation = http://fhir.de/StructureDefinition/seitenlokalisation
// Alias: $UICCCS = http://fhir.de/onkologie/CodeSystem/UICCCS
Alias: $ICD10SeitenlokalisationCS = https://fhir.kbv.de/CodeSystem/KBV_CS_SFHIR_ICD_SEITENLOKALISATION 
Alias: $SupportingInfo = http://hl7.org/fhir/StructureDefinition/workflow-supportingInfo

// HL7 DE
Alias: $ICDO3T = http://fhir.de/onkologie/ValueSet/icd-o-3-topologie
Alias: $ICDO3M = http://fhir.de/onkologie/ValueSet/icd-o-3-morphologie
Alias: $DSS = http://terminology.hl7.org/CodeSystem/v2-0074

//ISIK
Alias: $IsikDiagnose = https://gematik.de/fhir/isik/v2/Basismodul/StructureDefinition/ISiKDiagnose

// MII
Alias: $MIIBiobankVSBodySite = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/ValueSet/sct-body-structures 
Alias: $MIIBiobankBioprobeCore = https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore

// GOLD
Alias: $DiagnosesicherungVS = https://www.vision-zero-oncology.de/fhir/ValueSet/vs-diagnosesicherung-icdo3
Alias: $DiagnosesicherungCS = https://www.vision-zero-oncology.de/fhir/CodeSystem/cs-diagnosesicherung-icdo3
Alias: $RadReadProc = https://www.vision-zero-oncology.de/fhir/StructureDefinition/radiological-read-procedure
Alias: $RadTnmReadProc = https://www.vision-zero-oncology.de/fhir/StructureDefinition/radiological-tnm-read-procedure
Alias: $RadRecistReadProc = https://www.vision-zero-oncology.de/fhir/StructureDefinition/radiological-recist-read-procedure

// HL7 Backport
Alias: $structure = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.structure
Alias: $laterality = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.laterality
Alias: $landmarkDescription = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.landmarkDescription
Alias: $clockFacePosition = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.clockFacePosition
Alias: $device = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark.device
Alias: $value = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.distanceFromLandmark.value
Alias: $surfaceOrientation = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.bodyLandmarkOrientation.surfaceOrientation
Alias: $spatialReference = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.spatialReference
Alias: $qualifier = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.includedStructure.qualifier
Alias: $excludedstructure = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.structure
Alias: $excludedlaterality = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.laterality
Alias: $excludedlandmarkDescription = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.landmarkDescription
Alias: $excludedclockFacePosition = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.clockFacePosition
Alias: $excludeddevice = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.distanceFromLandmark.device
Alias: $excludedvalue = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.distanceFromLandmark.value
Alias: $excludedsurfaceOrientation = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.bodyLandmarkOrientation.surfaceOrientation
Alias: $excludedspatialReference = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.spatialReference
Alias: $excludedqualifier = http://hl7.org/fhir/5.0/StructureDefinition/extension-BodyStructure.excludedStructure.qualifier
