CodeSystem: IOSKeyboardTypeCodeSystem
Id: ios-keyboard-type-codesystem
Title: "iOS Keyboard Type Code System"
Description: "Code system for iOS keyboard types used in text input fields"
* ^url = "http://spezi.stanford.edu/fhir/CodeSystem/ios-keyboard-type-codesystem"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01"
* ^publisher = "Stanford Spezi"
* ^contact.name = "Stanford Spezi Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "speziteam@stanford.edu"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = true
* ^content = #complete

* #default "Default Keyboard" "Standard iOS keyboard with letters, numbers, and punctuation"
* #asciiCapable "ASCII Capable" "Keyboard that outputs ASCII-capable characters"
* #numbersAndPunctuation "Numbers and Punctuation" "Numbers and punctuation keyboard"
* #URL "URL Keyboard" "Keyboard optimized for URL entry with .com key"
* #numberPad "Number Pad" "Numeric keypad for number entry only"
* #phonePad "Phone Pad" "Phone number keypad with digits and symbols"
* #namePhonePad "Name Phone Pad" "Phone pad with letters for name entry"
* #emailAddress "Email Address" "Keyboard optimized for email address entry"
* #decimalPad "Decimal Pad" "Numeric keypad with decimal point"
* #twitter "Twitter" "Keyboard optimized for Twitter posts with # and @ keys"
* #webSearch "Web Search" "Keyboard optimized for web search"
* #asciiCapableNumberPad "ASCII Capable Number Pad" "Number pad that outputs ASCII-capable characters"

CodeSystem: IOSAutocapitalizationTypeCodeSystem
Id: ios-autocapitalization-type-codesystem
Title: "iOS Autocapitalization Type Code System"
Description: "Code system for iOS autocapitalization types"
* ^url = "http://spezi.stanford.edu/fhir/CodeSystem/ios-autocapitalization-type-codesystem"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01"
* ^publisher = "Stanford Spezi"
* ^contact.name = "Stanford Spezi Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "speziteam@stanford.edu"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = true
* ^content = #complete

* #none "None" "No automatic capitalization"
* #words "Words" "Capitalize the first letter of each word"
* #sentences "Sentences" "Capitalize the first letter of each sentence"
* #allCharacters "All Characters" "Capitalize all characters"

CodeSystem: IOSTextContentTypeCodeSystem
Id: ios-text-content-type-codesystem
Title: "iOS Text Content Type Code System"
Description: "Code system for iOS text content types for enhanced user experience and autofill"
* ^url = "http://spezi.stanford.edu/fhir/CodeSystem/ios-text-content-type-codesystem"
* ^version = "1.0.0"
* ^status = #active
* ^date = "2025-01-01"
* ^publisher = "Stanford Spezi"
* ^contact.name = "Stanford Spezi Team"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "speziteam@stanford.edu"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^caseSensitive = true
* ^content = #complete

* #name "Name" "Person's full name"
* #namePrefix "Name Prefix" "Prefix or title (Mr., Mrs., Dr.)"
* #givenName "Given Name" "First name"
* #middleName "Middle Name" "Middle name"
* #familyName "Family Name" "Last name"
* #nameSuffix "Name Suffix" "Suffix (Jr., Sr., III)"
* #nickname "Nickname" "Nickname"
* #jobTitle "Job Title" "Job title or position"
* #organizationName "Organization Name" "Company or organization name"
* #location "Location" "Generic location"
* #fullStreetAddress "Full Street Address" "Complete street address"
* #streetAddressLine1 "Street Address Line 1" "First line of street address"
* #streetAddressLine2 "Street Address Line 2" "Second line of street address"
* #addressCity "Address City" "City name"
* #addressState "Address State" "State or province"
* #addressCityAndState "Address City and State" "City and state together"
* #sublocality "Sublocality" "Sublocality or district"
* #countryName "Country Name" "Country name"
* #postalCode "Postal Code" "Postal or ZIP code"
* #telephoneNumber "Telephone Number" "Phone number"
* #emailAddress "Email Address" "Email address"
* #URL "URL" "Website URL"
* #creditCardNumber "Credit Card Number" "Credit card number"
* #username "Username" "Account username"
* #password "Password" "Account password"
* #newPassword "New Password" "New password for account creation"
* #oneTimeCode "One Time Code" "One-time authentication code"