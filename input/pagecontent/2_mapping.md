<!--
                  
#
# This source file is part of the Stanford Spezi open source project
#
# SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
# 
             
-->


Spezi applications can serialize HealthKit data points into FHIR Observations using the [HealthKitOnFHIR](https://github.com/StanfordBDHG/HealthKitOnFHIR) library in combination with the [SpeziHealthKit](https://github.com/StanfordSpezi/SpeziHealthKit) module. The following table shows the supported mappings. Standardized codes(e.g. LOINC and UCUM) are used when possible.

## HealthKit Mapping Table

|HKQuantityType|Supported|Code|Unit|
|----|----|----|----|
|[ActiveEnergyBurned](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierActiveEnergyBurned)|✅|[41981-2](http://loinc.org/41981-2)|[kcal](http://unitsofmeasure.org)|
|[AppleExerciseTime](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierAppleExerciseTime)|✅|[HKQuantityTypeIdentifierAppleExerciseTime](http://developer.apple.com/documentation/healthkit)|[min](http://unitsofmeasure.org)|
|[AppleMoveTime](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierAppleMoveTime)|✅|[HKQuantityTypeIdentifierAppleMoveTime](http://developer.apple.com/documentation/healthkit)|[min](http://unitsofmeasure.org)|
|[AppleStandTime](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierAppleStandTime)|✅|[HKQuantityTypeIdentifierAppleStandTime](http://developer.apple.com/documentation/healthkit)|[min](http://unitsofmeasure.org)|
|[AppleWalkingSteadiness](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierAppleWalkingSteadiness)|✅|[HKQuantityTypeIdentifierAppleWalkingSteadiness](http://developer.apple.com/documentation/healthkit)|[%](http://unitsofmeasure.org)|
|[BasalBodyTemperature](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBasalBodyTemperature)|✅|[HKQuantityTypeIdentifierBasalBodyTemperature](http://developer.apple.com/documentation/healthkit)|[C](http://unitsofmeasure.org)|
|[BasalEnergyBurned](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBasalEnergyBurned)|✅|[HKQuantityTypeIdentifierBasalEnergyBurned](http://developer.apple.com/documentation/healthkit)|[kcal](http://unitsofmeasure.org)|
|[BloodAlcoholContent](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBloodAlcoholContent)|✅|[74859-0](http://loinc.org/74859-0)|[%](http://unitsofmeasure.org)|
|[BloodGlucose](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBloodGlucose)|✅|[41653-7](http://loinc.org/41653-7)|[mg/dL](http://unitsofmeasure.org)|
|[BloodPressureDiastolic](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBloodPressureDiastolic)|✅|[8462-4](http://loinc.org/8462-4)|[mmHg](http://unitsofmeasure.org)|
|[BloodPressureSystolic](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBloodPressureSystolic)|✅|[8480-6](http://loinc.org/8480-6)|[mmHg](http://unitsofmeasure.org)|
|[BodyFatPercentage](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBodyFatPercentage)|✅|[41982-0](http://loinc.org/41982-0)|[%](http://unitsofmeasure.org)|
|[BodyMass](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBodyMass)|✅|[29463-7](http://loinc.org/29463-7)|[lbs](http://unitsofmeasure.org)|
|[BodyMassIndex](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBodyMassIndex)|✅|[39156-5](http://loinc.org/39156-5)|[kg/m^2](http://unitsofmeasure.org)|
|[BodyTemperature](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierBodyTemperature)|✅|[8310-5](http://loinc.org/8310-5)|[C](http://unitsofmeasure.org)|
|[DietaryBiotin](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryBiotin)|✅|[HKQuantityTypeIdentifierDietaryBiotin](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryCaffeine](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryCaffeine)|✅|[HKQuantityTypeIdentifierDietaryCaffeine](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryCalcium](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryCalcium)|✅|[HKQuantityTypeIdentifierDietaryCalcium](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryCarbohydrates](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryCarbohydrates)|✅|[HKQuantityTypeIdentifierDietaryCarbohydates](http://developer.apple.com/documentation/healthkit)|[g](http://unitsofmeasure.org)|
|[DietaryChloride](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryChloride)|✅|[HKQuantityTypeIdentifierDietaryChloride](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryCholesterol](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryCholesterol)|✅|[HKQuantityTypeIdentifierDietaryCholesterol](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryChromium](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryChromium)|✅|[HKQuantityTypeIdentifierDietaryChromium](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryCopper](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryCopper)|✅|[HKQuantityTypeIdentifierDietaryCopper](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryEnergyConsumed](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryEnergyConsumed)|✅|[9052-2](http://loinc.org/9052-2)|[kcal](http://unitsofmeasure.org)|
|[DietaryFatMonounsaturated](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryFatMonounsaturated)|✅|[HKQuantityTypeIdentifierDietaryFatMonounsaturated](http://developer.apple.com/documentation/healthkit)|[g](http://unitsofmeasure.org)|
|[DietaryFatPolyunsaturated](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryFatPolyunsaturated)|✅|[HKQuantityTypeIdentifierDietaryFatPolyunsaturated](http://developer.apple.com/documentation/healthkit)|[g](http://unitsofmeasure.org)|
|[DietaryFatSaturated](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryFatSaturated)|✅|[HKQuantityTypeIdentifierDietaryFatSaturated](http://developer.apple.com/documentation/healthkit)|[g](http://unitsofmeasure.org)|
|[DietaryFatTotal](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryFatTotal)|✅|[HKQuantityTypeIdentifierDietaryFatTotal](http://developer.apple.com/documentation/healthkit)|[g](http://unitsofmeasure.org)|
|[DietaryFiber](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryFiber)|✅|[LP203183-1](http://loinc.org/LP203183-1)|[g](http://unitsofmeasure.org)|
|[DietaryFolate](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryFolate)|✅|[HKQuantityTypeIdentifierDietaryFolate](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryIodine](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryIodine)|✅|[HKQuantityTypeIdentifierDietaryIodine](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryIron](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryIron)|✅|[HKQuantityTypeIdentifierDietaryIron](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryMagnesium](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryMagnesium)|✅|[HKQuantityTypeIdentifierDietaryMagnesium](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryManganese](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryManganese)|✅|[HKQuantityTypeIdentifierDietaryManganese](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryMolybdenum](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryMolybdenum)|✅|[HKQuantityTypeIdentifierDietaryMolybdenum](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryNiacin](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryNiacin)|✅|[HKQuantityTypeIdentifierDietaryNiacin](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryPantothenicAcid](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryPantothenicAcid)|✅|[HKQuantityTypeIdentifierDietaryPantothenicAcid](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryPhosphorus](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryPhosphorus)|✅|[HKQuantityTypeIdentifierDietaryPhosphorus](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryPotassium](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryPotassium)|✅|[HKQuantityTypeIdentifierDietaryPotassium](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryProtein](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryProtein)|✅|[HKQuantityTypeIdentifierDietaryProtein](http://developer.apple.com/documentation/healthkit)|[g](http://unitsofmeasure.org)|
|[DietaryRiboflavin](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryRiboflavin)|✅|[HKQuantityTypeIdentifierDietaryRiboflavin](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietarySelenium](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietarySelenium)|✅|[HKQuantityTypeIdentifierDietarySelenium](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietarySodium](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietarySodium)|✅|[HKQuantityTypeIdentifierDietarySodium](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietarySugar](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietarySugar)|✅|[HKQuantityTypeIdentifierDietarySugar](http://developer.apple.com/documentation/healthkit)|[g](http://unitsofmeasure.org)|
|[DietaryThiamin](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryThiamin)|✅|[HKQuantityTypeIdentifierDietaryThiamin](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryVitaminA](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryVitaminA)|✅|[HKQuantityTypeIdentifierDietaryVitaminA](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryVitaminB12](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryVitaminB12)|✅|[HKQuantityTypeIdentifierDietaryVitaminB12](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryVitaminB6](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryVitaminB6)|✅|[HKQuantityTypeIdentifierDietaryVitaminB6](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryVitaminC](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryVitaminC)|✅|[HKQuantityTypeIdentifierDietaryVitaminC](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryVitaminD](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryVitaminD)|✅|[HKQuantityTypeIdentifierDietaryVitaminD](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryVitaminE](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryVitaminE)|✅|[HKQuantityTypeIdentifierDietaryVitaminE](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DietaryVitaminK](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryVitaminK)|✅|[HKQuantityTypeIdentifierDietaryVitaminK](http://developer.apple.com/documentation/healthkit)|[ug](http://unitsofmeasure.org)|
|[DietaryWater](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryWater)|✅|[HKQuantityTypeIdentifierDietaryWater](http://developer.apple.com/documentation/healthkit)|[l](http://unitsofmeasure.org)|
|[DietaryZinc](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDietaryZinc)|✅|[HKQuantityTypeIdentifierDietaryZinc](http://developer.apple.com/documentation/healthkit)|[mg](http://unitsofmeasure.org)|
|[DistanceCycling](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDistanceCycling)|✅|[HKQuantityTypeIdentifierDistanceCycling](http://developer.apple.com/documentation/healthkit)|[m](http://unitsofmeasure.org)|
|[DistanceDownhillSnowSports](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDistanceDownhillSnowSports)|✅|[HKQuantityTypeIdentifierDistanceDownhillSnowSports](http://developer.apple.com/documentation/healthkit)|[m](http://unitsofmeasure.org)|
|[DistanceSwimming](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDistanceSwimming)|✅|[93816-7](http://loinc.org/93816-7)|[m](http://unitsofmeasure.org)|
|[DistanceWalkingRunning](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDistanceWalkingRunning)|✅|[HKQuantityTypeIdentifierDistanceWalkingRunning](http://developer.apple.com/documentation/healthkit)|[m](http://unitsofmeasure.org)|
|[DistanceWheelchair](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierDistanceWheelchair)|✅|[HKQuantityTypeIdentifierDistanceWheelchair](http://developer.apple.com/documentation/healthkit)|[m](http://unitsofmeasure.org)|
|[ElectrodermalActivity](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierElectrodermalActivity)|✅|[HKQuantityTypeIdentifierElectrodermalActivity](http://developer.apple.com/documentation/healthkit)|[siemens](http://unitsofmeasure.org)|
|[EnvironmentalAudioExposure](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierEnvironmentalAudioExposure)|✅|[HKQuantityTypeIdentifierEnvironmentalAudioExposure](http://developer.apple.com/documentation/healthkit)|[dB(SPL)](http://unitsofmeasure.org)|
|[FlightsClimbed](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierFlightsClimbed)|✅|[100304-5](http://loinc.org/100304-5)|flights|
|[ForcedExpiratoryVolume1](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierForcedExpiratoryVolume1)|✅|[20150-9](http://loinc.org/20150-9)|[L](http://unitsofmeasure.org)|
|[ForcedVitalCapacity](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierForcedVitalCapacity)|✅|[19870-5](http://loinc.org/19870-5)|[L](http://unitsofmeasure.org)|
|[HeadphoneAudioExposure](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierHeadphoneAudioExposure)|✅|[HKQuantityTypeIdentifierHeadphoneAudioExposure](http://developer.apple.com/documentation/healthkit)|[dB(SPL)](http://unitsofmeasure.org)|
|[HeartRate](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierHeartRate)|✅|[8867-4](http://loinc.org/8867-4)|[beats/minute](http://unitsofmeasure.org)|
|[HeartRateVariabilitySDNN](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierHeartRateVariabilitySDNN)|✅|[80404-7](http://loinc.org/80404-7)|[ms](http://unitsofmeasure.org)|
|[Height](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierHeight)|✅|[8302-2](http://loinc.org/8302-2)|[in](http://unitsofmeasure.org)|
|[InhalerUsage](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierInhalerUsage)|✅|[HKQuantityTypeIdentifierInhalerUsage](http://developer.apple.com/documentation/healthkit)|count|
|[InsulinDelivery](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierInsulinDelivery)|❌|-|-|
|[LeanBodyMass](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierLeanBodyMass)|✅|[91557-9](http://loinc.org/91557-9)|[lbs](http://unitsofmeasure.org)|
|[NikeFuel](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierNikeFuel)|❌|-|-|
|[NumberOfTimesFallen](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierNumberOfTimesFallen)|✅|[HKQuantityTypeIdentifierNumberOfTimesFallen](http://developer.apple.com/documentation/healthkit)|falls|
|[OxygenSaturation](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierOxygenSaturation)|✅|[59408-5](http://loinc.org/59408-5)|[%](http://unitsofmeasure.org)|
|[PeakExpiratoryFlowRate](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierPeakExpiratoryFlowRate)|✅|[19935-6](http://loinc.org/19935-6)|[L/min](http://unitsofmeasure.org)|
|[PeripheralPerfusionIndex](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierPeripheralPerfusionIndex)|✅|[61006-3](http://loinc.org/61006-3)|[%](http://unitsofmeasure.org)|
|[PhysicalEffort](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierPhysicalEffort)|✅|[HKQuantityTypeIdentifierPhysicalEffort](http://developer.apple.com/documentation/healthkit)|[kcal/hr/kg](http://unitsofmeasure.org)|
|[PushCount](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierPushCount)|✅|[96502-0](http://loinc.org/96502-0)|wheelchair pushes|
|[RespiratoryRate](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierRespiratoryRate)|✅|[9279-1](http://loinc.org/9279-1)|[breaths/minute](http://unitsofmeasure.org)|
|[RestingHeartRate](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierRestingHeartRate)|✅|[40443-4](http://loinc.org/40443-4)|[beats/minute](http://unitsofmeasure.org)|
|[StepCount](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierStepCount)|✅|[55423-8](http://loinc.org/55423-8)|steps|
|[SwimmingStrokeCount](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierSwimmingStrokeCount)|✅|[HKQuantityTypeIdentifierSwimmingStrokeCount](http://developer.apple.com/documentation/healthkit)|strokes|
|[TimeInDaylight](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierTimeInDaylight)|✅|[HKQuantityTypeIdentifierTimeInDaylight](http://developer.apple.com/documentation/healthkit)|[min](http://unitsofmeasure.org)|
|[UVExposure](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierUVExposure)|✅|[HKQuantityTypeIdentifierUVExposure](http://developer.apple.com/documentation/healthkit)|count|
|[VO2Max](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierVO2Max)|✅|[HKQuantityTypeIdentifierVO2Max](http://developer.apple.com/documentation/healthkit)|[mL/kg/min](http://unitsofmeasure.org)|
|[WaistCircumference](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierWaistCircumference)|✅|[8280-0](http://loinc.org/8280-0)|[in](http://unitsofmeasure.org)|
|[WalkingAsymmetryPercentage](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierWalkingAsymmetryPercentage)|✅|[HKQuantityTypeIdentifierWalkingAsymmetryPercentage](http://developer.apple.com/documentation/healthkit)|[%](http://unitsofmeasure.org)|
|[WalkingHeartRateAverage](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierWalkingHeartRateAverage)|✅|[HKQuantityTypeIdentifierWalkingHeartRateAverage](http://developer.apple.com/documentation/healthkit)|[beats/minute](http://unitsofmeasure.org)|
|[WalkingSpeed](https://developer.apple.com/documentation/healthkit/HKQuantityTypeIdentifierWalkingSpeed)|✅|[HKQuantityTypeIdentifierWalkingSpeed](http://developer.apple.com/documentation/healthkit)|[m/s](http://unitsofmeasure.org)|


Please see the [Examples](5_examples.html) page for a complete example mapping.

## ResearchKitOnFHIR Extension Support

Spezi applications can create interactive healthcare questionnaires using the [ResearchKitOnFHIR](https://github.com/StanfordBDHG/ResearchKitOnFHIR) library, which converts FHIR Questionnaires to ResearchKit surveys and serializes results back to FHIR QuestionnaireResponse resources. The library leverages standard HL7 FHIR extensions to enhance questionnaire functionality and user experience.

### Supported Standard FHIR Extensions

The ResearchKitOnFHIR library supports the following standard HL7 FHIR extensions for enhanced questionnaire functionality:

#### Questionnaire Item Control Extensions
- **`questionnaire-itemControl`** - Defines UI control types (sliders, steppers, etc.)
- **`questionnaire-hidden`** - Controls item visibility and conditional display
- **`questionnaire-sliderStepValue`** - Sets step increments for slider controls

#### Validation Extensions
- **`regex`** - Input validation using regular expression patterns
- **`questionnaire-validationText`** - Custom validation error messages for user feedback
- Legacy validation message extensions for backward compatibility

#### Value Constraint Extensions
- **`minValue`** / **`maxValue`** - Numerical range constraints for numeric inputs
- **`minValueDate`** / **`maxValueDate`** - Date range constraints for date inputs
- **`maxDecimalPlaces`** - Decimal precision limits for numeric values

#### Presentation Extensions
- **`questionnaire-unit`** - Display units for numerical values (e.g., kg, cm, %)
- **`entryFormat`** - Input format hints and placeholder text
- **`ordinalValue`** - Numeric scoring values for answer choices (used for scoring scales like GAD-7, PHQ-9)
- **`rendering-styleSensitive`** - Style-sensitive rendering hints

#### Platform-Specific Extensions (iOS/visionOS)
- Custom keyboard type specifications for optimal iOS input experience
- Autocapitalization preferences for text inputs
- Text content type hints for improved user experience

### Extension Usage in Practice

These extensions are utilized in example questionnaires such as:
- **GAD-7 Anxiety Scale** - Uses `ordinalValue` extensions for proper anxiety scoring
- **PHQ-9 Depression Scale** - Uses rendering extensions for optimal presentation
- **Slider Examples** - Uses item control and value range extensions for interactive sliders

The ResearchKitOnFHIR integration ensures that FHIR questionnaires maintain their clinical validity while providing rich, interactive user experiences on iOS platforms.