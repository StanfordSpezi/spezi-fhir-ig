<!--
                  
This source file is part of the Stanford Spezi open source project

SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)

SPDX-License-Identifier: MIT
             
-->

# Spezi FHIR Implementation Guide

[![Build and Deploy](https://github.com/StanfordSpezi/spezi-fhir-ig/actions/workflows/build-and-deploy.yml/badge.svg)](https://github.com/StanfordSpezi/spezi-fhir-ig/actions/workflows/build-and-deploy.yml)

A FHIR Implementation Guide (IG) is a comprehensive specification document that provides detailed guidance on how to use HL7® FHIR® (Fast Healthcare Interoperability Resources) for specific healthcare use cases, domains, or jurisdictions. 

The Spezi FHIR Implementation Guide serves as the authoritative specification for healthcare interoperability patterns, data structures, and integration approaches when building digital health solutions with the Stanford Spezi framework. It provides developers, healthcare organizations, and system integrators with the necessary guidance to ensure consistent, standards-compliant FHIR implementations.

This guide was created using [FHIR Shorthand](https://fshschool.org/docs/), [SUSHI](https://github.com/FHIR/sushi), and the [FHIR IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).

It can be seen live at [https://spezi.health/spezi-fhir-ig](https://spezi.health/spezi-fhir-ig).

## Development Instructions

### Prerequisites

The following software must be installed prior to building the implementation guide:

- [FSH SUSHI](https://github.com/FHIR/sushi)
- [Jekyll](https://jekyllrb.com/docs/installation/)
- [Java Development Kit (JDK)](https://www.oracle.com/ae/java/technologies/downloads/)

### Install Dependencies

Use the included script to download and install the latest version of the [HL7 FHIR IG Publisher](https://github.com/HL7/fhir-ig-publisher).

```bash
chmod +x _updatePublisher.sh
./_updatePublisher.sh
```

> [!NOTE]
> If you are on Windows, you can use `_updatePublisher.bat` instead.

### Building and Viewing

Build the Implementation Guide.

```bash
chmod +x _genonce.sh
./_genonce.sh
```

> [!NOTE]
> If you are on Windows, you can use `_genonce.bat` instead.

Once the build step completes, the HTML files will be placed in the `output` directory. In this folder, open the `index.html` file in a web browser to view the Implementation Guide.

### Editing the Implementation Guide

Global configuration is done using the [`sushi-config.yaml`](https://github.com/StanfordSpezi/spezi-fhir-ig/blob/content/sushi-config.yaml) file in the root of the project.

The [`input`](https://github.com/StanfordSpezi/spezi-fhir-ig/tree/main/input) folder contains the content of the implementation guide. There are two subfolders:
- [`fsh`](https://github.com/StanfordSpezi/spezi-fhir-ig/tree/main/input/fsh) contains definitions for the codesystems, extensions, profiles, and valuesets used in this guide written in [FHIR ShortHand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/).
- [`pagecontent`](https://github.com/StanfordSpezi/spezi-fhir-ig/tree/main/input/pagecontent) contains the narrative content in Markdown format.

## Contributing

Contributions to this project are welcome. A list of contributors can be found in [CONTRIBUTORS.md](CONTRIBUTORS.md). Please make sure to read the [contribution guidelines](https://github.com/StanfordSpezi/.github/blob/main/CONTRIBUTING.md) and the [contributor covenant code of conduct](https://github.com/StanfordSpezi/.github/blob/main/CODE_OF_CONDUCT.md) first.

## License

This project is licensed under the MIT License.

## Notices

FHIR is a registered trademark of Health Level Seven International.

![Spezi Footer](https://raw.githubusercontent.com/StanfordSpezi/.github/main/assets/FooterLight.png#gh-light-mode-only)
![Spezi Footer](https://raw.githubusercontent.com/StanfordSpezi/.github/main/assets/FooterDark.png#gh-dark-mode-only)