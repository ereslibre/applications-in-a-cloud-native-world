# Observability

Moving to microservices have some advantages under certain
circumstances. Different teams within an organization are free to
build and run them, owning them from beginning to end.

Observing a monolith and ensuring that it's working as expected is
relatively easy -- as opposed to a constellation of
microservices. With a monolith we have greater control of what is
happening at any given time on the whole system, while losing
development agility; with microservices now the challenge is how to
understand the whole picture, and how a service can affect others when
it's not behaving as expected.

However, while the microservices themselves have a lower complexity
code-wise when looked at them independently, the challenge is now to
**observe** the whole system, and that all components are working as
expected, being able to detect anomalies as fast as possible. We have
many moving targets.

*Observability* usually refers to the combination of the following
practices:

* *Monitoring*: we need to monitor all microservices, ensuring that
  they are running as expected with the resources that they are
  supposed to use. A bad deployed service could be restarting under
  certain code paths, *monitoring* allows us to better understand when
  is this happening.

* *Logging*: since we have now a number of microservices, each one
  logging on its own, we need to perform *logging aggregation*, what
  allows us to send all logs from all services to a central logging
  service, that helps us isolate logs from different services at a
  given time window.

* *Tracing*: now a request on a service can end up spawning a complex
  tree of requests between different services. By *tracing* these
  requests we can better understand what requests led to anothers, and
  what was the relationship between them.

* *Metrics*: a microservice can expose metrics, so an external
  orchestrator is able to know if it needs to scale in or out a given
  microservice based on the demand.

Also, we have to monitor both the infrastructure (the Kubernetes
cluster healthiness), as well as our applications running on top of it.
