Profile: SD_Proband
Parent: ResearchSubject
Id: sd-probandin
Title: "ProbandIn"
Description: "Dieses Profil beschreibt eine Proband*in."
* ^status = #active
* id MS
* meta MS
* meta.source MS
* meta.profile MS
* identifier MS
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains subjectIdentificationCode 1..1 MS
* identifier[subjectIdentificationCode] ^patternIdentifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#ANON
* identifier[subjectIdentificationCode].type MS
* identifier[subjectIdentificationCode].system 1.. MS
* identifier[subjectIdentificationCode].value 1.. MS
* status MS
* period 1.. MS
* period.start 1.. MS
* period.end MS
* study MS
* individual 1.. MS
* consent 1.. MS

Instance: ExampleResearchSubjectStudienteilnehmer
InstanceOf: sd-probandin
Usage: #example
* identifier[subjectIdentificationCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#ANON
* identifier[subjectIdentificationCode].system = "https://charite.de/fhir/core/sid/SubjectIdentificationCode"
* identifier[subjectIdentificationCode].value = "12345"
* status = #candidate
* period.start = "2019-09-06"
* study = Reference(ResearchStudy/MII-Beispielstudie)
* individual = Reference(Patient/MII-Patient)
* consent = Reference(Consent/MII-Consent)