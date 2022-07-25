// ECOG
ValueSet: VS_ECOG_Performance_Status_SNOMED
Id: vs-ecog-performance-status-snomed
Title: "ValueSet ECOG Performance Status SNOMED"
Description: "The ValueSet contains the ECOG Performance Status values from SNOMED CT."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/ecog-performance-status-snomed"
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* include codes from system $SCT where concept descendent-of #424122007

// Morphology ICD-O-3 
ValueSet: VS_Morphology_ICD_O_3
Id: vs-morphology-icd-o-3
Title: "ValueSet Morphology ICD-O-3"
Description: "The ValueSet contains the morphology (histology) codes from ICD-O-3."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/morphology-icd-o-3"
* include codes from system $ICDO3 where concept regex "^\\d\\S*$"

// Topography ICD-O-3 
ValueSet: VS_Topography_ICD_O_3
Id: vs-topography-icd-o-3
Title: "ValueSet Topography ICD-O-3"
Description: "The ValueSet contains the topography codes from ICD-O-3."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/topography-icd-o-3"
* include codes from system $ICDO3 where concept regex "^C\\S*$"

// Morphology SNOMED
ValueSet: VS_Morphology_SNOMED
Id: vs-morphology-snomed
Title: "ValueSet Morphology SNOMED"
Description: "The ValueSet contains the morphology (histology) codes from SNOMED CT."
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/morphology-snomed"
* include codes from system $SCT where concept descendent-of #400177003

// Topography SNOMED
ValueSet: VS_Topography_SNOMED
Id: vs-topography-snomed
Title: "ValueSet Topography SNOMED"
Description: "The ValueSet contains the topography codes from SNOMED CT."
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/topography-snomed"
* include codes from system $SCT where concept descendent-of #123037004

// Tumor Histologic Grade SNOMED 
ValueSet: VS_Histopathological_Grade_SNOMED
Id: vs-histopathological-grade-snomed
Title: "ValueSet Histologic Grade SNOMED"
Description: "The ValueSet contains codes for the tumor grading system following the recommendations of the WHO Classification of Tumors from SNOMED CT."
* ^copyright = "This artefact includes content from SNOMED Clinical Terms® (SNOMED CT®) which is copyright of the International Health Terminology Standards Development Organisation (IHTSDO). Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license - for more information contact http://www.snomed.org/snomed-ct/getsnomed-ct or info@snomed.org."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/histopathological-grade-snomed"
* $SCT#12619005 "GX grade (finding)"
* $SCT#54102005 "G1 grade (finding)"
* $SCT#1663004 "G2 grade (finding)"
* $SCT#61026006 "G3 grade (finding)"
* $SCT#258245003 "G4 grade (finding)"

//TNM
ValueSet: VS_TNM_Classification_Type_LOINC
Id: vs-tnm-classification-type-loinc
Title: "ValueSet TNM Classification Type LOINC"
Description: "This ValueSet contains codes to specifiy the type of TNM classification as clinical (cTNM) or pathological (pTNM)."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-classification-type-loinc"
* $LNC#21908-9 "Stage group.clinical Cancer"
* $LNC#21902-2 "Stage group.pathology Cancer"

// TNM Stage Group
ValueSet: VS_TNM_Stage_Group_UICC
Id: vs-tnm-stage-group-uicc
Title: "ValueSet TNM Stage Group UICC"
Description: "The ValueSet contains codes for the TNM stage groups ranging from I to IV to group cancer patients with similar prognosis from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-stage-group-uicc"
* $UICC-TNM#okk	"Stage X"
* $UICC-TNM#0	"Stage 0"
* $UICC-TNM#0a	"Stage 0a"
* $UICC-TNM#0is	"Stage 0is"
* $UICC-TNM#I	"Stage I"
* $UICC-TNM#IA1	"Stage IA1"
* $UICC-TNM#IA2	"Stage IA2"
* $UICC-TNM#IA3  "Stage IA3"
* $UICC-TNM#IB	"Stage IB"
* $UICC-TNM#IB1	"Stage IB1"
* $UICC-TNM#IB2	"Stage IB2"
* $UICC-TNM#IC	"Stage IC"
* $UICC-TNM#IS	"Stage IS"
* $UICC-TNM#II	"Stage II"
* $UICC-TNM#IIA	"Stage IIA"
* $UICC-TNM#IIA1	"Stage IIA1"
* $UICC-TNM#IIA2	"Stage IIA2"
* $UICC-TNM#IIB	"Stage IIB"
* $UICC-TNM#IIC	"Stage IIC"
* $UICC-TNM#III	"Stage III"
* $UICC-TNM#IIIA	"Stage IIIA"
* $UICC-TNM#IIIA1 "Stage IIIA1"
* $UICC-TNM#IIIA2 "Stage IIIA2"
* $UICC-TNM#IIIB	"Stage IIIB"
* $UICC-TNM#IIIC	"Stage IIIC"
* $UICC-TNM#IIIC1 "Stage IIIC1"
* $UICC-TNM#IIIC2 "Stage IIIC2"
* $UICC-TNM#IV	"Stage IV"
* $UICC-TNM#IVA	"Stage IVA"
* $UICC-TNM#IVB	"Stage IVB"
* $UICC-TNM#IVC	"Stage IVC"

// TNM cpu prefixes
ValueSet: VS_TNM_Prefix_CPU_UICC
Id: vs-tnm-prefix-cpu-uicc
Title: "ValueSet TNM Prefix CPU UICC"
Description: "This ValueSet contains the c, p and u prefixes for TNM stages from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-prefix-cpu-uicc"
* $UICC-TNM#c "c"
* $UICC-TNM#p "p"
* $UICC-TNM#u "u"

// TNM T category LOINC
ValueSet: VS_TNM_T_Staging_Type_LOINC
Id: vs-tnm-t-staging-type-loinc
Title: "ValueSet TNM T Staging Type LOINC"
Description: "This ValueSet contains codes to specifiy the TNM primary tumor (T) category as clinical (cT) or pathological (pT)."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-t-staging-type-loinc"
* $LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
* $LNC#21899-0 "Primary tumor.pathology Cancer"
* $LNC#21911-3 "Primary tumor.other [Class] Cancer"

// TNM T category values
ValueSet: VS_TNM_T_Category_UICC
Id: vs-tnm-t-category-uicc
Title: "ValueSet TNM T Category UICC"
Description: "This ValueSet contains the TNM T category codes from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-t-category-uicc"
* $UICC-TNM#TX	"TX"
* $UICC-TNM#T0	"T0"
* $UICC-TNM#Ta	"Ta"
* $UICC-TNM#Tis	"Tis"
* $UICC-TNM#Tis(LAMN)	"Tis(LAMN)"
* $UICC-TNM#Tis(DCIS)	"Tis(DCIS)"
* $UICC-TNM#Tis(LCIS)	"Tis(LCIS)"
* $UICC-TNM#Tis(Paget)	"Tis(Paget)"
* $UICC-TNM#Tis(pu)	"Tis(pu)"
* $UICC-TNM#Tis(pd)	"Tis(pd)"
* $UICC-TNM#T1	"T1"
* $UICC-TNM#T1mi	"T1mi"
* $UICC-TNM#T1a	"T1a"
* $UICC-TNM#T1a1	"T1a1"
* $UICC-TNM#T1a2	"T1a2"
* $UICC-TNM#T1b	"T1b"
* $UICC-TNM#T1b1	"T1b1"
* $UICC-TNM#T1b2	"T1b2"
* $UICC-TNM#T1c	"T1c"
* $UICC-TNM#T1c1	"T1c1"
* $UICC-TNM#T1c2	"T1c2"
* $UICC-TNM#T1c3	"T1c3"
* $UICC-TNM#T1d	"T1d"
* $UICC-TNM#T2	"T2"
* $UICC-TNM#T2a	"T2a"
* $UICC-TNM#T2a1	"T2a1"
* $UICC-TNM#T2a2	"T2a2"
* $UICC-TNM#T2b	"T2b"
* $UICC-TNM#T2c	"T2c"
* $UICC-TNM#T2d	"T2d"
* $UICC-TNM#T3	"T3"
* $UICC-TNM#T3a	"T3a"
* $UICC-TNM#T3b	"T3b"
* $UICC-TNM#T3c	"T3c"
* $UICC-TNM#T3d	"T3d"
* $UICC-TNM#T3e	"T3e"
* $UICC-TNM#T4	"T4"
* $UICC-TNM#T4a	"T4a"
* $UICC-TNM#T4b	"T4b"
* $UICC-TNM#T4c	"T4c"
* $UICC-TNM#T4d	"T4d"
* $UICC-TNM#T4e	"T4e"

// TNM T category values
ValueSet: VS_TNM_T_Multiplicity_UICC
Id: vs-tnm-t-multiplicity-uicc
Title: "ValueSet TNM T Multiplicity UICC"
Description: "This ValueSet contains the TNM primary tumor multiplicity codes used with the m-symbol from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-t-multiplicity-uicc"
* $UICC-TNM#m "(m)"
* $UICC-TNM#2 "(2)"
* $UICC-TNM#3 "(3)"
* $UICC-TNM#4 "(4)"
* $UICC-TNM#5 "(5)"
* $UICC-TNM#6 "(6)"
* $UICC-TNM#7 "(7)"
* $UICC-TNM#8 "(8)"
* $UICC-TNM#9 "(9)"
* $UICC-TNM#10 "(10)"

// TNM N category LOINC
ValueSet: VS_TNM_N_Staging_Type_LOINC
Id: vs-tnm-n-staging-type-loinc
Title: "ValueSet TNM N Staging Type LOINC"
Description: "This ValueSet contains codes to specifiy the TNM regional lymph nodes (N) category as clinical (cN) or pathological (pN)."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-n-staging-type-loinc"
* $LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
* $LNC#21900-6 "Regional lymph nodes.pathology [Class] Cancer"
* $LNC#21912-1 "Regional lymph nodes.other [Class] Cancer"

// TNM N category values
ValueSet: VS_TNM_N_Category_UICC
Id: vs-tnm-n-category-uicc
Title: "ValueSet TNM N Category UICC"
Description: "This ValueSet contains the TNM N category codes from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-n-category-uicc"
* $UICC-TNM#NX	"Nx"
* $UICC-TNM#N0	"N0"
* $UICC-TNM#N1	"N1"
* $UICC-TNM#N1mi	"N1(mi)"
* $UICC-TNM#N1a	"N1a"
* $UICC-TNM#N1b	"N1b"
* $UICC-TNM#N1c	"N1c"
* $UICC-TNM#N2	"N2"
* $UICC-TNM#N2a	"N2a"
* $UICC-TNM#N2b	"N2b"
* $UICC-TNM#N2c	"N2c"
* $UICC-TNM#N3	"N3"
* $UICC-TNM#N3a	"N3a"
* $UICC-TNM#N3b	"N3b"
* $UICC-TNM#N3c	"N3c"

// TNM M category LOINC
ValueSet: VS_TNM_M_Staging_Type_LOINC
Id: vs-tnm-m-staging-type-loinc
Title: "ValueSet TNM M Staging Type LOINC"
Description: "This ValueSet contains codes to specifiy the TNM distant metastases (M) category as clinical (cM) or pathological (pM)."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-m-staging-type-loinc"
* $LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
* $LNC#21901-4 "Distant metastases.pathology [Class] Cancer"
* $LNC#21913-9 "Distant metastases.other [Class] Cancer"

// TNM M category values
ValueSet: VS_TNM_M_Category_UICC
Id: vs-tnm-m-category-uicc
Title: "ValueSet TNM M Category UICC"
Description: "This ValueSet contains the TNM M category codes from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-m-category-uicc"
* $UICC-TNM#M0 "M0"
* $UICC-TNM#M1 "M1"
* $UICC-TNM#M1a "M1a"
* $UICC-TNM#M1b "M1b"
* $UICC-TNM#M1c "M1c"
* $UICC-TNM#M1d "M1d"
//* $UICC-TNM#M1cy "M1(cy)"
* $UICC-TNM#MX "MX"

// TNM L-descriptor values
ValueSet: VS_TNM_L_Lymphatic_Invasion_UICC
Id: vs-tnm-l-lymphatic-invasion-uicc
Title: "ValueSet TNM L-Descriptor Lymphatic Invasion UICC"
Description: "This ValueSet contains the TNM degree of lymphatic invasion codes used with the L-descriptor from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-l-lymphatic-invasion-uicc"
* $UICC-TNM#L0 "L0"
* $UICC-TNM#L1 "L1"
* $UICC-TNM#LX "LX"

// TNM V-descriptor values
ValueSet: VS_TNM_V_Venous_Invasion_UICC
Id: vs-tnm-v-venous-invasion-uicc
Title: "ValueSet TNM V-Descriptor Venous Invasion UICC"
Description: "This ValueSet contains the TNM degree of venous invasion codes used with the V-descriptor from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-v-venous-invasion-uicc"
* $UICC-TNM#V0 "V0"
* $UICC-TNM#V1 "V1"
* $UICC-TNM#V2 "V2"
* $UICC-TNM#VX "VX"

// TNM Pn-descriptor values
ValueSet: VS_TNM_Pn_Perineural_Invasion_UICC
Id: vs-tnm-pn-perineural-invasion-uicc
Title: "ValueSet TNM Pn-Descriptor Perineural Invasion UICC"
Description: "This ValueSet contains the TNM degree of perineural (lymphatic nerve sheet) invasion codes used with the Pn-descriptor from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-pn-perineural-invasion-uicc"
* $UICC-TNM#Pn0 "Pn0"
* $UICC-TNM#Pn1 "Pn1"
* $UICC-TNM#PnX "PnX"

// TNM S-symbol values
ValueSet: VS_TNM_S_Serum_Tumor_Markers_UICC
Id: vs-tnm-s-serum-tumor-markers-uicc
Title: "ValueSet TNM S Serum Tumour Markers UICC"
Description: "This ValueSet contains the TNM serum levels of tumor markers coded for germ cell tumors used with the S-symbol from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-s-serum-tumor-markers-uicc"
* $UICC-TNM#S0 "S0"
* $UICC-TNM#S1 "S1"
* $UICC-TNM#S2 "S2"
* $UICC-TNM#S3 "S3"
* $UICC-TNM#SX "SX"

// TNM itc suffixes
ValueSet: VS_TNM_Suffix_ITC_UICC
Id: vs-tnm-suffix-itc-uicc
Title: "ValueSet TNM Suffix ITC UICC"
Description: "This ValueSet contains the isolated tumor cells (ITC) suffixes for N- and M-category from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-suffix-itc-uicc"
* $UICC-TNM#i+ "(i+)"
* $UICC-TNM#i- "(i-)"
* $UICC-TNM#mol+ "(mol+)"
* $UICC-TNM#mol- "(mol-)"

// TNM itc sn suffixes
ValueSet: VS_TNM_Suffix_ITC_SN_UICC
Id: vs-tnm-suffix-itc-sn-uicc
Title: "ValueSet TNM Suffix ITC SN UICC"
Description: "This ValueSet contains the isolated tumor cells (ITC) sentinel lymph nodes (sn) suffix for the N-category in TNM from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-suffix-itc-sn-uicc"
* $UICC-TNM#sn "(sn)"

// TNM Residual Tumor R Classification
ValueSet: VS_TNM_R_Classification_UICC
Id: vs-tnm-r-classification-uicc
Title: "ValueSet TNM Residual Tumor (R) Classification UICC"
Description: "This ValueSet contains the TNM residual tumor (R) classification codes from TNM 8th edition UICC."
* ^url = "https://www.vision-zero-oncology.de/fhir/ValueSet/tnm-r-classification-uicc"
* $UICC-TNM#RX "RX"
* $UICC-TNM#R0 "R0"
* $UICC-TNM#R1 "R1"
// * R1(is) R1(is)
// * R1(cy) R1(cy)
* $UICC-TNM#R2 "R2"

// Recist Assessment
ValueSet: RecistAssessmentTimepointResponseVS
Id: recist-asstimepoint-response-vs
Title: "recist-timepoint-response-vs"
Description: "Defines the valid values for the recist assessment response observation resource"
* $RID#11514 "stable disease"
* $RID#11513 "partial response"
* $RID#11511 "complete imaging response"
* $RID#11515 "progressive disease"
