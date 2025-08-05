/*
                  
#
# This source file is part of the Stanford Spezi open source project
#
# SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)
#
# SPDX-License-Identifier: MIT
# 
             
*/

// ResearchKitOnFHIR Extension Support
// 
// This file documents the standard HL7 FHIR extensions that are supported
// by the ResearchKitOnFHIR library for enhanced questionnaire functionality.
// 
// NOTE: These are standard HL7 FHIR extensions - they are NOT redefined here,
// but are referenced by URL in the Spezi Questionnaire Profile.
//
// Standard HL7 FHIR Extensions Used by ResearchKitOnFHIR:
//
// UI Control Extensions:
// - http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl
// - http://hl7.org/fhir/StructureDefinition/questionnaire-hidden
// - http://hl7.org/fhir/StructureDefinition/questionnaire-sliderStepValue
//
// Validation Extensions:
// - http://hl7.org/fhir/StructureDefinition/regex
// - http://hl7.org/fhir/StructureDefinition/questionnaire-validationText (if it exists)
//
// Value Constraint Extensions:
// - http://hl7.org/fhir/StructureDefinition/minValue
// - http://hl7.org/fhir/StructureDefinition/maxValue
// - http://hl7.org/fhir/StructureDefinition/minValueDate
// - http://hl7.org/fhir/StructureDefinition/maxValueDate
// - http://hl7.org/fhir/StructureDefinition/maxDecimalPlaces
//
// Presentation Extensions:
// - http://hl7.org/fhir/StructureDefinition/questionnaire-unit
// - http://hl7.org/fhir/StructureDefinition/entryFormat
// - http://hl7.org/fhir/StructureDefinition/ordinalValue
// - http://hl7.org/fhir/StructureDefinition/rendering-styleSensitive
//
// These extensions are properly referenced in the SpeziQuestionnaireProfile
// using their official HL7 FHIR URLs to ensure interoperability.