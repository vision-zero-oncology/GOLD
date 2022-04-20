// UICC TNM Profile
Profile: SD_UICC_TNM
Parent: Observation
Id: uicc-tnm
Title: "Profile UICC TNM"
Description: "Profile for the tumor classification using TNM stage group (I, II, III, or IV) or TNM staging elements (T, N, and M)."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/uicc-tnm"
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains snomed 0..* and loinc 1..1
* code.coding[snomed] = SCT#258235000
* code.coding[loinc] from VS_TNM_Classification_Type_LOINC (required)
* subject 1..1
* subject only Reference(Patient)
* value[x] only CodeableConcept
* value[x] from VS_TNM_Stage_Group_UICC (required)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    y-symbol 0..1 and
    r-symbol 0..1 and
    a-symbol 0..1 and
    T-code 0..1 and
    m-symbol 0..1 and
    N-code 0..1 and
    M-code 0..1 and
    L-descriptor 0..1 and
    V-descriptor 0..1 and
    Pn-descriptor 0..1 and
    S-symbol 0..1 and
    numberOfNodesExamined 0..1 and
    numberOfNodesAffected 0..1
* component[y-symbol] ^short = "y Symbol"
* component[y-symbol] ^definition = "In those cases in which classification is performed during or following multimodality therapy, the cTNM or pTNM category is identified by a y prefix."
* component[y-symbol].code = SCT#277649004 "y - During therapy/following treatment (tumor staging)" //LOINC??
* component[y-symbol].value[x] only CodeableConcept
* component[y-symbol].value[x] = UICC-TNM#y "y"
* component[r-symbol] ^short = "r Symbol"
* component[r-symbol] ^definition = "Recurrent tumours, when classified after a disease free interval, are identified by the prefix r."
* component[r-symbol].code = SCT#277647002 "r - Tumor recurrence (tumor staging)" //LOINC??
* component[r-symbol].value[x] only CodeableConcept
* component[r-symbol].value[x] = UICC-TNM#r "r"
* component[a-symbol] ^short = "a Symbol"
* component[a-symbol] ^definition = "Recurrent tumors, when classified after a disease free interval, are identified by the prefix r."
* component[a-symbol].code = SCT#277646006 "a - At autopsy (tumor staging)" //LOINC??
* component[a-symbol].value[x] only CodeableConcept
* component[a-symbol].value[x] = UICC-TNM#a "a"
* component[T-code] ^short = "T - Primary Tumor"
* component[T-code] ^definition = "The T-category describes the extent of the primary tumor."
* component[T-code].extension contains SD_UICC_TNM_Prefix_CPU named cpuPrefix 0..1
* component[T-code].extension[SD_UICC_TNM_Prefix_CPU] ^short = "Clinical or pathological classification"
* component[T-code].extension[SD_UICC_TNM_Prefix_CPU] ^definition = "How the TNM-values are determined: clinically, by ultrasound or pathologically."
* component[T-code].code from VS_TNM_T_Staging_Type_LOINC (required)
* component[T-code].value[x] only CodeableConcept
* component[T-code].value[x] from VS_TNM_T_Category_UICC (required)
* component[m-symbol] ^short = "m Symbol"
* component[m-symbol] ^definition = "The suffix m, in parentheses, is used to indicate the presence of multiple primary tumors at a single site."
* component[m-symbol].code = SCT#277650004 "m - Multiple tumors (tumor staging)" //LOINC??
* component[m-symbol].value[x] only CodeableConcept
* component[m-symbol].value[x] from VS_TNM_T_Multiplicity_UICC (required)
* component[N-code] ^short = "N - Regional Lymph Nodes"
* component[N-code] ^definition = "The N-category describes the absence or presence and extent of regional lymph node metastasis."
* component[N-code].extension contains 
    SD_UICC_TNM_Prefix_CPU named cpuPrefix 0..1 and 
    SD_UICC_TNM_Suffix_ITC named itcSuffix 0..1
* component[N-code].extension[SD_UICC_TNM_Prefix_CPU] ^short = "Clinical or pathological classification"
* component[N-code].extension[SD_UICC_TNM_Prefix_CPU] ^definition = "How the TNM-values are determined: clinically, by ultrasound or pathologically."
* component[N-code].extension[SD_UICC_TNM_Suffix_ITC] ^short = "Isolated Tumor Cells"
* component[N-code].extension[SD_UICC_TNM_Suffix_ITC] ^definition = "Isolated tumor cells (ITC) are single tumor cells or small clusters of cells not more than 0.2 mm in greatest extent that can be detected by routine H and E stains or immunohistochemistry."
* component[N-code].code from VS_TNM_N_Staging_Type_LOINC (required)
* component[N-code].value[x] only CodeableConcept
* component[N-code].value[x] from VS_TNM_N_Category_UICC (required)
* component[M-code] ^short = "M - Distant Metastasis"
* component[M-code] ^definition = "The M-category describes the absence or presence of distant metastasis."
* component[M-code].extension contains 
    SD_UICC_TNM_Prefix_CPU named cpuPrefix 0..1 and 
    SD_UICC_TNM_Suffix_ITC named itcSuffix 0..1
* component[M-code].extension[SD_UICC_TNM_Prefix_CPU] ^short = "Clinical or pathological classification"
* component[M-code].extension[SD_UICC_TNM_Prefix_CPU] ^definition = "How the TNM-values are determined: clinically, by ultrasound or pathologically."
* component[M-code].extension[SD_UICC_TNM_Suffix_ITC] ^short = "Isolated Tumor Cells"
* component[M-code].extension[SD_UICC_TNM_Suffix_ITC] ^definition = "Isolated tumor cells (ITC) are single tumor cells or small clusters of cells not more than 0.2 mm in greatest extent that can be detected by routine H and E stains or immunohistochemistry."
* component[M-code].code from VS_TNM_M_Staging_Type_LOINC (required)
* component[M-code].value[x] only CodeableConcept
* component[M-code].value[x] from VS_TNM_M_Category_UICC (required)
* component[L-descriptor] ^short = "L - Lymphatic Invasion"
* component[L-descriptor].code = LNC#33739-4 "Lymphatic.small vessel.invasion [Identifier] in Specimen by CAP cancer protocols" //SCT 395715009
* component[L-descriptor].value[x] only CodeableConcept
* component[L-descriptor].value[x] from VS_TNM_L_Lymphatic_Invasion_UICC (required)
* component[V-descriptor] ^short = "V - Venous Invasion"
* component[V-descriptor].code = LNC#33740-2 "Venous.large vessel.invasion [Identifier] in Specimen by CAP cancer protocols" //SCT 371493002
* component[V-descriptor].value[x] only CodeableConcept
* component[V-descriptor].value[x] from VS_TNM_V_Venous_Invasion_UICC (required)
* component[Pn-descriptor] ^short = "Pn - Perineural Invasion"
* component[Pn-descriptor].code = LNC#92837-4 "Perineural invasion [Presence] in Cancer specimen" //SCT 371513001
* component[Pn-descriptor].value[x] only CodeableConcept
* component[Pn-descriptor].value[x] from VS_TNM_Pn_Perineural_Invasion_UICC (required)
* component[S-symbol] ^short = "Serum Tumor Markers"
* component[S-symbol].code = SCT#399424006 "Serum tumor marker category (observable entity)" //LNC
* component[S-symbol].value[x] only CodeableConcept
* component[S-symbol].value[x] from VS_TNM_S_Serum_Tumor_Markers_UICC (required)
* component[numberOfNodesExamined] ^short = "Number of regional lymph nodes examined"
* component[numberOfNodesExamined].code = LNC#21894-1 "Regional lymph nodes examined [#] Specimen" //SCT 444025001
* component[numberOfNodesExamined].value[x] only Quantity
* component[numberOfNodesExamined].valueQuantity.system = "http://unitsofmeasure.org"
* component[numberOfNodesExamined].valueQuantity.code = #1
* component[numberOfNodesAffected] ^short = "Number of regional lymph nodes positive"
* component[numberOfNodesAffected].code = LNC#21893-3 "Regional lymph nodes positive [#] Specimen" //SCT 443527007
* component[numberOfNodesAffected].value[x] only Quantity
* component[numberOfNodesAffected].valueQuantity.system = "http://unitsofmeasure.org"
* component[numberOfNodesAffected].valueQuantity.code = #1

// cpu prefix Extension
Extension: SD_UICC_TNM_Prefix_CPU
Id: uicc-tnm-prefix-cpu
Title: "Extension UICC TNM Prefix CPU"
Description: "The Extension allows to add c, p and u prefixes to TNM stages."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/uicc-tnm-prefix-cpu"
* value[x] only CodeableConcept
* value[x] from VS_TNM_Prefix_CPU_UICC (required)

// isolated tumor cells suffix Extension
Extension: SD_UICC_TNM_Suffix_ITC
Id: uicc-tnm-suffix-itc
Title: "Extension UICC TNM Suffix ITC"
Description: "The Extension allows to add isolated tumor cells (ITC) suffixes to the N- and M-categories in TNM."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/uicc-tnm-suffix-itc"
* value[x] only CodeableConcept
* value[x] from VS_TNM_Suffix_ITC_UICC (required)

// isolated tumor cells in sentinel lymph nodes suffix Extension
Extension: SD_UICC_TNM_Suffix_ITC_SN
Id: uicc-tnm-suffix-itc-sn
Title: "Extension UICC TNM Suffix ITC SN"
Description: "The Extension allows to add isolated tumor cells (ITC) sentinel lymph nodes (sn) suffix to the N-category in TNM."
* ^url = "https://www.vision-zero-oncology.de/fhir/StructureDefinition/uicc-tnm-suffix-itc-sn"
* value[x] only CodeableConcept
* value[x] from VS_TNM_Suffix_ITC_SN_UICC (required)

Instance: example-tnm-tisn0m0
InstanceOf: uicc-tnm
Usage: #example
Title: "Example TNM Tis N0 M0"
Description: "Example TNM Tis N0 M0."
* status = #final
* code.coding[snomed] = SCT#258235000 "International Union Against Cancer (tumor staging)"
* code.coding[loinc] = LNC#21908-9 "Stage group.clinical Cancer"
* subject = Reference(ExamplePatient)
* effectiveDateTime = "2022-03-07"
* valueCodeableConcept = UICC-TNM#0	"Stage 0"
* component[T-code].code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* component[T-code].valueCodeableConcept = UICC-TNM#Tis "Tis"
* component[N-code].code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* component[N-code].valueCodeableConcept = UICC-TNM#N0 "N0"
* component[M-code].code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* component[M-code].valueCodeableConcept = UICC-TNM#M0 "M0"
