Profile: Clinical_Study
Parent: ResearchStudy
Id: clinical-study 
Title: "Clinical Study"
Description: "This profile describes a clinical study in which a patient takes part."
* insert Metadata
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    eudraCT 0..1 and
    NCT 0..1 and
    PMID 0..1 and 
    DOI 0..1 and
    URI 0..1 and
    DRKS 0..1
* identifier[eudraCT] ^short = "Eudra CT Number"
* identifier[eudraCT] ^patternIdentifier.system = "https://www.clinicaltrialsregister.eu"
* identifier[eudraCT].system = "https://www.clinicaltrialsregister.eu"
* identifier[eudraCT].system 1.. MS
* identifier[eudraCT].value 1.. MS
* identifier[NCT] ^short = "NCT number"
* identifier[NCT] ^patternIdentifier.system = "http://clinicaltrials.gov"
* identifier[NCT].system = "http://clinicaltrials.gov"
* identifier[NCT].system 1.. MS
* identifier[NCT].value 1.. MS
* identifier[PMID] ^short = "Pubmed ID"
* identifier[PMID] ^patternIdentifier.system = "http://www.ncbi.nlm.nih.gov/pubmed"
* identifier[PMID].system = "http://www.ncbi.nlm.nih.gov/pubmed"
* identifier[PMID].system 1.. MS
* identifier[PMID].value 1.. MS
* identifier[DOI] ^short = "Digital Object Identifier"
* identifier[DOI] ^patternIdentifier.system = "https://doi.org"
* identifier[DOI].system = "https://doi.org"
* identifier[DOI].system 1.. MS
* identifier[DOI].value 1.. MS
* identifier[URI] ^short = "Uniform Resource Identifier"
* identifier[URI] ^patternIdentifier.system = "urn:ietf:rfc:3986"
* identifier[URI].system = "urn:ietf:rfc:3986"
* identifier[URI].system 1.. MS
* identifier[URI].value 1.. MS
* identifier[DRKS] ^short = "Deusches Register Klinischer Studien"
* identifier[DRKS] ^patternIdentifier.system = "https://www.drks.de"
* identifier[DRKS].system = "https://www.drks.de"
* identifier[DRKS].system 1.. MS
* identifier[DRKS].value 1.. MS
* title MS 
* status MS
* primaryPurposeType MS
* phase 1.. 
* phase from $ResearchStudyPhase (required)
* category 1.. MS
//* category from VS_ResearchStudy_Category (extensible)
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains
    studyCategory 1..1 MS and
    studyDesign 0..* MS and
    typeOfBlinding 0..1 MS and
    typeOfRandomization 0..1 MS
// Kategorie = Interv / Beob / andere
// Design = Basket / Umbrella / AMG / MPG / sonstige
* category[studyCategory] from VS_Studienkategorien_NCIT (required)
* category[studyDesign] from VS_Studiendesign_NCIT (required)
* category[typeOfBlinding] from VS_TypeOfBlinding_NCIT (required)
* category[typeOfRandomization] from VS_TypeOfRandomization_NCIT (required)
* focus MS
* focus from VS_StudyFocus_NCIT (extensible)
* arm MS
* arm.type MS
* arm.type from VS_TypeOfStudyArm_NCIT (required)


// Studienkategorien 
ValueSet: VS_Studienkategorien_NCIT
Id: studienkategorien-ncit
Title: "ValueSet Studienkategorien NCIt"
Description: "Studienkategorien aus NCI Thesaurus (NCIt)"
* insert Metadata
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* $NCIT#C98388 "Interventional Study"
* $NCIT#C142615 "Non-Interventional Study"
* $NCIT#C16084 "Observational Study"


// Studiendesign
ValueSet: VS_Studiendesign_NCIT
Id: studiendesign-ncit
Title: "ValueSet Studiendesign NCIt"
Description: "Studiendesign aus NCI Thesaurus (NCIt)"
* insert Metadata
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
//* $NCIT#C165842 "Umbrella Protocol"
//* $NCIT#C165823 "Basket Protocol"
//* $NCIT#C139174 "Device Feasibility Study" // MPG
//* $NCIT#C49656 "Treatment Study" // AMG
* $NCIT#C15197 "Case-Control Study"
//* $NCIT#C15362 "Case Study"
//* $NCIT#C127779 "Observational Case-Crossover Study"
//* $NCIT#C127780 "Ecologic or Community Based Study"
//* $NCIT#C15407 "Family Study"
* $NCIT#C15208 "Cohort Study"
//* $NCIT#C139456 "Trend Analysis"
//* $NCIT#C53311 "Panel Study"
//* $NCIT#C15273 "Longitudinal Study" 	
* $NCIT#C53310 "Cross-Sectional Study"
//* $NCIT#C15311 "Quality Control"
* $NCIT#C46079 "Randomized Controlled Clinical Trial"
* $NCIT#C93043 "Nonrandomized Clinical Trial"
* $NCIT#C53312 "Retrospective Study"
* $NCIT#C142646 "Prospective Study"
// other?

// Blinding 
ValueSet: VS_TypeOfBlinding_NCIT
Id: type-of-blinding-ncit
Title: "ValueSet Type of Blinding NCIt"
Description: "Type of Blinding aus NCI Thesaurus (NCIt)"
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* insert Metadata
* $NCIT#C49659 "Open Label Study" // unverblindet
* $NCIT#C28233 "Single Blind Study" // einfach-verblindet
* $NCIT#C15228 "Double Blind Study" // doppelt verblindet
* $NCIT#C66959 "Triple Blind Study" // dreifach verblindet
* $NCIT#C156592 "Open Label for Treatment And Double Blind to Dose"

// Randomization 
ValueSet: VS_TypeOfRandomization_NCIT
Id: type-of-randomization-ncit
Title: "ValueSet Type of Randomization NCIt"
Description: "Type of Randomization aus NCI Thesaurus (NCIt)"
* insert Metadata
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
//* include codes from system $NCIT where concept descendent-of #C25196 "Randomization"
* $NCIT#C147126 "Adaptive Randomization"
* $NCIT#C147127 "Block Randomization"
* $NCIT#C147145 "Stratified Randomization"
* $NCIT#C147143 "Minimization Randomization"
* $NCIT#C186212 "Re-randomized"
* $NCIT#C147144 "Simple Randomization"
* $NCIT#C114209 "Subject is Randomized"
* $NCIT#C142743 "Unequal Randomization"

// .category combined
// ValueSet: VS_ResearchStudy_Category
// Id: vs-research-study-category
// Title: "VS ResearchStudy Category"
// Description: "ResearchStudy.category combined ValueSets"
// * include codes from valueset VS_Studienkategorien_NCIT
// * include codes from valueset VS_Studiendesign_NCIT
// * include codes from valueset VS_TypeOfBlinding_NCIT
// * include codes from valueset VS_TypeOfRandomization_NCIT

// Study Arm Type
ValueSet: VS_TypeOfStudyArm_NCIT
Id: type-of-study-arm-ncit
Title: "ValueSet Type of Study Arm NCIt"
Description: "Type of Study Arm aus NCI Thesaurus (NCIt)"
* insert Metadata
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* include codes from system $NCIT where concept descendent-of #C15538 "Protocol Treatment Arm"

// Study Focus
ValueSet: VS_StudyFocus_NCIT
Id: study-focus-ncit
Title: "ValueSet Study Focus NCIt"
Description: "Study Focus aus NCI Thesaurus (NCIt)"
* insert Metadata
* ^copyright = "NCI THESAURUS is a registered trademark of the National Cancer Institute."
* $NCIT#C1909 "Pharmacologic Substance" //AMG
* $NCIT#C16830 "Medical Device" //MPG
* $NCIT#C78523 "Cosmetic" 
* $NCIT#C1505 "Dietary Supplement"

Instance: ExampleStudyNapkonCovidom
InstanceOf: clinical-study
Usage: #example
Title: "Example Study NAPKON COVIDOM"
Description: "Example Study NAPKON COVIDOM"
* identifier[NCT].system = "http://clinicaltrials.gov"
* identifier[NCT].value = #NCT04679584
* identifier[DRKS].system = "https://www.drks.de"
* identifier[DRKS].value = #DRKS00023742
* title = "COVIDOM: Longterm Morbidity of SARS-CoV-2 Infection and COVID-19 Disease - Consequences for Health Status and Quality of Life (NAPKON-POP)"
* status = #active
//* primaryPurposeType = $StudyPrimPurpType#supportive-care
* phase = $StudyPhase#n-a
* category[studyCategory] = $NCIT#C16084 "Observational Study"
* category[studyDesign] = $NCIT#C15208 "Cohort Study"
//* category[typeOfBlinding] = $NCIT#C49659 "Open Label Study"
//* category[typeOfRandomization] = $NCIT#C28279 "Controlled Study"
* condition = $SCT#840539006 "Disease caused by severe acute respiratory syndrome coronavirus 2 (disorder)"
* contact[0].name = "Stefan Schreiber, Prof. Dr."
* contact[0].telecom[0].system = #email
* contact[0].telecom[0].value = "s.schreiber@mucosa.de"
* contact[0].telecom[1].system = #phone
* contact[0].telecom[1].value = "0049 (0)431 500 22201"
* contact[0].name = "Stefan Schreiber, Prof. Dr."
* contact[1].telecom[0].system = #email
* contact[1].telecom[0].value = "thomas.bahmer@uksh.de"
* contact[1].telecom[1].system = #phone
* contact[1].telecom[1].value = "0049 (0) 431 500 62629"
* location = $iso3166#DE "Germany"
//* description = "Assessment of SARS-CoV-2-longterm morbidity and sequels on the population level"
* period.start = "2020-11-16"
* period.end = "2021-12-31"
* principalInvestigator = Reference(Practitioner/example)
* sponsor = Reference(Organization/UKSH)
//* site = Reference(Organization/UKSH)
* objective[+].name = "Longterm morbidities and sequels of SARS-CoV-2 infections in the general population"
* objective[=].type = $StudyObjectiveType#primary
* objective[+].name = "Longterm quality of life of SARS-CoV-2 infected individuals recruited from the general population"
* objective[=].type = $StudyObjectiveType#secondary

Instance: ExampleStudyRAAINBOW
InstanceOf: clinical-study
Usage: #example
Title: "Example Study RAAINBOW"
Description: "Example Study RAAINBOW"
* identifier[NCT].system = "http://clinicaltrials.gov"
* identifier[NCT].value = #NCT03240627
* title = "Double-blind, Vehicle-controlled, Randomised, Multi-centre Study to Evaluate the Efficacy and Safety of LH-8 Cutaneous Solution in Children and Adolescents With Moderate to Severe Scalp Alopecia Areata."
* status = #completed
* primaryPurposeType = $StudyPrimPurpType#treatment
* phase = $StudyPhase#phase-2-phase-3 "Phase 2/Phase 3"
* category[studyCategory] = $NCIT#C98388 "Interventional Study"
* category[studyDesign] = $NCIT#C46079 "Randomized Controlled Clinical Trial"
* category[typeOfBlinding] = $NCIT#C15228 "Double Blind Study"
* category[typeOfRandomization] = $NCIT#C142743 "Unequal Randomization"
* focus = $NCIT#C1909 "Pharmacologic Substance"
* condition = $SCT#68225006 "Alopecia areata (disorder)"
* location[+] = $iso3166#DE "Germany"
* location[+] = $iso3166#FR "France"
//* description = "Assessment of SARS-CoV-2-longterm morbidity and sequels on the population level"
* period.start = "2018-03-01"
* period.end = "2022-03-17"
* principalInvestigator = Reference(Practitioner/example)
//* sponsor = Reference(Organization/UKSH)
* site[+] = Reference(Organization/Charite-dermatology)
* site[+] = Reference(Organization/Sabouraud-Center)
* site[+] = Reference(Organization/Diagnostic-consulting-center-XXIV-Sofia)
* site[+] = Reference(Organization/SC-Centrul-Medical-Sana-SRL)
* arm[+].name = "Experimental: LH-8 cutaneous solution"
* arm[=].type = $NCIT#C174266 "Investigational Arm"
* arm[=].description = "LH-8 cutaneous solution (0.126 mL per spray) applied to the whole scalp"
* arm[+].name = "Placebo Comparator: Placebo cutaneous solution"
* arm[=].type = $NCIT#C174226 "Control Arm"
* arm[=].description = "Placebo cutaneous solution (0.126 mL per spray) applied to the whole scalp"
* objective[+].name = "Relative change in scalp alopecia areata severity scores (SALT) from baseline value to be assessed after 24 weeks of treatment. [ Time Frame: 24 weeks treatment ] Visual assessment and global standardised scalp photographs for SALT evaluation."
* objective[=].type = $StudyObjectiveType#primary
* objective[+].name = "Absolute change in SALT score from baseline at the end of 24 weeks' treatment period. [ Time Frame: 24 weeks treatment ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Proportion of the responders, i.e. subjects achieving at least a 40% relative reduction in SALT score from baseline at the end of 24 weeks' treatment period. [ Time Frame: 24 weeks treatment ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Adverse events [ Time Frame: 48 weeks ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "General physical examination findings, including irritation of eyes and skin [ Time Frame: 24 weeks treatment ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Visual assessment and global standardised scalp photographs for SALT evaluation. [ Time Frame: After 12 and 24 weeks treatment ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Evaluation of duration of treatment effect in responders, measured as relative SALT score changes from Visit 3 (end of treatment) after 12 weeks (Visit 4) and 24 weeks (Visit 5) of treatment-free period. (Visual assessment and global standardised scalp photographs for SALT evaluation.)"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Assessment of treatment effect on hair follicles in non-alopecic areas by quantifying the number of new alopecic areas. [ Time Frame: 24 weeks treatment ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Assessment of the rate of spontaneous hair regrowth. [ Time Frame: For 6-12 months ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Assessment of the rate of spontaneous hair regrowth in placebo treated subjects with alopecia areata active for 6-12 months compared to those with alopecia areata active for more than 12 months. (Visual assessment and global standardised scalp photographs for SALT evaluation)."
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Absolute and relative change from baseline in Children's Dermatology Life Quality Index (CDLQI) scores. [ Time Frame: 48 weeks ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Change in percentage of subjects from baseline by the severity banding CDLQI scores. [ Time Frame: 48 weeks ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Percentages of subjects by EuroQol Five Dimensions Youth Questionnaire (EQ-5D-Y) dimensions and levels at Visits 1-5. [ Time Frame: 48 weeks ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Absolute and relative change of the EQ-Visual Analogue Scale (EQ-VAS) scores from baseline [ Time Frame: 48 weeks ]"
* objective[=].type = $StudyObjectiveType#secondary
* objective[+].name = "Evaluation of the Paediatric Alopecia Areata Patient Benefit Index (PAAPBI) scores at Visits 1 to 5. [ Time Frame: 48 weeks ]"
* objective[=].type = $StudyObjectiveType#secondary