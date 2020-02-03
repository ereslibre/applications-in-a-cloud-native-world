# Microservice

Let's write what *microservices* means according to the [Wikipedia](https://en.wikipedia.org/wiki/Microservices),
once again:

> Microservices are a software development technique [...] that arranges
> an application as a collection of loosely coupled services. In a
> microservices architecture, services are fine-grained and the
> protocols are lightweight.

Let's take a step back and introduce the notion of *component*, on
[Martin Fowler](https://martinfowler.com/articles/microservices.html)'s
words:

> Our definition is that a *component* is a unit of software that is
> independently replaceable and upgradeable.

And he continues:

> Microservice architectures will use libraries, but their primary way
> of componentizing their own software is by breaking down into
> services. We define libraries as components that are linked into a
> program and called using in-memory function calls, while services
> are out-of-process components who communicate with a mechanism such
> as a web service request, or remote procedure call.
>
> One main reason for using services as components (rather than
> libraries) is that services are independently deployable.
>
> [...]

While there is no "official" definition of a microservice, we can
settle upon certain characteristics:

* It has its own lifecycle
* Consumed over a well defined API
* It can be independently scaled as required
* Simple enough to be easily understood
* Has its isolated and own persistence, if any; it will never access other
  microservice persistence
* Communicates with other services using their exposed API's in order
  to cross boundaries

As a result of this, and given that every component (service) in the
system exposes its functionality through a well defined (and hopefully
documented) API, then, every microservice:

* Can be implemented in the most appropriate language and framework
  for the work
* Can have its own internal rules; e.g. one core microservice might be
  formally verified in isolation
* Can evolve at its own pace, as long as the exposed API's honor the
  contract that its consumers expect

## Service Oriented Architecture

As we have defined a *microservice*, now we have one building block
for a *Service Oriented Architecture* (or *SOA*). Note that a *SOA*
does not *imply* microservices. A *SOA* merely means, according to
[Wikipedia](https://en.wikipedia.org/wiki/Service-oriented_architecture):

> *Service-oriented architecture* (SOA) is a style of software design
> where services are provided to the other components by application
> components, through a communication protocol over a network. An SOA
> service is a discrete unit of functionality that can be accessed
> remotely and acted upon and updated independently, such as
> retrieving a credit card statement online. SOA is also intended to
> be independent of vendors, products and technologies.

And so, the core of a *SOA* is the loose coupling of the different
services that conform a given system. According to the [SOA manifesto](http://www.soa-manifesto.org/),
we can point some traits of Service Oriented Architectures:

* **Business value** over technical strategy
* **Strategic goals** over project-specific benefits
* **Intrinsic interoperability** over custom integration
* **Shared services** over specific-purpose implementations
* **Flexibility** over optimization
* **Evolutionary refinement** over pursuit of initial perfection

However, a *SOA* in itself does not recommend any specific split of
services, neither it includes microservices as part of its
definition.

We can say then, that *microservices* are a possible implementation of
a *SOA*, just like *Event driven architectures* are another way of
implementing them.

## Cloud Native

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
  * Cloud Native applications expose health check endpoints, so an
    external orchestrator is able to restart the service if it's not
    running as expected.
* Liveness checks
  * Cloud Native applications expose liveness check endpoints, so an
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
* Ephemeral
  * A Cloud Native application instance has present that is ephemeral,
    and so, it can be instantiated at any time, or destroyed at any
    time by an external orchestrator.

## Scalability

### Vertical scaling

Vertical scaling doesn't have any meaningul differences from the
description provided in the [Monolith section](monolith.md#vertical-scaling).

### Horizontal scaling

Due to the traits we have discussed in the [Cloud Native
section](#cloud-native), horizontally scaling microservices should be
an easy operation to perform, potentially automated by an external
orchestrator, such as Kubernetes.

## Boundaries

Boundaries in microservices, as [Martin
Fowler](https://martinfowler.com/articles/microservices.html)
describes, are organized around business capabilities:

> The microservice approach to division is different, splitting up
> into services organized around business capability.
>
> Such services take a broad-stack implementation of software for that
> business area, including user-interface, persistant storage, and any
> external collaborations. Consequently the teams are
> cross-functional, including the full range of skills required for
> the development: user-experience, database, and project management.

<center>
<table>
<tr>
<td>

![Microservices](https://martinfowler.com/articles/microservices/images/PreferFunctionalStaffOrganization.png)

</td>
</tr>
<tr>
<td>
<center>

[Image credit](https://martinfowler.com/articles/microservices/images/PreferFunctionalStaffOrganization.png)

</center>
</td>
</tr>
</table>
</center>

Given a small set of microservices, everyone on the team managing
those microservices is closer to the whole functionality a service
provides, and become a cross functional team; because they are able to
understand the whole service from end to end.

And ultimately, how both look, when put side by side:

<center>
<table>
<tr>
<td>

![Decentralized data](https://martinfowler.com/articles/microservices/images/decentralised-data.png)

</td>
</tr>
<tr>
<td>
<center>

[Image credit](https://martinfowler.com/articles/microservices/images/decentralised-data.png)

</center>
</td>
</tr>
</table>
</center>

On the previous diagram is clear how in general terms, a monolith uses
a single database, whereas a set of microservices use their own
storage, reponsibility of different teams, and how a microservice can
at any moment in time be formed by one or more instances, depending on
the load, and on the decisions taken by the administrators and/or the
orchestrator.
