Profile: PR_MedicationAdministration
Parent: MedicationAdministration
Id: medication-administration
Title: "Profile MedicationAdministration"
Description: "Profile to describe the event of a patient consuming or otherwise being administered a medication."
* insert Metadata
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* partOf MS
* status MS
* category MS
* medication[x] MS
* medicationReference MS
* medicationCodeableConcept MS
* medicationCodeableConcept.coding MS
* medicationCodeableConcept.coding ^slicing.discriminator.type = #pattern
* medicationCodeableConcept.coding ^slicing.discriminator.path = "$this"
* medicationCodeableConcept.coding ^slicing.rules = #open
* medicationCodeableConcept.coding contains
    Pharmazentralnummer 0..* MS and
    atcClassDe 0..* MS and
    atcClassEn 0..* MS
* medicationCodeableConcept.coding[Pharmazentralnummer] ^sliceName = "Pharmazentralnummer"
* medicationCodeableConcept.coding[Pharmazentralnummer] ^patternCoding.system = "http://fhir.de/CodeSystem/ifa/pzn"
* medicationCodeableConcept.coding[Pharmazentralnummer] ^mustSupport = true
* medicationCodeableConcept.coding[Pharmazentralnummer].system 1.. MS
* medicationCodeableConcept.coding[Pharmazentralnummer].code 1.. MS
* medicationCodeableConcept.coding[atcClassDe] from $vs-atc (required)
* medicationCodeableConcept.coding[atcClassDe] ^sliceName = "atcClassDe"
* medicationCodeableConcept.coding[atcClassDe] ^short = "ATC Klassifikation deutsche Version"
* medicationCodeableConcept.coding[atcClassDe] ^definition = "ATC-Codes für Fertigarzneimittel bspw. von Kombiprodukten"
* medicationCodeableConcept.coding[atcClassDe] ^patternCoding.system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe] ^mustSupport = true
* medicationCodeableConcept.coding[atcClassDe].system 1.. MS
* medicationCodeableConcept.coding[atcClassDe].code 1.. MS
* medicationCodeableConcept.coding[atcClassEn] ^sliceName = "atcClassEn"
* medicationCodeableConcept.coding[atcClassEn] ^short = "Anatomical Therapeutic Chemical Classification System"
* medicationCodeableConcept.coding[atcClassEn] ^definition = "ATC Classification International WHO Version"
* medicationCodeableConcept.coding[atcClassEn] ^patternCoding.system = "http://www.whocc.no/atc"
* medicationCodeableConcept.coding[atcClassEn] ^mustSupport = true
* medicationCodeableConcept.coding[atcClassEn].system 1.. MS
* medicationCodeableConcept.coding[atcClassEn].code 1.. MS
* medicationCodeableConcept.text MS
* subject MS
* context MS
* supportingInformation only Reference(Tumor)
* effective[x] MS
* effectiveDateTime MS
* effectivePeriod MS
* performer MS
* reasonCode MS
* reasonReference MS
* reasonReference only Reference(tumor-disorder)
* request MS
* note MS
* dosage MS
* dosage.text MS
* dosage.site MS
* dosage.site.coding MS
* dosage.site.coding ^slicing.discriminator.type = #pattern
* dosage.site.coding ^slicing.discriminator.path = "$this"
* dosage.site.coding ^slicing.rules = #open
* dosage.site.coding contains
    SNOMED 0..* MS
* dosage.site.coding[SNOMED] from http://hl7.org/fhir/uv/ips/ValueSet/target-site-uv-ips (example)
* dosage.site.coding[SNOMED] ^sliceName = "SNOMED"
* dosage.site.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosage.site.coding[SNOMED] ^mustSupport = true
* dosage.site.coding[SNOMED] ^binding.description = "target site IPS"
* dosage.site.coding[SNOMED].system 1.. MS
* dosage.site.coding[SNOMED].code 1.. MS
* dosage.route MS
* dosage.route.coding MS
* dosage.route.coding from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosage.route.coding ^slicing.discriminator.type = #pattern
* dosage.route.coding ^slicing.discriminator.path = "$this"
* dosage.route.coding ^slicing.rules = #open
* dosage.route.coding ^binding.description = "EDQM Standards Terms"
* dosage.route.coding contains
    EDQM 0..1 MS and
    SNOMED 0..1 MS
* dosage.route.coding[EDQM] from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosage.route.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* dosage.route.coding[EDQM] ^binding.description = "EDQM Standard Terms"
* dosage.route.coding[EDQM].system 1.. MS
* dosage.route.coding[EDQM].code 1.. MS
* dosage.route.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosage.route.coding[SNOMED].system 1.. MS
* dosage.route.coding[SNOMED].code 1.. MS
* dosage.dose MS
* dosage.dose ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.dose.value 1.. MS
* dosage.dose.unit MS
* dosage.dose.system 1.. MS
* dosage.dose.code 1.. MS
* dosage.rate[x] MS
* dosage.rateRatio MS
* dosage.rateRatio.numerator MS
* dosage.rateRatio.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.rateRatio.numerator.value 1.. MS
* dosage.rateRatio.numerator.unit MS
* dosage.rateRatio.numerator.system 1.. MS
* dosage.rateRatio.numerator.code 1.. MS
* dosage.rateRatio.denominator MS
* dosage.rateRatio.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.rateRatio.denominator.value 1.. MS
* dosage.rateRatio.denominator.unit MS
* dosage.rateRatio.denominator.system 1.. MS
* dosage.rateRatio.denominator.code 1.. MS
* dosage.rateQuantity MS
* dosage.rateQuantity ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.rateQuantity.value 1.. MS
* dosage.rateQuantity.unit MS
* dosage.rateQuantity.system 1.. MS
* dosage.rateQuantity.code 1.. MS

Instance: exa-medication-administration
InstanceOf: medication-administration
Usage: #example
* dosage.dose = 85 'mg' "mg"
* dosage.rateRatio.denominator = 1 'h' "hour"
* dosage.rateRatio.numerator = 250 'mL' "milliliter"
* dosage.route = $standardterms#20045000 "Intravenous use"
* effectivePeriod.end = "2020-01-06T11:20:00.000+00:00"
* effectivePeriod.start = "2020-01-06T10:20:00.000+00:00"
* medicationCodeableConcept.coding = $cs-atc#L01DB01 "Doxorubicin"
* status = #completed
* subject = Reference(Patient/example)