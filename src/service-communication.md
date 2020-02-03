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

## Communication

Internal services can communicate with one another. External services
can communicate with internal services, but internal services should
not communicate with external services of the same system.

Any of them can communicate with external systems if desired.

### Protocols

A service can be exposed in a number of ways in order to be
consumed. Let's name a few ways:

| Protocol               | Best suited for | Description                                                         |
|------------------------|-----------------|---------------------------------------------------------------------|
| HTTP                   | External        | An HTTP API that exposes endpoints for interacting with the service |
| GraphQL                | External        | Query language that allows for fine grained retrieval of data       |
| Remote Procedure Calls | Internal        | RPC's are a lightweight way of exposing service endpoints           |

#### HTTP

An HTTP API could be RESTful or not. It exposes a number of API
endpoints that can be consumed with HTTP verbs, usually: `GET`, `HEAD`,
`POST`, `PUT`, `PATCH` and others.

Data on HTTP requests, whether sent or received by a client require
some kind of type negotiation, in which the client encodes the request
using some kind of serializing (e.g. XML, JSON...), and annotates the
request to be sent to the server; along with an expected type in
which the results should come back.

Different HTTP API's will behave different, and each implementation
might have specialties that require attention: e.g. rate limits
reported on response headers, sessions, or token based authentication
(like [JWT](https://jwt.io/)).

#### GraphQL

[GraphQL](https://graphql.org/) is usually served over HTTP, however,
its approach is slightly different to a resource-based
service. GraphQL exposes a single endpoint where it's possible to
query and mutate resources.

GraphQL contains a representation of all the objects it's able to
manage, and thus, it exposes this single endpoint, where clients can
cherry-pick what exact parts of the resources they want back from the
server.

#### Remote Procedure Calls

Remote Procedure Calls (RPC's) are not a new idea. SOAP or XML-RPC are
hardly something new.

However, Remote Procedure Calls in a Cloud Native world are usually
referred by frameworks like [gRPC](https://grpc.io/), or
[Cap'n Proto](https://capnproto.org/).

gRPC is typically used along with [protocol
buffers](https://developers.google.com/protocol-buffers) as the
serializing/deserializing layer.

They allow us to perform very lightweight calls on other services, and
use HTTP/2 under the covers, so they rely on long lived connections
and on request/response multiplexing. This behavior requires
awareness, because load balancing requests is not as trivial as it is
with HTTP/1.1 requests, and usually require some [client-side explicit
balancing](https://grpc.io/blog/loadbalancing/).

In gRPC, a definition is written for a given service, along with the
procedures and types that are exposed and can be consumed, and it is
able to create a stub of both the server and client for any of the
supported languages.

### API Gateways

An API Gateway is a building block in this context. It allows us to
aggregate a number of services, so it's exposed as a single unit to
the outer world.

As you can imagine, there are many functionalities that will be
repeated on every service:

* Authentication
  * Who am I?
* Authorization
  * What can I do?
* Request limits
  * How many requests can I submit?
  * What is my current quota of requests in the current window?
  * I exceeded my quota this window; how long should I wait to retry?
* Circuit breaking
  * Upon failure happening above a given threshold, make sure the
    faulty instance does not receive any more requests, until it's
    safe to restore the circuit

API Gateways allows us to stop repeating ourselves, and let them
manage this logic, so our application don't have to.

Examples of API Gateways are [Kong](https://konghq.com/kong/),
[Ambassador](https://www.getambassador.io/), or [Gloo](https://docs.solo.io/gloo/latest/).

## Traffic

There are different kinds of traffic that we'll refer to later on
during this book.

### Inbound

Inbound traffic is the traffic that comes from outside to the cluster,
towards a service running inside it. This is typically an end-user,
or an external system accessing our external API's.

### Internal

Internal traffic is traffic that is generated inside the cluster, and
whose destination is another service within the cluster. This is
typically a service to service request.

### Outbound

Outbound traffic is traffic originated inside the cluster, whose
destination is somewhere outside the cluster, can be some service of
our infrastructure running outside of the cluster, or a third party
API that we are integrated with.
