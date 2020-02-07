# Scalability

## Vertical scaling

Vertical scaling doesn't have any meaningul differences from the
description provided in the [Monolith section](./../monolith/scalability.md#vertical-scaling).

## Horizontal scaling

Horizontally scaling microservices should be an easy operation to
perform, potentially automated by an external orchestrator, such as
Kubernetes.

One of the driving principles for microservices apart from loosely
coupled services is to be able to adapt and react to change faster,
horizontally scaling a given service in a fast way is crucial for our
microservice architecture to be flexible so it can properly absorb
traffic spikes.
