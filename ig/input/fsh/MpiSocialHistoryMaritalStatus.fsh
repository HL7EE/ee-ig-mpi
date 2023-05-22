Alias: MaritalStatusVS = http://hl7.org/fhir/ValueSet/marital-status
Alias: MaritalStatusCS = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus

Profile:        MpiSocialHistoryMaritalStatus
Parent:         EEBaseObservation
Id:             ee-mpi-socialhistory-marital-status
Title:          "EE MPI SocialHistory Marital Status"
Description:    "Abielu või suhe liik."
* status = #final (exactly)
* category[obscat] = OBSCAT#social-history "Social history" (exactly)
* code = SCT#125680007 "Marital status" (exactly)
* effective[x] 0..1 MS
* effective[x] only Period
* effective[x] ^short = "Suhete periood"
* issued 1.. MS
* issued ^short = "Ajahetk millal antud fakt fikseeritud"
* subject 1..1 MS
* subject only Reference(EEBasePatient)
* performer 0.. MS
* performer only Reference(EEBaseRelatedPerson)
* performer ^short = "Teine isik suhes."
* value[x] 1..1 MS
* value[x] only CodeableConcept 
* valueCodeableConcept from MaritalStatusVS
* valueCodeableConcept ^short = "Suhe liik."
* basedOn ..0
* partOf ..0
* component ..0
* hasMember ..0
* method ..0
* bodySite ..0
* specimen ..0
* device ..0

Instance: MaritalStatus
InstanceOf: MpiSocialHistoryMaritalStatus
Description: "Example of patient marital status"
Usage: #example
* subject = Reference(Patient/pat1)
* issued = "1995-06-21T00:00:00+02:00"
* performer[+] = Reference(PatientIgorBossenkoWife)
* valueCodeableConcept = MaritalStatusCS#M "Married"
