package openssf.omega.policy.autogenerated.cwe.cwe_612

# Metadata (YAML)
# ---
# name: autogenerated.cwe.cwe_612
# title: "CWE-612: Improper Authorization of Index Containing Sensitive Information"
# methodology: >
#   The product creates a search index of private or sensitive documents, but it does not properly limit index access to actors who are authorized to see the original information.
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
        not "cwe-612" in assertion.predicate.content.tags
    }
}