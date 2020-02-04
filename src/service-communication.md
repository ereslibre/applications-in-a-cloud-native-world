# Service communication

When writing a new service, or when consuming other services, there
are some questions that require an answer:

* Is this service meant to be consumed by external parties?
* How will this service be consumed?
* How do requests get authenticated?
* How do requests get authorized?
* What is the Service Level Agreement (SLA) of this service?
  * Even if internal, SLA might apply across services and teams

There are different types of services in a Service Oriented
Architecture: *internal* and *external*.

## Internal services

Internal services implement a certain business capability, or a part
of it. They are meant to be consumed by other services within the
system.

## External services

External services are meant to be consumed by end users. An example of
these services, are for example public API's used by third parties to
integrate some functionality from our product into their platform.

## Service intra communication

Internal services can communicate with one another. External services
can communicate with internal services, but internal services should
not communicate with external services of the same system.

Any of them can communicate with external systems if desired.
