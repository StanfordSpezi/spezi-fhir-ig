Extension: KeyboardType
Id: ios-keyboardtype
Title: "iOS Keyboard Type"
Description: "Specifies the iOS keyboard type for optimal text input experience on iOS devices"
* ^url = "http://bdh.stanford.edu/fhir/StructureDefinition/ios-keyboardtype"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01"
* ^publisher = "Stanford Spezi"
* ^contact.name = "Stanford Spezi Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "speziteam@stanford.edu"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* value[x] only string
* valueString from IOSKeyboardTypeValueSet (required)

Extension: AutocapitalizationType
Id: ios-autocapitalizationType
Title: "iOS Autocapitalization Type"
Description: "Specifies the iOS autocapitalization behavior for text input fields"
* ^url = "http://bdh.stanford.edu/fhir/StructureDefinition/ios-autocapitalizationType"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01"
* ^publisher = "Stanford Spezi"
* ^contact.name = "Stanford Spezi Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "speziteam@stanford.edu"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* value[x] only string
* valueString from IOSAutocapitalizationTypeValueSet (required)

Extension: TextContentType
Id: ios-textcontenttype
Title: "iOS Text Content Type"
Description: "Specifies the iOS text content type for enhanced user experience and autofill functionality"
* ^url = "http://bdh.stanford.edu/fhir/StructureDefinition/ios-textcontenttype"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01"
* ^publisher = "Stanford Spezi"
* ^contact.name = "Stanford Spezi Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "speziteam@stanford.edu"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* value[x] only string
* valueString from IOSTextContentTypeValueSet (required)

Extension: ValidationText
Id: validationtext
Title: "Validation Text"
Description: "Custom validation error message displayed to users when input validation fails"
* ^url = "http://bdh.stanford.edu/fhir/StructureDefinition/validationtext"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01"
* ^publisher = "Stanford Spezi"
* ^contact.name = "Stanford Spezi Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "speziteam@stanford.edu"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^context.type = #element
* ^context.expression = "Questionnaire.item"
* value[x] only string