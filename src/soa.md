# Service Oriented Architecture


According to
[Wikipedia](https://en.wikipedia.org/wiki/Service-oriented_architecture),
*Service Oriented Architecture*, or *SOA* definition is:

> *Service-oriented architecture* (SOA) is a style of software design
> where services are provided to the other components by application
> components, through a communication protocol over a network.

And so, the core of a *SOA* is the loose coupling of the different
services that conform a given system. According to the [SOA manifesto](http://www.soa-manifesto.org/),
we can point some traits of Service Oriented Architectures:

* **Business value** over technical strategy
* **Strategic goals** over project-specific benefits
* **Intrinsic interoperability** over custom integration
* **Shared services** over specific-purpose implementations
* **Flexibility** over optimization
* **Evolutionary refinement** over pursuit of initial perfection

This is a different approach as opposed to internally splitting our
application in modules to define boundaries. With a *SOA*, we will
have a set of services that can talk to each other over the network,
and so their API will be some form of HTTP or RPC API.
