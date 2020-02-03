# Monolith

Enter the *monolith*. Let's have some fun by reading [one of the
Cambridge's dictionary definitions](https://dictionary.cambridge.org/dictionary/english/service):

> *monolith*: a large block of stone standing by itself that was put up by people in ancient times.

First things first: a monolith does not intrinsically signal a bad
design. As we will learn throughout the book, a monolith could be a
perfectly sane solution for many projects and teams. Moreover, it can
even be the best solution given a certain set of constraints.

Let's get to a more focused definition of a *monolithic application*
as defined by the [Wikipedia](https://en.wikipedia.org/wiki/Monolithic_application):

> a *monolithic application* describes a single-tiered software
> application in which the user interface and data access code are
> combined into a single program from a single platform.

However, when transposing this definition to client-side
architectures, we could argue that the fact that the backend is a
single-tiered application is in itself a *monolith*, even if the user
interface is not strictly provided by the backend.

## Traits

A *monolithic application* has a number of traits:

* Contains the whole or a big amount of business logic
* Accesses persistency services
  * Databases
  * Caches
  * Assets

In general terms, a *monolith* could be internally structured in a
number of modules, which encapsulates code and data that implement a particular
functionality.

For the purpose of further analysis, let's assume that a *monolith*
has all the business logic and data access logic combined in one. This
doesn't mean that the *monolithic application* includes the
persistency services, but that it merely consumes them.

## Scalability

### Vertical scaling

*Vertical scaling* refers to the strategy of increasing the resources to a
given machine that is running one or more servers, in order to improve
their scalability.

Vertical scaling has the limit of what the machine can cope with.

### Horizontal scaling

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

## Boundaries

Boundaries in monolithic applications have been extensively discussed in many
texts. In general, we can observe a vertical alignment in these systems:

<center>
<table>
<tr>
<td>

![Monolith](https://martinfowler.com/articles/microservices/images/conways-law.png)

</td>
</tr>
<tr>
<td>
<center>

[Image credit](https://martinfowler.com/articles/microservices/images/conways-law.png)

</center>
</td>
</tr>
</table>
</center>

Usually, one can observe a modular approach in order to achieve the
implementation detail isolation, where every module will only export
interfaces, meant to be consumed by other modules of the same
system. This is what the contract would be in this case.

API and ABI stability in this context is what matters the most for
other modules that are consuming a certain module. There are many
examples of this, but some would be the Qt Framework, Glib, Gtk, or
any library that we can consume.

Our application can be split in the same way, so different modules
that compose our application talk to one another using these
interfaces. However, this does not necessarily imply that different
modules will use different data or persistency accesses.
