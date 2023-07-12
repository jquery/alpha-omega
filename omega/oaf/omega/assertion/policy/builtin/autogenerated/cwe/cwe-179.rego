package openssf.omega.policy.autogenerated.cwe.cwe_179

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_179
# title: "CWE-179: Incorrect Behavior Order: Early Validation"
# methodology: >
#   The product validates input before applying protection mechanisms that modify the input, which could allow an attacker to bypass the validation via dangerous inputs that only arise after the modification.
# version: 0.1.0
# last_updated:
#   date: 2023-05-25
#   author: Michael Scovetta <michael.scovetta@gmail.com>
# ---

import future.keywords.every
import future.keywords.in

default pass = false
default applies = false

# Identify whether this policy applies to a given data object
applies := true {
    input.predicate.generator.name == "openssf.omega.security_tool_finding"
    input.predicateType == "https://github.com/ossf/alpha-omega/security_tool_finding/0.1.0"
    input.predicate.content.tags
}

pass := true {
    every assertion in input {
        not "cwe-179" in assertion.predicate.content.tags
    }
}