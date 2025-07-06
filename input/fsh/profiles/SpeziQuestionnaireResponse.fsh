Profile: SpeziQuestionnaireResponseProfile
Parent: QuestionnaireResponse
Id: spezi-questionnaireresponse
Title: "Spezi QuestionnaireResponse Profile"
Description: "QuestionnaireResponse Profile used to represent survey results in Spezi applications"
* ^version = "1.0.0"
* ^experimental = false
* ^date = "2022-08-26"
* . ^mustSupport = true
* identifier 1..1 MS
* questionnaire 1..1 MS
* status 1..1 MS
* subject 0..1 MS
* authored 1..1 MS
* item 1..* MS
