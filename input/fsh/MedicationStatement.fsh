Profile: PR_MedicationStatement
Parent: MedicationStatement
Id: pr-medication-statement
Title: "MedicationStatement"
Description: "A record of a medication that is being consumed by a patient. A MedicationStatement may indicate that the patient may be taking the medication now or has taken the medication in the past or will be taking the medication in the future."
* insert Metadata
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* basedOn MS
* partOf MS
* status MS
* category MS
* category.coding ^slicing.discriminator.type = #pattern
* category.coding ^slicing.discriminator.path = "$this"
* category.coding ^slicing.rules = #open
* category.coding contains
    usageCategory 0..* 
* category.coding[usageCategory] ^patternCoding.system = "http://terminology.hl7.org/CodeSystem/medication-statement-category"
* category.coding[usageCategory] from http://hl7.org/fhir/ValueSet/medication-statement-category (required)
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
* effective[x] 1.. MS
* effectiveDateTime MS
* effectivePeriod MS
* dateAsserted MS
* informationSource MS
* derivedFrom MS
* derivedFrom only Reference(Tumor)
* reasonCode MS
* reasonReference MS
* reasonReference only Reference(tumor-disorder)
* note MS
* dosage obeys dsg-1
* dosage MS
* dosage.sequence MS
* dosage.text MS
* dosage.timing MS
* dosage.timing.event MS
* dosage.timing.repeat MS
* dosage.timing.repeat.boundsDuration MS
* dosage.timing.repeat.boundsDuration ^patternDuration.system = "http://unitsofmeasure.org"
* dosage.timing.repeat.boundsDuration.value 1.. MS
* dosage.timing.repeat.boundsDuration.unit MS
* dosage.timing.repeat.boundsDuration.system 1.. MS
* dosage.timing.repeat.boundsDuration.code 1.. MS
* dosage.timing.repeat.boundsRange MS
* dosage.timing.repeat.boundsRange.low MS
* dosage.timing.repeat.boundsRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.timing.repeat.boundsRange.low.value 1.. MS
* dosage.timing.repeat.boundsRange.low.unit MS
* dosage.timing.repeat.boundsRange.low.system 1.. MS
* dosage.timing.repeat.boundsRange.low.code 1.. MS
* dosage.timing.repeat.boundsRange.high MS
* dosage.timing.repeat.boundsRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.timing.repeat.boundsRange.high.value 1.. MS
* dosage.timing.repeat.boundsRange.high.unit MS
* dosage.timing.repeat.boundsRange.high.system 1.. MS
* dosage.timing.repeat.boundsRange.high.code 1.. MS
* dosage.timing.repeat.boundsPeriod MS
* dosage.timing.repeat.boundsPeriod.start MS
* dosage.timing.repeat.boundsPeriod.end MS
* dosage.timing.repeat.count MS
* dosage.timing.repeat.countMax MS
* dosage.timing.repeat.duration MS
* dosage.timing.repeat.durationMax MS
* dosage.timing.repeat.durationUnit MS
* dosage.timing.repeat.frequency MS
* dosage.timing.repeat.frequencyMax MS
* dosage.timing.repeat.period MS
* dosage.timing.repeat.periodMax MS
* dosage.timing.repeat.periodUnit MS
* dosage.timing.repeat.dayOfWeek MS
* dosage.timing.repeat.timeOfDay MS
* dosage.timing.repeat.when MS
* dosage.timing.repeat.offset MS
* dosage.asNeeded[x] MS
* dosage.asNeededBoolean MS
* dosage.asNeededCodeableConcept MS
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
* dosage.site.coding[SNOMED] ^binding.description = "target site IPS"
* dosage.site.coding[SNOMED].system 1.. MS
* dosage.site.coding[SNOMED].code 1.. MS
* dosage.route MS
* dosage.route.coding MS
* dosage.route.coding ^slicing.discriminator.type = #pattern
* dosage.route.coding ^slicing.discriminator.path = "$this"
* dosage.route.coding ^slicing.rules = #open
* dosage.route.coding contains
    EDQM 0..1 MS and
    SNOMED 0..1 MS
* dosage.route.coding[EDQM] from http://hl7.org/fhir/uv/ips/ValueSet/medicine-route-of-administration (preferred)
* dosage.route.coding[EDQM] ^sliceName = "EDQM"
* dosage.route.coding[EDQM] ^patternCoding.system = "http://standardterms.edqm.eu"
* dosage.route.coding[EDQM] ^mustSupport = true
* dosage.route.coding[EDQM] ^binding.description = "EDQM Standard Terms"
* dosage.route.coding[EDQM].system 1.. MS
* dosage.route.coding[EDQM].code 1.. MS
* dosage.route.coding[SNOMED] ^sliceName = "SNOMED"
* dosage.route.coding[SNOMED] ^patternCoding.system = "http://snomed.info/sct"
* dosage.route.coding[SNOMED] ^mustSupport = true
* dosage.route.coding[SNOMED].system 1.. MS
* dosage.route.coding[SNOMED].code 1.. MS
* dosage.doseAndRate MS
* dosage.doseAndRate.dose[x] MS
* dosage.doseAndRate.doseRange MS
* dosage.doseAndRate.doseRange.low MS
* dosage.doseAndRate.doseRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseRange.low.value 1.. MS
* dosage.doseAndRate.doseRange.low.unit MS
* dosage.doseAndRate.doseRange.low.system 1.. MS
* dosage.doseAndRate.doseRange.low.code 1.. MS
* dosage.doseAndRate.doseRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseRange.high.value 1.. MS
* dosage.doseAndRate.doseRange.high.unit MS
* dosage.doseAndRate.doseRange.high.system 1.. MS
* dosage.doseAndRate.doseRange.high.code 1.. MS
* dosage.doseAndRate.doseQuantity MS
* dosage.doseAndRate.doseQuantity ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.doseQuantity.value 1.. MS
* dosage.doseAndRate.doseQuantity.unit MS
* dosage.doseAndRate.doseQuantity.system 1.. MS
* dosage.doseAndRate.doseQuantity.code 1.. MS
* dosage.doseAndRate.rate[x] MS
* dosage.doseAndRate.rateRatio MS
* dosage.doseAndRate.rateRatio.numerator MS
* dosage.doseAndRate.rateRatio.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRatio.numerator.value 1.. MS
* dosage.doseAndRate.rateRatio.numerator.unit MS
* dosage.doseAndRate.rateRatio.numerator.system 1.. MS
* dosage.doseAndRate.rateRatio.numerator.code 1.. MS
* dosage.doseAndRate.rateRatio.denominator MS
* dosage.doseAndRate.rateRatio.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRatio.denominator.value 1.. MS
* dosage.doseAndRate.rateRatio.denominator.unit MS
* dosage.doseAndRate.rateRatio.denominator.system 1.. MS
* dosage.doseAndRate.rateRatio.denominator.code 1.. MS
* dosage.doseAndRate.rateRange MS
* dosage.doseAndRate.rateRange.low MS
* dosage.doseAndRate.rateRange.low ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRange.low.value 1.. MS
* dosage.doseAndRate.rateRange.low.unit MS
* dosage.doseAndRate.rateRange.low.system 1.. MS
* dosage.doseAndRate.rateRange.low.code 1.. MS
* dosage.doseAndRate.rateRange.high MS
* dosage.doseAndRate.rateRange.high ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateRange.high.value 1.. MS
* dosage.doseAndRate.rateRange.high.unit MS
* dosage.doseAndRate.rateRange.high.system 1.. MS
* dosage.doseAndRate.rateRange.high.code 1.. MS
* dosage.doseAndRate.rateQuantity MS
* dosage.doseAndRate.rateQuantity ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.doseAndRate.rateQuantity.value 1.. MS
* dosage.doseAndRate.rateQuantity.unit MS
* dosage.doseAndRate.rateQuantity.system 1.. MS
* dosage.doseAndRate.rateQuantity.code 1.. MS
* dosage.maxDosePerPeriod MS
* dosage.maxDosePerPeriod.numerator MS
* dosage.maxDosePerPeriod.numerator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.maxDosePerPeriod.numerator.value 1.. MS
* dosage.maxDosePerPeriod.numerator.unit MS
* dosage.maxDosePerPeriod.numerator.system 1.. MS
* dosage.maxDosePerPeriod.numerator.code 1.. MS
* dosage.maxDosePerPeriod.denominator MS
* dosage.maxDosePerPeriod.denominator ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.maxDosePerPeriod.denominator.value 1.. MS
* dosage.maxDosePerPeriod.denominator.unit MS
* dosage.maxDosePerPeriod.denominator.system 1.. MS
* dosage.maxDosePerPeriod.denominator.code 1.. MS
* dosage.maxDosePerAdministration MS
* dosage.maxDosePerAdministration ^patternQuantity.system = "http://unitsofmeasure.org"
* dosage.maxDosePerAdministration.value 1.. MS
* dosage.maxDosePerAdministration.unit MS
* dosage.maxDosePerAdministration.system 1.. MS
* dosage.maxDosePerAdministration.code 1.. MS

Instance: exa-medication-statement-caelyx
InstanceOf: pr-medication-statement
Usage: #example
* status = #active
* medicationCodeableConcept.coding = $cs-atc#L01DB01 "Doxorubicin"
* subject = Reference(Patient/example)
* effectiveDateTime = "2020-01-02T09:30:00+01:00"
* dosage.text = "Doxorubicin (Caelyx) 50 mg je Quadratmeter Koerperoberflaeche alle vier Wochen per intravenoeser Tropfinfusion"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 4
* dosage.timing.repeat.periodUnit = #wk
* dosage.route = $standardterms#20045000 "Intravenous use"