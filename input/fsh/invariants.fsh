Invariant: vs-1
Description: "Datetime must be at least to day"
Severity: #error
Expression: "($this as dateTime).hasValue() implies ($this as dateTime).toString().length() >= 8"

Invariant: vs-2
Description: "If there is no component or hasMember element then either a value[x] or a data absent reason must be present."
Severity: #error
Expression: "(component.empty() and hasMember.empty()) implies (dataAbsentReason.exists() or value.exists())"
XPath: "f:component or f:memberOF or f:*[starts-with(local-name(.), 'value')] or f:dataAbsentReason"

Invariant: vs-3
Description: "If there is no a value a data absent reason must be present"
Severity: #error
Expression: "value.exists() or dataAbsentReason.exists()"
XPath: "f:*[starts-with(local-name(.), 'value')] or f:dataAbsentReason"

Invariant: dsg-1
Description: "If present, dosage must include free text or structured data"
Severity: #error
Expression: "text.exists() or doseAndRate.exists()"