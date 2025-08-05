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
* item.extension ^slicing.discriminator.type = #value
* item.extension ^slicing.discriminator.path = "url"
* item.extension ^slicing.rules = #open
* item.extension contains
    http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl named itemControl 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/questionnaire-hidden named hidden 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue named sliderStepValue 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/minValue named minValue 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/maxValue named maxValue 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces named maxDecimalPlaces 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/questionnaire-unit named unit 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/entryFormat named entryFormat 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/rendering-styleSensitive named styleSensitive 0..1 MS and
    http://hl7.org/fhir/StructureDefinition/regex named regex 0..1 MS
* item.extension[itemControl] ^short = "UI control type for ResearchKit rendering"
* item.extension[hidden] ^short = "Controls item visibility in surveys"
* item.extension[sliderStepValue] ^short = "Step increment for slider controls"
* item.extension[minValue] ^short = "Minimum value for numeric/date inputs (use valueDate for dates)"
* item.extension[maxValue] ^short = "Maximum value for numeric/date inputs (use valueDate for dates)"
* item.extension[maxDecimalPlaces] ^short = "Decimal precision limit"
* item.extension[unit] ^short = "Display unit for numerical values"
* item.extension[entryFormat] ^short = "Input format hints or placeholders"
* item.extension[styleSensitive] ^short = "Style-sensitive rendering hints"
* item.extension[regex] ^short = "Input validation pattern"
* item.answerOption.extension ^slicing.discriminator.type = #value
* item.answerOption.extension ^slicing.discriminator.path = "url"
* item.answerOption.extension ^slicing.rules = #open
* item.answerOption.extension contains
    http://hl7.org/fhir/StructureDefinition/ordinalValue named ordinalValue 0..1 MS
* item.answerOption.extension[ordinalValue] ^short = "Numeric score for answer choice (GAD-7, PHQ-9, etc.)"