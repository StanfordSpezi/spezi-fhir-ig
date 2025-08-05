Profile: SpeziObservationProfile
Parent: Observation
Id: spezi-observation
Title: "Spezi mHealth Observation Profile"
Description: "Observation Profile used for representing mobile health data in Spezi applications"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2022-01-31"
* . ^mustSupport = false
* identifier MS
* status only code
* status = #final (exactly)
* category MS
* code MS
* subject only Reference
* subject MS
* effective[x] MS
* issued MS
* value[x] only Quantity
* value[x] MS
* note
* bodySite MS
* method MS
* device MS
* component MS
* component.code MS
* component.value[x] only CodeableConcept or Quantity
* component.value[x] MS