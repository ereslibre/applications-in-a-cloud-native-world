# Cloud Native

[Cloud Native Computing Foundation (CNCF) Technical
Oversight Commitee (TOC)](https://github.com/cncf/toc/blob/e58a97f253569ee1d79d656baafc685eaceb8786/DEFINITION.md)'s
*Cloud Native* definition is:

> *Cloud native* technologies empower organizations to build and run
> scalable applications in modern, dynamic environments such as
> public, private, and hybrid clouds. Containers, service meshes,
> microservices, immutable infrastructure, and declarative APIs
> exemplify this approach.
>
> These techniques enable loosely coupled systems that are resilient,
> manageable, and observable. Combined with robust automation, they
> allow engineers to make high-impact changes frequently and
> predictably with minimal toil.
>
> [...]

Let's remind what traits are inherited from *microservices*:

* It has its own lifecycle
* Consumed over a well defined API
* It can be independently scaled as required
* Simple enough to be easily understood
* Has its isolated and own persistence, if any; it will never access other
  microservice persistence
* Communicates with other services using their exposed API's in order
  to cross boundaries

and, some of the consequences:

* Can be implemented in the most appropriate language and framework
  for the work
* Can have its own internal rules; e.g. one core microservice might be
  formally verified in isolation
* Can evolve at its own pace, as long as the exposed API's honor the
  contract that its consumers expect

So, aside from this traits inherited from the fact that a Cloud Native
application is implemented as a microservice, what are the unique
traits of Cloud Native applications that not all microservices meet?
Let's go through some:

* Container packaged
  * While this might seem an implementation detail, a Cloud Native
    application comes in the form of a container with all required
    dependencies for that specific microservice to work correctly.
* Dynamically managed
  * Cloud Native applications lifecycle are managed by some external
    orchestrator that is able to schedule, scale, monitor and control
    the execution of the Cloud Native application.
* Failure resiliency
  * Cloud Native applications are built with failure in mind; every
    service that they access to can fail at any time, and it should
    not result in permanent failure.
* Metrics
  * Cloud Native applications expose metrics, so an external
    orchestrator is able to take decisions based on load, like scaling
    the service in an automated way.
* Health checks
  * Liveness probes
    * Cloud Native applications expose health check endpoints, so an
      external orchestrator is able to restart the service if it's not
      running as expected.
  * Readiness or startup probes
    * Cloud Native applications expose readiness check endpoints, so an
      external orchestrator is able to know when to route requests to a
      recently started instance, only when it's ready to process them.
* Logging
  * Cloud Native applications usually log into `stdout` and `stderr`
    streams. Usually, all logs from all applications will be
    aggregated into a unified logging layer. This allows us to improve
    the observability upon a set of microservices at any given time.
* Tracing
  * Cloud Native applications might include tracing
    instrumentation. The concept of *spans* allows us to understand
    what happened across a distributed set of services that spawned
    a tree of requests from the initial request.
* Scalable
  * Cloud Native applications can be scaled in and scaled out as
    required, based on current and expected demand.
* Ephemeral
  * A Cloud Native application instance has present that is ephemeral,
    and so, it can be instantiated at any time, or destroyed at any
    time by an external orchestrator.
