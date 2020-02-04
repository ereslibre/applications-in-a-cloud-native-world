# Traffic

There are different kinds of traffic that we'll refer to later on
throughout this book.

### Inbound (or ingress)

Inbound traffic is the traffic that comes from outside to the cluster,
towards a service running inside it. This is typically an end-user,
or an external system accessing our external API's.

### Internal

Internal traffic is traffic that is generated inside the cluster, and
whose destination is another service within the cluster. This is
typically a service to service request.

### Outbound (or egress)

Outbound traffic is traffic originated inside the cluster, whose
destination is somewhere outside the cluster, can be some service of
our infrastructure running outside of the cluster, or a third party
API that we are integrated with.
