# Service Oriented Architecture


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
