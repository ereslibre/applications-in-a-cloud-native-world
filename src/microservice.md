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
