---
x-trestle-comp-def-rules:
  Hello World:
    - name: Test-rule_003
      description: Ensure hello-world disables inactive accounts 2
x-trestle-param-values:
  ac-2.2_prm_1:
  ac-2.2_prm_2:
x-trestle-global:
  profile:
    title: FedRAMP Rev 4 Moderate Baseline
    href: profiles/fedramp_rev4_moderate/profile.json
  sort-id: ac-02.02
---

# ac-2.2 - \[Access Control\] Removal of Temporary / Emergency Accounts

## Control Statement

The information system automatically {{ insert: param, ac-2.2_prm_1 }} temporary and emergency accounts after {{ insert: param, ac-2.2_prm_2 }}.

## Control Objective

Determine if:

- \[AC-2(2)[1]\] the organization defines the time period after which the information system automatically removes or disables temporary and emergency accounts; and

- \[AC-2(2)[2]\] the information system automatically removes or disables temporary and emergency accounts after the organization-defined time period for each type of account.

## Control guidance

This control enhancement requires the removal of both temporary and emergency accounts automatically after a predefined period of time has elapsed, rather than at the convenience of the systems administrator.

______________________________________________________________________

## What is the solution and how is it implemented?

<!-- For implementation status enter one of: implemented, partial, planned, alternative, not-applicable -->

<!-- Note that the list of rules under ### Rules: is read-only and changes will not be captured after assembly to JSON -->

<!-- Add control implementation description here for control: ac-2.2 -->

### Rules:

  - Test-rule_003

### Implementation Status: alternative

______________________________________________________________________
