<!--
                  
#
# This source file is part of the Stanford Spezi open source project
#
# SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
# 
             
-->

# Stanford Spezi FHIR Implementation Guide

## Overview

[Stanford Spezi](https://spezi.stanford.edu) is an open-source, modular ecosystem for building standards-based digital health applications on iOS and other platforms. This Implementation Guide provides comprehensive guidance on representing mobile health data using HL7 FHIR resources, enabling seamless integration with healthcare systems and clinical workflows.

## Getting Started

### For App Developers
Start building mobile health applications with standardized data representation:

**→ [Mobile Health Data Implementation](2_mobile_health_data.html)**

**→ [Questionnaires and Surveys Implementation](2_questionnaires.html)**


## Implementation Guide Contents

| Section | Description | Audience |
|---------|-------------|----------|
| [Implementation Overview](2_implementation.html) | High-level architecture and navigation | All users |
| [Mobile Health Data](2_mobile_health_data.html) | HealthKit integration, data transformation, clinical mapping | Developers, Clinical informaticists |
| [Questionnaires](2_questionnaires.html) | FHIR questionnaire creation, ResearchKit integration | Developers, Researchers |
| [Terminology](3_terminology.html) | Code systems, value sets, and standardized vocabularies | Clinical informaticists |
| [FHIR Profiles](4_profiles.html) | Formal resource definitions and constraints | Technical implementers |
| [Examples](5_examples.html) | Complete implementation examples and use cases | All users |

## Use Cases

### Clinical Care
- Remote patient monitoring
- Chronic disease management
- Preventive health screening
- Patient engagement platforms

### Research
- Digital biomarkers collection
- Longitudinal health studies
- Clinical trial data capture
- Population health research

### Healthcare Integration
- EHR data synchronization
- Clinical decision support
- Quality measure reporting
- Population health analytics

## Getting Help

- **GitHub Repository**: [Stanford Spezi on GitHub](https://github.com/StanfordSpezi)
- **Documentation**: [Spezi Documentation](https://spezi.stanford.edu)
- **Community**: Join discussions and get support from the Spezi community

## Publisher

This Implementation Guide is developed and maintained by [Stanford Biodesign Digital Health](https://bdh.stanford.edu) at [Stanford University](https://stanford.edu/). It is written in [FSH](https://fshschool.org/) and built with [SUSHI](https://github.com/FHIR/sushi) and the [IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).

## Licensing

This implementation guide is released under the MIT license. However, it includes examples using terminologies such as SNOMED CT, LOINC, and others that may have more restrictive licensing requirements. Please review the licensing terms for any terminologies used in your implementation.