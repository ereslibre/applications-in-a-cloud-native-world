# Scalability

## Vertical scaling

*Vertical scaling* refers to the strategy of increasing the resources to a
given machine that is running one or more servers, in order to improve
their scalability.

Vertical scaling has the limit of what the machine can cope with.

## Horizontal scaling

In contrast, *horizontal scaling* means increasing the number of
instances of a given server. This increase of instances can be done in
different ways, e.g:

* Configuring a server to increase the number of threads
  * The application needs to be thread safe
* Increasing the number of processes running a server
  * Might improve throughput under certain conditions, but limits of
    the machine running this server apply
* Creating more instances of this server on different machines

When we refer to horizontal scaling we are usually referring to the
strategy of creating more instances of this server on different
machines.

Horizontal scaling of traditional monolithic applications have a
number of challenges:

* Deployment of a new instance of the server
* Manage the lifecycle of a number of instances of the server in
  different machines
  * Monitoring
    * Operational
    * Rollouts
  * Application rollout rollbacks
* Impact on shared services, since they have now several consumers
  * Databases
  * Key value stores
* Instance specific knowledge
  * Disk caches
  * Assets

Some of the challenges previously outlined might or might not apply,
depending on the design of the application.
