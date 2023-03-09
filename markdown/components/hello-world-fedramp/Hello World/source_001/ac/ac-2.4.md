---
x-trestle-comp-def-rules:
  Hello World:
    - name: test-rule
      description: This is a rule used for testing compliance workflows
x-trestle-param-values:
  ac-2.4_prm_1:
x-trestle-global:
  profile:
    title: FedRAMP Rev 4 Moderate Baseline
    href: profiles/fedramp_rev4_moderate/profile.json
  sort-id: ac-02.04
---

# ac-2.4 - \[Access Control\] Automated Audit Actions

## Control Statement

The information system automatically audits account creation, modification, enabling, disabling, and removal actions, and notifies organization-defined personnel or roles.

## Control Objective

Determine if:

- \[AC-2(4)[1]\] the information system automatically audits the following account actions:

  - \[AC-2(4)[1][a]\] creation;
  - \[AC-2(4)[1][b]\] modification;
  - \[AC-2(4)[1][c]\] enabling;
  - \[AC-2(4)[1][d]\] disabling;
  - \[AC-2(4)[1][e]\] removal;

- \[AC-2(4)[2]\] the organization defines personnel or roles to be notified of the following account actions:

  - \[AC-2(4)[2][a]\] creation;
  - \[AC-2(4)[2][b]\] modification;
  - \[AC-2(4)[2][c]\] enabling;
  - \[AC-2(4)[2][d]\] disabling;
  - \[AC-2(4)[2][e]\] removal;

- \[AC-2(4)[3]\] the information system notifies organization-defined personnel or roles of the following account actions:

  - \[AC-2(4)[3][a]\] creation;
  - \[AC-2(4)[3][b]\] modification;
  - \[AC-2(4)[3][c]\] enabling;
  - \[AC-2(4)[3][d]\] disabling; and
  - \[AC-2(4)[3][e]\] removal.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

<!-- Add control implementation description here for control: ac-2.4 -->

### Rules:

  - test-rule

### Implementation Status: planned

______________________________________________________________________
