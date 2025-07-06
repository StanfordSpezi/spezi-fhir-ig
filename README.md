# Spezi FHIR Implementation Guide

This repository contains a FHIR Implementation Guide created with [FHIR Shorthand](https://fshschool.org/docs/), [SUSHI](https://github.com/FHIR/sushi), and the [FHIR IG Publisher](https://confluence.hl7.org/display/FHIR/IG+Publisher+Documentation).

## What is a FHIR Implementation Guide?

A FHIR Implementation Guide (IG) is a comprehensive specification document that provides detailed guidance on how to use HL7 FHIR (Fast Healthcare Interoperability Resources) for specific healthcare use cases, domains, or jurisdictions. This implementation guide pertains to the use of FHIR with the [Stanford Spezi](https://spezi.stanford.edu) framework to build digital health applications.

## Development Instructions

### Prerequisites

The following software must be installed prior to building the implementation guide:

- [Node.js](https://nodejs.org/en)
- [Jekyll](https://jekyllrb.com/docs/installation/)
- [Java Development Kit (JDK)](https://www.oracle.com/ae/java/technologies/downloads/)

### Install Dependencies

Clone the repository with `git` and install dependencies using `npm`.

```bash
git clone https://github.com/StanfordSpezi/spezi-fhir-ig.git
cd spezi-fhir-ig
npm install
```

Download the latest version of the FHIR IG Publisher.

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

The `input/fsh` folder contains the Profiles defined in this IG, written in FHIR Shorthand (FSH). The narrative content is found in `input/pagecontent` in Markdown format. Global configuration is done in `sushi-config.yaml` in the root of the directory. 

## Authors

Vishnu Ravi ([@vishnuravi](https://github.com/vishnuravi))

![Spezi Footer](https://raw.githubusercontent.com/StanfordSpezi/.github/main/assets/FooterLight.png#gh-light-mode-only)
![Spezi Footer](https://raw.githubusercontent.com/StanfordSpezi/.github/main/assets/FooterDark.png#gh-dark-mode-only)