<!--
                  
This source file is part of the Stanford Spezi open source project

SPDX-FileCopyrightText: 2025 Stanford University and the project authors (see CONTRIBUTORS.md)

SPDX-License-Identifier: MIT
             
-->

[![Build and Test](https://github.com/StanfordSpezi/spezi-fhir-ig/actions/workflows/build-and-test.yml/badge.svg)](https://github.com/StanfordSpezi/spezi-fhir-ig/actions/workflows/build-and-test.yml)

# Spezi FHIR Implementation Guide

This repository contains a FHIR Implementation Guide created with [FHIR Shorthand](https://fshschool.org/docs/), [SUSHI](https://github.com/FHIR/sushi), and the [FHIR IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).

## What is a FHIR Implementation Guide?

A FHIR Implementation Guide (IG) is a comprehensive specification document that provides detailed guidance on how to use HL7 FHIR (Fast Healthcare Interoperability Resources) for specific healthcare use cases, domains, or jurisdictions. This implementation guide pertains to the use of FHIR with the [Stanford Spezi](https://spezi.stanford.edu) framework to build digital health applications.

## Development Instructions

### Prerequisites

The following software must be installed prior to building the implementation guide:

- [FSH SUSHI](https://github.com/FHIR/sushi)
- [Jekyll](https://jekyllrb.com/docs/installation/)
- [Java Development Kit (JDK)](https://www.oracle.com/ae/java/technologies/downloads/)

### Install Dependencies

Download and install the latest version of the FHIR IG Publisher.

```bash
chmod +x _updatePublisher.sh
./_updatePublisher.sh
```

### Building and Viewing

Build the Implementation Guide HTML.

```bash
chmod +x _genonce.sh
./_genonce.sh
```

Once the build step completes, the HTML files will be placed in the `output` directory. Open the `index.html` file in a web browser to view the Implementation Guide.

### Editing the Implementation Guide

Global configuration is done using the `sushi-config.yaml` file in the root of the project.

The [input](https://github.com/StanfordSpezi/spezi-fhir-ig/tree/main/input) folder contains the content of the implementation guide. There are two subfolders:
- [`fsh`](https://github.com/StanfordSpezi/spezi-fhir-ig/tree/main/input/fsh) contains definitions for the codesystems, extensions, profiles, and valuesets used in this guide written in [FHIR ShortHand (FSH)](https://build.fhir.org/ig/HL7/fhir-shorthand/).
- [`pagecontent`](https://github.com/StanfordSpezi/spezi-fhir-ig/tree/main/input/pagecontent) contains the narrative content in Markdown format.

## Contributing

Contributions to this project are welcome. A list of contributors can be found in [CONTRIBUTORS.md](CONTRIBUTORS.md) Please make sure to read the [contribution guidelines](https://github.com/StanfordSpezi/.github/blob/main/CONTRIBUTING.md) and the [contributor covenant code of conduct](https://github.com/StanfordSpezi/.github/blob/main/CODE_OF_CONDUCT.md) first.

## License

This project is licensed under the MIT License.

![Spezi Footer](https://raw.githubusercontent.com/StanfordSpezi/.github/main/assets/FooterLight.png#gh-light-mode-only)
![Spezi Footer](https://raw.githubusercontent.com/StanfordSpezi/.github/main/assets/FooterDark.png#gh-dark-mode-only)