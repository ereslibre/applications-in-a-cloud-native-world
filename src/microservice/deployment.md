# Deployment

Deployment strategies for microservices can be similar to deploying
monoliths, [described in a previous section](./../monolith/deployment.md).

However, when managing a constellation of microservices things get
trickier, and this is where an orchestrator comes handy.

In some instances, companies have used their own tooling to deploy and
orchestrate microservice deployment, [even without
containers](https://thenewstack.io/how-weatherbug-uses-microservices-without-containers/).

It has also been typical to see using containers, but in a raw way,
with some *Infrastucture as Code* (IAC) or *Configuration as Code*
(CAC) tooling like *Ansible*, *Chef* or *Puppet* handling the `docker`
CLI directly for managing the microservices lifecycle.

Whatever floats your boat, there is no silver bullet here, but
replicating this tooling again and again for different applications is
costly and error-prone. Orchestrators can greatly help in making this
user experience uniform across different environments and
infrastructure; also, and as we'll discover later they can greatly
respond to external change, trying to ensure that our constraints are
always met, when possible.

This was the spirit in which *Kubernetes* was conceived, and this is
why for the remaining on this book we will deploy our microservices on
top of an orchestrator. *Kubernetes* in our case.
