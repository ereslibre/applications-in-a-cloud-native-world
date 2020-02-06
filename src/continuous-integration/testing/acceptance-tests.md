# Acceptance tests

The main goal of acceptance tests is to ensure that a given system,
with all its components and services running meet whatever constraints
were set. It's a contract.

These tests usually focus on business requirements but their goal is
to determine if an evolution of our application still honors the
contract, and so it can be accepted.

These tests might include very different checks, but to name a few:

* A certain user flow is met as desired.

* The system meets given performance thresholds on the whole system or
  on certain subsytems.

* The system meets certain security requirements.

These are some examples, but anything from a high perspective can be
added to this contract.
