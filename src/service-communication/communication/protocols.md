# Protocols

A service can be exposed in a number of ways in order to be
consumed. Let's name a few ways:

| Protocol               | Best suited for | Description                                                         |
|------------------------|-----------------|---------------------------------------------------------------------|
| HTTP                   | External        | An HTTP API that exposes endpoints for interacting with the service |
| GraphQL                | External        | Query language that allows for fine grained retrieval of data       |
| Remote Procedure Calls | Internal        | RPC's are a lightweight way of exposing service endpoints           |

## HTTP

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

## GraphQL

[GraphQL](https://graphql.org/) is usually served over HTTP, however,
its approach is slightly different to a resource-based
service. GraphQL exposes a single endpoint where it's possible to
query and mutate resources.

GraphQL contains a representation of all the objects it's able to
manage, and thus, it exposes this single endpoint, where clients can
cherry-pick what exact parts of the resources they want back from the
server.

## Remote Procedure Calls

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
