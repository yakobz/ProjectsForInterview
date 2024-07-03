# ProjectsForInterview
That repo contains projects that are used during an interview to test debugging skills

## Debugging Codable
It's [a playground](https://github.com/yakobz/ProjectsForInterview/tree/main/DebuggingCodable.playground) that reads data from [countries.json](https://github.com/yakobz/ProjectsForInterview/blob/main/DebuggingCodable.playground/Resources/countries.json) file and logs it. It has [Country](https://github.com/yakobz/ProjectsForInterview/blob/main/DebuggingCodable.playground/Sources/Country.swift) model that describes a country and [CountryService](https://github.com/yakobz/ProjectsForInterview/blob/main/DebuggingCodable.playground/Sources/CountryService.swift) that has a function to read and decode [countries.json](https://github.com/yakobz/ProjectsForInterview/blob/main/DebuggingCodable.playground/Resources/countries.) file.
By running the playground, the following error is logged:
```
Failed to load countries keyNotFound(CodingKeys(stringValue: "country_name", intValue: nil), Swift.DecodingError.Context(codingPath: [_JSONKey(stringValue: "Index 0", intValue: 0)], debugDescription: "No value associated with key CodingKeys(stringValue: \"country_name\", intValue: nil) (\"country_name\").", underlyingError: nil))
```
The goal is to find the root cause, explain why it fails and fix the issue.
