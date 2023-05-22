CodeSystem:  LegalStatus
Id:          legal-status
Title:       "Legal Status"
Description: "The legal status that applies to the patient. The legal status indicates the basis on which the patient is staying in a healthcare organization. This can be either voluntary or involuntary, however the legal status is always determined by a judge. A patient can also receive healthcare based on a forensic status."
* ^experimental = false
* ^content = #complete
* ^caseSensitive = false
* #T0 "Teovõimeline"
* #T1 "Piiratud teovõimega valimisõiguseta"
  * ^designation[0].language = #et
  * ^designation[=].value = "Piiratud valimisõiguseta"
* #T3 "Piiratud teovõimega valimisõigusega"
  * ^designation[0].language = #et
  * ^designation[=].value = "Piiratud valimisõigusega"

ValueSet:    LegalStatus
Id:          legal-status
Title:       "Legal Status"
Description: "The legal status that applies to the patient."
* ^experimental = false
* include codes from system LegalStatus


Profile:        MpiSocialHistoryLegalStatus
Parent:         EEBaseObservation
Id:             ee-mpi-socialhistory-legal-status
Title:          "EE MPI SocialHistory Legal Status"
Description:    "The legal status that applies to the patient."
* status = #final (exactly)
* category[obscat] = OBSCAT#social-history "Social history" (exactly)
* code = SCT#303186005 "Legal status of patient" (exactly)
* effective[x] 1..1 MS
* effective[x] only Period
* subject 1..1 MS
* subject only Reference(EEBasePatient)
* performer 0.. MS 
* performer only Reference(EEBaseOrganization or EEBaseRelatedPerson)
* value[x] 1..1 MS
* value[x] only CodeableConcept 
* valueCodeableConcept from LegalStatus
* note ..1 MS
* basedOn ..0
* partOf ..0
* component ..0
* hasMember ..0
* method ..0
* bodySite ..0
* specimen ..0
* device ..0

Instance: LegalStatus
InstanceOf: MpiSocialHistoryLegalStatus
Description: "Example of patient legal status"
Usage: #example
* subject = Reference(Patient/pat1)
* effectivePeriod.start = "2021-11-23"
* performer[0] = Reference(PatientIgorBossenkoWife)
* valueCodeableConcept = LegalStatus#T0 "Teovõimeline"
