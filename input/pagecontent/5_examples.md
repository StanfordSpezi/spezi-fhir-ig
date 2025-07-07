<!--
                  
#
# This source file is part of the Stanford Spezi open source project
#
# SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
# 
             
-->

Examples are given below of commonly used data types in Spezi applications, represented in FHIR.
- Heart Rate

### Heart Rate

```
{
  "code" : {
    "coding" : [
      {
        "code" : "8867-4",
        "display" : "Heart rate",
        "system" : "http://loinc.org"
      }
    ]
  },
  "effectiveDateTime" : "1885-11-11T00:00:00-08:00",
  "identifier" : [
    {
      "id" : "8BA093D9-B99B-4A3C-8C9E-98C86F49F5D8"
    }
  ],
  "issued" : "2023-01-01T00:00:00-08:00",
  "resourceType" : "Observation",
  "status" : "final",
  "valueQuantity" : {
    "code": "/min",
    "unit": "beats/minute",
    "system": "http://unitsofmeasure.org",
    "value" : 42
  }
}
```