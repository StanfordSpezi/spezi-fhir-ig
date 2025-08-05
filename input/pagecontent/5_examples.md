<!--
                  
#
# This source file is part of the Stanford Spezi open source project
#
# SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
# 
             
-->

# Implementation Examples

This section provides comprehensive examples of FHIR resources commonly used in Spezi applications, including mobile health data observations and interactive questionnaires compatible with ResearchKitOnFHIR.

## Table of Contents

- [Mobile Health Data Examples](#mobile-health-data-examples)
  - [Heart Rate Observation](#heart-rate-observation)
  - [Step Count Observation](#step-count-observation)
  - [Blood Pressure Observation](#blood-pressure-observation)
- [Questionnaire Examples](#questionnaire-examples)
  - [Basic Form with Validation](#basic-form-with-validation)
  - [PHQ-9 Depression Screening](#phq-9-depression-screening)
  - [Skip Logic Example](#skip-logic-example)
  - [Slider Input Example](#slider-input-example)
- [QuestionnaireResponse Examples](#questionnaireresponse-examples)

## Mobile Health Data Examples

### Heart Rate Observation

Example of a heart rate measurement from iOS HealthKit, converted to a FHIR Observation:

```json
{
  "resourceType": "Observation",
  "id": "heart-rate-example",
  "meta": {
    "profile": ["http://spezi.stanford.edu/fhir/StructureDefinition/spezi-observation"]
  },
  "identifier": [
    {
      "system": "http://spezi.stanford.edu/fhir/identifiers",
      "value": "8BA093D9-B99B-4A3C-8C9E-98C86F49F5D8"
    }
  ],
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "8867-4",
        "display": "Heart rate"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-patient"
  },
  "effectiveDateTime": "2024-01-15T10:30:00Z",
  "issued": "2024-01-15T10:30:05Z",
  "valueQuantity": {
    "value": 72,
    "unit": "beats/minute",
    "system": "http://unitsofmeasure.org",
    "code": "/min"
  },
  "device": {
    "display": "Apple Watch Series 9"
  }
}
```

### Step Count Observation

Daily step count from iOS HealthKit:

```json
{
  "resourceType": "Observation",
  "id": "step-count-example",
  "meta": {
    "profile": ["http://spezi.stanford.edu/fhir/StructureDefinition/spezi-observation"]
  },
  "identifier": [
    {
      "system": "http://spezi.stanford.edu/fhir/identifiers",
      "value": "STEP-COUNT-2024-01-15"
    }
  ],
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "activity"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "55423-8",
        "display": "Number of steps"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-patient"
  },
  "effectiveDateTime": "2024-01-15T23:59:00Z",
  "issued": "2024-01-16T00:00:00Z",
  "valueQuantity": {
    "value": 8542,
    "unit": "steps",
    "system": "http://unitsofmeasure.org",
    "code": "{steps}"
  },
  "device": {
    "display": "iPhone Health App"
  }
}
```

### Blood Pressure Observation

Blood pressure measurement with systolic and diastolic components:

```json
{
  "resourceType": "Observation",
  "id": "blood-pressure-example",
  "meta": {
    "profile": ["http://spezi.stanford.edu/fhir/StructureDefinition/spezi-observation"]
  },
  "identifier": [
    {
      "system": "http://spezi.stanford.edu/fhir/identifiers",
      "value": "BP-2024-01-15-001"
    }
  ],
  "status": "final",
  "category": [
    {
      "coding": [
        {
          "system": "http://terminology.hl7.org/CodeSystem/observation-category",
          "code": "vital-signs"
        }
      ]
    }
  ],
  "code": {
    "coding": [
      {
        "system": "http://loinc.org",
        "code": "85354-9",
        "display": "Blood pressure panel with all children optional"
      }
    ]
  },
  "subject": {
    "reference": "Patient/example-patient"
  },
  "effectiveDateTime": "2024-01-15T14:30:00Z",
  "issued": "2024-01-15T14:30:05Z",
  "component": [
    {
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "8480-6",
            "display": "Systolic blood pressure"
          }
        ]
      },
      "valueQuantity": {
        "value": 120,
        "unit": "mm[Hg]",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    },
    {
      "code": {
        "coding": [
          {
            "system": "http://loinc.org",
            "code": "8462-4",
            "display": "Diastolic blood pressure"
          }
        ]
      },
      "valueQuantity": {
        "value": 80,
        "unit": "mm[Hg]",
        "system": "http://unitsofmeasure.org",
        "code": "mm[Hg]"
      }
    }
  ],
  "device": {
    "display": "Omron Blood Pressure Monitor"
  }
}
```

## Questionnaire Examples

### Basic Form with Validation

A contact information form demonstrating text validation and iOS-specific extensions:

```json
{
  "resourceType": "Questionnaire",
  "id": "contact-form-example",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language": "en-US",
  "status": "active",
  "subjectType": ["Patient"],
  "name": "ContactInformationForm",
  "title": "Contact Information",
  "publisher": "Stanford Spezi",
  "description": "Basic contact information form with validation and iOS optimizations",
  "item": [
    {
      "linkId": "name",
      "type": "string",
      "text": "What is your full name?",
      "required": true,
      "extension": [
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-textcontenttype",
          "valueString": "name"
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-autocapitalizationType",
          "valueString": "words"
        }
      ]
    },
    {
      "linkId": "email",
      "type": "string",
      "text": "What is your email address?",
      "required": true,
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/regex",
          "valueString": "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/validationtext",
          "valueString": "Please enter a valid email address."
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-keyboardtype",
          "valueString": "emailAddress"
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-textcontenttype",
          "valueString": "emailAddress"
        }
      ]
    },
    {
      "linkId": "phone",
      "type": "string",
      "text": "What is your phone number?",
      "required": false,
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/regex",
          "valueString": "^\\+?[1-9]\\d{1,14}$"
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/validationtext",
          "valueString": "Please enter a valid phone number."
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-keyboardtype",
          "valueString": "phonePad"
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-textcontenttype",
          "valueString": "telephoneNumber"
        }
      ]
    },
    {
      "linkId": "age",
      "type": "integer",
      "text": "What is your age?",
      "required": true,
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger": 18
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger": 120
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-keyboardtype",
          "valueString": "numberPad"
        }
      ]
    }
  ]
}
```

### PHQ-9 Depression Screening

Complete PHQ-9 questionnaire with scoring calculation:

```json
{
  "resourceType": "Questionnaire",
  "id": "phq9-complete-example",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language": "en-US",
  "status": "active",
  "subjectType": ["Patient"],
  "name": "PHQ9DepressionScreening",
  "title": "Patient Health Questionnaire-9 (PHQ-9)",
  "publisher": "Stanford Spezi",
  "description": "PHQ-9 depression screening questionnaire with automatic scoring",
  "contained": [
    {
      "resourceType": "ValueSet",
      "id": "phq9-answers",
      "status": "active",
      "compose": {
        "include": [
          {
            "system": "http://loinc.org",
            "concept": [
              {
                "code": "LA6568-5",
                "display": "Not at all",
                "extension": [
                  {
                    "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
                    "valueDecimal": 0
                  }
                ]
              },
              {
                "code": "LA6569-3",
                "display": "Several days",
                "extension": [
                  {
                    "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
                    "valueDecimal": 1
                  }
                ]
              },
              {
                "code": "LA6570-1",
                "display": "More than half the days",
                "extension": [
                  {
                    "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
                    "valueDecimal": 2
                  }
                ]
              },
              {
                "code": "LA6571-9",
                "display": "Nearly every day",
                "extension": [
                  {
                    "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
                    "valueDecimal": 3
                  }
                ]
              }
            ]
          }
        ]
      }
    }
  ],
  "extension": [
    {
      "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
      "valueExpression": {
        "language": "text/fhirpath",
        "expression": "%resource.item.where(linkId='phq9-score').answer.first().value",
        "name": "score"
      }
    }
  ],
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
      "text": "1. Little interest or pleasure in doing things",
      "required": true,
      "answerValueSet": "#phq9-answers",
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
      ]
    },
    {
      "linkId": "phq9-2",
      "type": "choice",
      "text": "2. Feeling down, depressed, or hopeless",
      "required": true,
      "answerValueSet": "#phq9-answers",
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
      ]
    },
    {
      "linkId": "phq9-3",
      "type": "choice",
      "text": "3. Trouble falling or staying asleep, or sleeping too much",
      "required": true,
      "answerValueSet": "#phq9-answers",
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
      ]
    },
    {
      "linkId": "phq9-score",
      "type": "integer",
      "text": "Total PHQ-9 Score",
      "required": false,
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden",
          "valueBoolean": true
        },
        {
          "url": "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression",
          "valueExpression": {
            "language": "text/fhirpath",
            "expression": "%resource.item.where(linkId.startsWith('phq9-') and linkId != 'phq9-intro' and linkId != 'phq9-score').answer.value.ordinal().sum()"
          }
        }
      ]
    }
  ]
}
```

### Skip Logic Example

Questionnaire demonstrating conditional logic and enableWhen conditions:

```json
{
  "resourceType": "Questionnaire",
  "id": "skip-logic-example",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language": "en-US",
  "status": "active",
  "subjectType": ["Patient"],
  "name": "SkipLogicExample",
  "title": "Skip Logic Demonstration",
  "publisher": "Stanford Spezi",
  "description": "Questionnaire demonstrating conditional question display",
  "item": [
    {
      "linkId": "smoker",
      "type": "boolean",
      "text": "Do you currently smoke tobacco?",
      "required": true
    },
    {
      "linkId": "cigarettes-per-day",
      "type": "integer",
      "text": "How many cigarettes do you smoke per day?",
      "required": true,
      "enableWhen": [
        {
          "question": "smoker",
          "operator": "=",
          "answerBoolean": true
        }
      ],
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger": 1
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger": 100
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-keyboardtype",
          "valueString": "numberPad"
        }
      ]
    },
    {
      "linkId": "quit-attempts",
      "type": "integer",
      "text": "How many times have you tried to quit smoking?",
      "required": false,
      "enableWhen": [
        {
          "question": "smoker",
          "operator": "=",
          "answerBoolean": true
        }
      ],
      "extension": [
        {
          "url": "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger": 0
        },
        {
          "url": "http://bdh.stanford.edu/fhir/StructureDefinition/ios-keyboardtype",
          "valueString": "numberPad"
        }
      ]
    },
    {
      "linkId": "exercise-frequency",
      "type": "choice",
      "text": "How often do you exercise?",
      "required": true,
      "answerOption": [
        {
          "valueString": "Never"
        },
        {
          "valueString": "Rarely (1-2 times per month)"
        },
        {
          "valueString": "Sometimes (1-2 times per week)"
        },
        {
          "valueString": "Often (3-4 times per week)"
        },
        {
          "valueString": "Very often (5+ times per week)"
        }
      ]
    }
  ]
}
```

### Slider Input Example

Questionnaire with slider controls for rating scales:

```json
{
  "resourceType": "Questionnaire",
  "id": "slider-example",
  "meta": {
    "profile": ["http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire"]
  },
  "language": "en-US",
  "status": "active",
  "subjectType": ["Patient"],
  "name": "SliderExample",
  "title": "Pain and Satisfaction Assessment",
  "publisher": "Stanford Spezi",
  "description": "Assessment using slider controls for precise ratings",
  "item": [
    {
      "linkId": "pain-level",
      "type": "integer",
      "text": "On a scale of 0-10, how would you rate your current pain level?",
      "required": true,
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
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger": 0
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger": 10
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
          "valueInteger": 1
        }
      ]
    },
    {
      "linkId": "satisfaction",
      "type": "decimal",
      "text": "How satisfied are you with your current treatment?",
      "required": true,
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
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDecimal": 0.0
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDecimal": 10.0
        },
        {
          "url": "http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue",
          "valueDecimal": 0.5
        }
      ]
    }
  ]
}
```

## QuestionnaireResponse Examples

### Contact Form Response

Response to the contact information form:

```json
{
  "resourceType": "QuestionnaireResponse",
  "id": "contact-form-response",
  "questionnaire": "Questionnaire/contact-form-example",
  "status": "completed",
  "subject": {
    "reference": "Patient/example-patient"
  },
  "authored": "2024-01-15T14:30:00Z",
  "author": {
    "reference": "Patient/example-patient"
  },
  "item": [
    {
      "linkId": "name",
      "answer": [
        {
          "valueString": "John Smith"
        }
      ]
    },
    {
      "linkId": "email",
      "answer": [
        {
          "valueString": "john.smith@example.com"
        }
      ]
    },
    {
      "linkId": "phone",
      "answer": [
        {
          "valueString": "+1-555-123-4567"
        }
      ]
    },
    {
      "linkId": "age",
      "answer": [
        {
          "valueInteger": 35
        }
      ]
    }
  ]
}
```

### PHQ-9 Response with Scoring

PHQ-9 response demonstrating ordinal scoring:

```json
{
  "resourceType": "QuestionnaireResponse",
  "id": "phq9-response-example",
  "questionnaire": "Questionnaire/phq9-complete-example",
  "status": "completed",
  "subject": {
    "reference": "Patient/example-patient"
  },
  "authored": "2024-01-15T14:30:00Z",
  "author": {
    "reference": "Patient/example-patient"
  },
  "item": [
    {
      "linkId": "phq9-1",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA6569-3",
            "display": "Several days"
          },
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
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA6570-1",
            "display": "More than half the days"
          },
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
      "linkId": "phq9-3",
      "answer": [
        {
          "valueCoding": {
            "system": "http://loinc.org",
            "code": "LA6568-5",
            "display": "Not at all"
          },
          "extension": [
            {
              "url": "http://hl7.org/fhir/StructureDefinition/ordinalValue",
              "valueDecimal": 0
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

These examples demonstrate real-world usage patterns found in ResearchKitOnFHIR applications, including mobile-optimized input controls, validation patterns, and iOS-specific extensions for enhanced user experience.