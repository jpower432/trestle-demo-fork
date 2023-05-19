---
x-trestle-comp-def-rules:
  Hello World:
    - name: Test-rule_007
      description: Ensure hello-world disables inactive accounts 6
x-trestle-param-values:
  ps-2_prm_1:
x-trestle-global:
  profile:
    title: FedRAMP Rev 4 Moderate Baseline
    href: profiles/fedramp_rev4_moderate/profile.json
  sort-id: ps-02
---

# ps-2 - \[Personnel Security\] Position Risk Designation

## Control Statement

The organization:

- \[a.\] Assigns a risk designation to all organizational positions;

- \[b.\] Establishes screening criteria for individuals filling those positions; and

- \[c.\] Reviews and updates position risk designations {{ insert: param, ps-2_prm_1 }}.

## Control Objective

Determine if the organization:

- \[PS-2(a)\] assigns a risk designation to all organizational positions;

- \[PS-2(b)\] establishes screening criteria for individuals filling those positions;

- \[PS-2(c)\]

  - \[PS-2(c)[1]\] defines the frequency to review and update position risk designations; and
  - \[PS-2(c)[2]\] reviews and updates position risk designations with the organization-defined frequency.

## Control guidance

Position risk designations reflect Office of Personnel Management policy and guidance. Risk designations can guide and inform the types of authorizations individuals receive when accessing organizational information and information systems. Position screening criteria include explicit information security role appointment requirements (e.g., training, security clearances).

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

<!-- Add control implementation description here for control: ps-2 -->

### Rules:

  - Test-rule_007

### Implementation Status: not-applicable

______________________________________________________________________
