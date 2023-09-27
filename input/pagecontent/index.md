## Introduction to the OncoLogical Data Standard (GOLD) FHIR implemenation guide

Welcome to the GOLD FHIR Implementation Guide. Rooted in the Vision Zero initiative —a broad initiative to reduce cancer-related deaths to zero— this guide addresses the role of digitalization and structured information in the realm of cancer care.

Historically, our perspective on healthcare data has been largely document-centric. While documents provide a comprehensive view, they often limit or overwhelm practitioners as it is often not easy to look up the information needed in a specific situation. Information needs to be context-sensitive and give a holistic view of the patient. So for true digitalization it's essential that data be gathered from diverse sources at the exact timepoint the information was created, preserving as much context as possible. This non document-centric approach leads to a holistic view which is sharpend with each additional information and allows different perspectives on the data dependent on the current practitionars context.

A small example to illustrate this:
Dr. Martin, a radiologist, is preparing to perform a contrast-enhanced MRI scan on a patient named Claire. Before administering the contrast agent, which contains a tracer drug, he needs to ensure that Claire doesn't have any allergies that might cause an adverse reaction. Historically, Claire's medical history would be provided in a pile of documents, potentially spanning numerous pages of unrelated medical details.

Rather than sift through these records, potentially wasting crucial time and risking oversight, Dr. Martin needs a digitalized and interoperable system. With a context-sensitive search, he could simply input a query like "Claire tracer drug allergy" and immediately get a concise response. Such a system would gather data from various sources, including past hospital visits, GP notes, and perhaps even previous imaging centers, and would promptly present whether Claire has a known allergy to the tracer drug. This streamlined process ensures patient safety, optimizes efficiency, and minimizes human error.

### What is the aim of the GOLD implementation guide
This implemenation guide, therefore, provides a way to overcome the traditional document-focused approach, by offering a multi-perspective data model based on FHIR. It primarily focuses on the realm of cancer care but it is also possible to use it in other scenarios as well. The focus is on primary usage (clinical routine) of the data but also secondary use (e.g. registries and research) are addressed. So this is in line with the Vision Zero initiative where we try to improve patient outcomes through more effective data management and precise communication.

In oncology, healthcare professionals across various departments must collaborate and share information. Yet, different practitioners require access to unique sets of data based on their roles and areas of expertise. Recognizing this, the implementation guide helps to create these different perspectives, including those of the patient, procedures, encounters, episode of care, diagnostic reports, and single lesions / body structures of a patient.

By addressing different medical concepts and departments such as medication, therapy decision-making (including tumor boards), pathology (including tumor genetics), radiology, surgery, and radiotherapy, this guide ensures an integrative approach. For instance, a radiology diagnostic report can link directly to the same tumor in a pathological diagnostic report or be referenced in a surgical report.

The drive towards personalized medicine in oncology underscores the importance of moving beyond a singular, document-centric view. This IG fosters interoperability, granting healthcare practitioners the ability to deliver more individualized and comprehensive care by offering a holistic yet detailed view of a patient's cancer journey.

Embracing the dynamic nature of healthcare, this guide has been build with adaptability at its core. As the field of oncology expands and evolves, the need for new profiles may emerge. This guide provides clear pathways on how to integrate additional profiles, ensuring modern healthcare needs.

We aim to redefine how healthcare providers access, interpret, and share pivotal information. By adopting a multi-dimensional approach to data, we believe we can transform cancer care, pushing the boundaries of personalized treatment, and getting closer to a world without cancer-related deaths.

## A typical digital patient journey we aim for in the GOLD IG - From Radiological Detection to Personalized Treatment in Lung Cancer
### Diagnosis
#### Week 1 (Radiology): 
Emma, a 58-year-old patient, consults her doctor due to a persistent cough and shortness of breath. The doctor advises an X-ray as an initial diagnostic step.
A couple of days later, the X-ray results come in, indicating some anomalies in her left lung that require further investigation. Consequently, a CT scan is ordered for a more detailed assessment. The finding in the lung looks cancerous so a subsequent staging CT is made to also cover abdomen, pelvis and the brain to search for metastasis. The staging CT scan shows the concerning lesion in her left lung and an enlarged lymph node nearby. The radiologist provides the clinical TNM classification, denoted as cTNM, designating it as cT2aN1M0 based on the size and location of the tumor and the involvement of the nearby lymph node and the absense of metastasis.
Using the GOLD FHIR Implementation Guide, a viewer software logs these findings as distinct body structure resources within the radiological diagnostic report FHIR resource, paving the way for an integrated approach to Emma's care.

#### Week 2 (Pathology): 
Emma is recommended to have a biopsy of the lung lesion for definitive pathological analysis and to identify targeted therapies. A sample is taken and sent to the pathology lab for a thorough examination.

#### Week 3: 
The pathological report confirms malignancy in the lung lesion, diagnosing it as non-small cell lung cancer. Along with the diagnosis, the pathologist provides the pathological tumor size classification, denoted as pT, tagging it as pT2a. Simultaneously, the tumor DNA is analyzed, and its genetic profile is recorded as a distinct FHIR resource. This DNA profile is crucial for treatment planning and is associated directly with the body structure FHIR resource pertaining to the lung lesion. The combined data provides a comprehensive and aligned insight into Emma's condition, both at the molecular and macroscopic levels.

### Personalized Treatment
#### Week 4:
Considering the severity and implications of the radiological and pathological findings, an interdisciplinary tumor board convenes. This board consists of an oncologist, radiologist, pathologist, thoracic surgeon, pulmonologist, and radiation oncologist.
The board, using their specialized tumor board software that integrates FHIR data, reviews Emma's radiological images, pathological findings, tumor DNA profile, and both the cTNM and pT classifications. They identify a specific genetic mutation in the pathological report.
Based on the board's discussion, a dual treatment approach is decided upon. Emma will undergo a targeted radiotherapy course to reduce the size of the tumor and prevent its growth. Simultaneously, she will be prescribed a targeted therapy drug known to be effective against lung cancers with the detected mutation.

#### Week 5:
Prior to starting her treatment, Emma undergoes a radiotherapy planning session. Using advanced imaging techniques, precise measurements, and simulations, the radiation oncologist and medical physicist draft a treatment plan. This plan optimizes the radiation dose to the tumor while sparing as much healthy tissue as possible.
Following the planning, Emma's combined treatment begins. She undergoes targeted radiotherapy sessions while concurrently being on the medication known to be effective against lung cancers with the detected mutation.

#### Week 7:
Emma's progress is closely monitored, with all evaluations and investigations consistently linked to the specific body structures, ensuring an integrated approach. And detect as early as possible if something would go in the wrong direction.

#### Week 8: 
The integrated TNM results, drawn from both radiology and pathology, are transmitted to a tumor registry using the FHIR profiles of the GOLD IG. This helps in further research and a better understanding of similar cases.

#### Week 12: 
After three months of targeted therapy, Emma has another CT scan. The radiologist finds the lung lesion significantly reduced, and the lymph node appears normal in size.

### Conclusion 
Through the GOLD FHIR Implementation Guide, Emma's healthcare journey showcases how integrated systems which provide different perspectives on a patients disease, ensure that healthcare providers have a precise, holistic, context specific and personalized view on data.



## Authors
### Working Group Christof von Kalle, CSC Charité & BIH (in alphabetical order)
* [Liudmila Lysyakova](https://github.com/mila-lysyakova)
* Stefanie Rudolph

### Working Group Sylvia Thun, BIH@Charité (in alphabetical order)
* [Andrea Essenwanger](https://github.com/bytegnome)
* [Julian Saß](https://github.com/julsas)
* Anna Trelinska-Finger, Charité CCC

### Further Working Groups (in alphabetical order)
* Marc Bachmann, Novartis Pharma GmbH
* Katja Beck, MASTER Program NCT Heidelberg
* Loren Dimitrov, mint Medical GmbH
* [Johannes Kast](https://github.com/johannes-kast-mint>), mint Medical GmbH
* Simon Kreutzfeldt, MASTER Program NCT Heidelberg
* Thomas Massier, mint Medical GmbH
* Friederike Schneider, mint Medical GmbH
* Erika Schirghuber, Roche Pharma AG
* Christoph Benedikt Westphalen, CCC München LMU
* Niko Wolf, Snke OS GmbH Healthcare Plattform

### Members of the Evaluation Group (in alphabetical order)
* Lars Bullinger, Charité Universitätsmedizin Berlin
* Melanie Börries, Universitätsklinikum Freiburg
* Thomas Ganslandt, Friedrich-Alexander-Universität Erlangen-Nürnberg
* Alexander Kerscher, Onkologisches Zentrum Universitätsklinikum Würzburg, CCC MF Krebsregister
* Claus R. Lattrich, Roche Pharma AG
* Patrick Metzger, Universitätsklinikum Freiburg
* Mathias Muth, Novartis Pharma GmbH
* Stefan Palm, WTZ Essen, Westdeutsches Tumorzentrum Netzwerk

## Participation and commenting

* [Issues via GitHub](https://github.com/BIH-CEI/{{site.data.fhir.packageId}}/issues/)

## Involved organizations
* [Berlin Institute of Health at Charité (BIH@Charité)](https://www.bihealth.org/)
* [Charité-BIH Clinical Study Center (CSC)](https://studycenter.charite.de/)
* [Vision Zero e.V.](https://www.vision-zero-oncology.de/)

## Links
* [GitHub project](https://github.com/BIH-CEI/{{site.data.fhir.packageId}}/)
* [Dataset description in ART-DECOR](https://art-decor.org/art-decor/decor-datasets--gold-?id=2.16.840.1.113883.3.1937.777.62.1.1&effectiveDate=2021-11-16T17%3A12%3A42&conceptId=2.16.840.1.113883.3.1937.777.62.2.1&conceptEffectiveDate=2021-11-16T17%3A12%3A42&language=de-DE)