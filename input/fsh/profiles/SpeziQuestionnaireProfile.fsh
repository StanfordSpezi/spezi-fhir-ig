Profile: SpeziQuestionnaireProfile
Parent: Questionnaire
Id: spezi-questionnaire
Title: "Spezi Questionnaire Profile"
Description: "Questionnaire Profile used to represent surveys rendered on mobile devices"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2022-08-26"
* . ^mustSupport = true
* identifier 1..1 MS
* name 0..1 MS
* title 0..1 MS
* status 1..1 MS
* subjectType MS
* date MS
* item 1..* MS