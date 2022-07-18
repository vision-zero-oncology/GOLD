Profile: SD_Clinical_Study
Parent: ResearchStudy
Id: sd-clinical-study 
Title: "SD Clinical Study"
Description: "This profile describes a clinical study in which a patient takes part."
* identifier MS
* title MS 
* status MS
* primaryPurposeType MS
* phase 1.. 
* phase from http://hl7.org/fhir/ValueSet/research-study-phase (required)
* category 1.. MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    studyCategory 0..1 MS and
    studyDesign 0..* MS and
    typeOfBlinding 0..1 MS and
    typeOfRandomization 0..1 MS
// Kategorie = Interv / Beob / andere
// Design = Basket / Umbrella / AMG / MPG / sonstige
* category[studyCategory] from VS_Studienkategorien_NCIT (required)
* category[studyDesign] from VS_Studiendesign_NCIT (required)
* category[typeOfBlinding] from VS_TypeOfBlinding_NCIT (required)
* category[typeOfRandomization] from VS_TypeOfRandomization_NCIT (required)
* arm MS
* arm.type MS
* arm.type from VS_TypeOfStudyArm_NCIT (required)


// Studienkategorien 
ValueSet: VS_Studienkategorien_NCIT
Id: vs-studienkategorien-ncit
Title: "ValueSet Studienkategorien NCIt"
Description: "Studienkategorien aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/studienkategorien-ncit"
* NCIT#C98388 "Interventional Study"
* NCIT#C16084 "Observational Study"
//* NCIT#C142615 "Non-Interventional Study"

// Studiendesign
ValueSet: VS_Studiendesign_NCIT
Id: vs-studiendesign-ncit
Title: "ValueSet Studiendesign NCIt"
Description: "Studiendesign aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/studiendesign-ncit"
* NCIT#C165842 "Umbrella Protocol"
* NCIT#C165823 "Basket Protocol"
* NCIT#C139174 "Device Feasibility Study" // MPG
* NCIT#C49656 "Treatment Study" // AMG
* NCIT#C15197 "Case-Control Study"
* NCIT#C15362 "Case Study"
* NCIT#C127779 "Observational Case-Crossover Study"
* NCIT#C127780 "Ecologic or Community Based Study"
* NCIT#C15407 "Family Study"
* NCIT#C15208 "Cohort Study"
* NCIT#C139456 "Trend Analysis"
* NCIT#C53311 "Panel Study"
* NCIT#C15273 "Longitudinal Study" 	
* NCIT#C53310 "Cross-Sectional Study"
* NCIT#C15311 "Quality Control"
// other?

// Blinding 
ValueSet: VS_TypeOfBlinding_NCIT
Id: vs-typeofblinding-ncit
Title: "ValueSet Type of Blinding NCIt"
Description: "Type of Blinding aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/type-of-blinding-ncit"
* NCIT#C49659 "Open Label Study" // unverblindet
* NCIT#C28233 "Single Blind Study" // einfach-verblindet
* NCIT#C15228 "Double Blind Study" // doppelt verblindet
* NCIT#C66959 "Triple Blind Study" // dreifach verblindet
* NCIT#C156592 "Open Label for Treatment And Double Blind to Dose"

// Randomization 
ValueSet: VS_TypeOfRandomization_NCIT
Id: vs-typeofrandomization-ncit
Title: "ValueSet Type of Randomization NCIt"
Description: "Type of Randomization aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/type-of-randomization-ncit"
* NCIT#C15417 "Randomized Clinical Trial"
* include codes from system NCIT where concept descendent-of #C25196 "Randomization"
* NCIT#C93043 "Nonrandomized Clinical Trial"

// Study Arm Type
ValueSet: VS_TypeOfStudyArm_NCIT
Id: vs-type-of-study-arm-ncit
Title: "ValueSet Type of Study Arm NCIt"
Description: "Type of Study Arm aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/type-of-study-arm-ncit"
* include codes from system NCIT where concept descendent-of #C15538 "Protocol Treatment Arm"