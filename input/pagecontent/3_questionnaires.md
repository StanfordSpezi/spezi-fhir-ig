<!--
                  
#
# This source file is part of the Stanford Spezi open source project
#
# SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
# 
             
-->

# Questionnaires and Surveys

Spezi applications provide comprehensive support for creating interactive healthcare questionnaires and surveys using industry-standard FHIR Questionnaires. The framework leverages the [ResearchKitOnFHIR](https://github.com/StanfordBDHG/ResearchKitOnFHIR) library in conjunction with [SpeziQuestionnaire](https://github.com/StanfordSpezi/SpeziQuestionnaire) to convert FHIR Questionnaires into native [ResearchKit](https://developer.apple.com/design/human-interface-guidelines/researchkit) surveys and serialize results back to FHIR QuestionnaireResponse resources.

## Supported FHIR Extensions

The ResearchKitOnFHIR library supports a comprehensive set of standard HL7 FHIR extensions to enhance questionnaire functionality and provide rich user experiences on mobile platforms.

### Questionnaire Item Control Extensions

These extensions control how survey items are rendered and behave:

#### questionnaire-itemControl
Defines the UI control type for survey items, enabling rich interactive elements:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
      "valueCodeableConcept": {
        "coding": [
          {
            "system": "http://hl7.org/fhir/questionnaire-item-control",
            "code": "slider"
          }
        ]
      }
    }
  ]
}
```

**Supported Control Types:**
- `slider`: Continuous value selection with visual feedback
- `drop-down`: Compact selection from multiple options  
- `radio-button`: Single selection from visible options
- `check-box`: Multiple selection capability
- `text-box`: Free-text input with platform keyboard optimization

#### questionnaire-hidden
Controls conditional display and survey logic:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
      "valueBoolean": true
    }
  ]
}
```

#### questionnaire-sliderStepValue
Configures precision and increments for slider controls:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
      "valueDecimal": 0.1
    }
  ]
}
```

### Validation Extensions

Comprehensive input validation ensures data quality and user experience:

#### regex
Pattern-based validation for text inputs:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/regex",
      "valueString": "^\\d{3}-\\d{2}-\\d{4}$"
    }
  ]
}
```

#### questionnaire-validationText
Custom validation messages provide clear user feedback:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-validationText",
      "valueString": "Please enter a valid Social Security Number (XXX-XX-XXXX)"
    }
  ]
}
```

### Value Constraint Extensions

Precise control over acceptable input ranges:

#### minValue / maxValue
Numerical range constraints:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDecimal": 0
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/maxValue", 
      "valueDecimal": 10
    }
  ]
}
```

#### minValueDate / maxValueDate
Date range constraints for temporal data:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/minValue",
      "valueDate": "1900-01-01"
    },
    {
      "url": "http://hl7.org/fhir/StructureDefinition/maxValue",
      "valueDate": "2024-12-31"
    }
  ]
}
```

#### maxDecimalPlaces
Precision control for decimal inputs:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces",
      "valueInteger": 2
    }
  ]
}
```

### Presentation Extensions

Enhanced visual presentation and user experience:

#### questionnaire-unit
Display units for quantitative values:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-unit",
      "valueCoding": {
        "system": "http://unitsofmeasure.org",
        "code": "kg",
        "display": "kilograms"
      }
    }
  ]
}
```

#### entryFormat
Input format hints and placeholder text:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/entryFormat",
      "valueString": "MM/DD/YYYY"
    }
  ]
}
```

#### ordinalValue
Numeric scoring for assessment scales:

```json
{
  "answerOption": [
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
          "valueDecimal": 0
        }
      ],
      "valueString": "Not at all"
    },
    {
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue", 
          "valueDecimal": 3
        }
      ],
      "valueString": "Nearly every day"
    }
  ]
}
```

#### rendering-styleSensitive
Advanced styling hints for visual presentation:

```json
{
  "extension": [
    {
      "url": "http://hl7.org/fhir/StructureDefinition/rendering-styleSensitive",
      "valueString": "emphasis"
    }
  ]
}
```

### Platform-Specific Extensions (iOS)

iOS-optimized input experiences:

#### Keyboard Type Specifications
```json
{
  "extension": [
    {
      "url": "http://spezi.stanford.edu/fhir/StructureDefinition/keyboard-type",
      "valueString": "numberPad"
    }
  ]
}
```

#### Autocapitalization Preferences
```json
{
  "extension": [
    {
      "url": "http://spezi.stanford.edu/fhir/StructureDefinition/autocapitalization",
      "valueString": "words"
    }
  ]
}
```

#### Content Type Hints
```json
{
  "extension": [
    {
      "url": "http://spezi.stanford.edu/fhir/StructureDefinition/text-content-type",
      "valueString": "emailAddress"
    }
  ]
}
```

## Complete Example: PHQ-9 Depression Screening

The following example demonstrates a complete implementation of the PHQ-9 (Patient Health Questionnaire-9) depression screening tool using FHIR Questionnaire with ResearchKit rendering:

```json
{
  "resourceType": "Questionnaire",
  "id": "phq-9-depression-screening",
  "meta": {
    "profile": [
      "http://spezi.stanford.edu/fhir/StructureDefinition/spezi-questionnaire"
    ]
  },
  "identifier": [
    {
      "system": "http://spezi.stanford.edu/questionnaire-identifiers",
      "value": "PHQ-9-v1.0"
    }
  ],
  "name": "PHQ9DepressionScreening",
  "title": "Patient Health Questionnaire-9 (PHQ-9)",
  "status": "active",
  "subjectType": ["Patient"],
  "date": "2024-01-15",
  "publisher": "Stanford Spezi",
  "description": "The PHQ-9 is a validated screening tool for depression severity in healthcare settings.",
  "item": [
    {
      "linkId": "phq9-intro",
      "type": "display",
      "text": "Over the last 2 weeks, how often have you been bothered by any of the following problems?",
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/rendering-styleSensitive",
          "valueString": "emphasis"
        }
      ]
    },
    {
      "linkId": "phq9-1",
      "type": "choice",
      "text": "Little interest or pleasure in doing things",
      "required": true,
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/questionnaire-item-control",
                "code": "radio-button"
              }
            ]
          }
        }
      ],
      "answerOption": [
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 0
            }
          ],
          "valueString": "Not at all"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 1
            }
          ],
          "valueString": "Several days"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 2
            }
          ],
          "valueString": "More than half the days"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 3
            }
          ],
          "valueString": "Nearly every day"
        }
      ]
    },
    {
      "linkId": "phq9-2", 
      "type": "choice",
      "text": "Feeling down, depressed, or hopeless",
      "required": true,
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept": {
            "coding": [
              {
                "system": "http://hl7.org/fhir/questionnaire-item-control",
                "code": "radio-button"
              }
            ]
          }
        }
      ],
      "answerOption": [
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 0
            }
          ],
          "valueString": "Not at all"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 1
            }
          ],
          "valueString": "Several days"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 2
            }
          ],
          "valueString": "More than half the days"
        },
        {
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 3
            }
          ],
          "valueString": "Nearly every day"
        }
      ]
    },
    {
      "linkId": "phq9-score",
      "type": "integer",
      "text": "Total PHQ-9 Score",
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
          "valueBoolean": true
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger": 0
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/maxValue", 
          "valueInteger": 27
        }
      ]
    }
  ]
}
```

### Corresponding QuestionnaireResponse

When a patient completes the survey, the system generates a FHIR QuestionnaireResponse:

```json
{
  "resourceType": "QuestionnaireResponse",
  "id": "phq9-response-example",
  "questionnaire": "Questionnaire/phq-9-depression-screening",
  "status": "completed",
  "subject": {
    "reference": "Patient/example-patient"
  },
  "authored": "2024-01-15T14:30:00Z",
  "source": {
    "reference": "Patient/example-patient"
  },
  "item": [
    {
      "linkId": "phq9-1",
      "answer": [
        {
          "valueString": "Several days",
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 1
            }
          ]
        }
      ]
    },
    {
      "linkId": "phq9-2",
      "answer": [
        {
          "valueString": "More than half the days",
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 2
            }
          ]
        }
      ]
    },
    {
      "linkId": "phq9-score",
      "answer": [
        {
          "valueInteger": 3
        }
      ]
    }
  ]
}
```