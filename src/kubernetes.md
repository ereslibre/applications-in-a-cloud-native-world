# Kubernetes

Based on the [official Kubernetes website](https://kubernetes.io)
definition:

> Kubernetes (K8s) is an open-source system for automating deployment,
> scaling, and management of containerized applications.

However, I don't think this description honors what Kubernetes really
does best: **reconcile resources**.

Funnily enough, the fact that Kubernetes is able to deploy and manage
conterinerized applications is primarily because of how the
**reconciliation** of resources happen.

## Application and environment

Usually, when we had to deploy an application we had constant friction
between the application developers and the operations teams -- the
ones that will ultimately be putting the application into production
and maintain its day-to-day operation.

Let's take a step back and see what each step on this story brought
us.

### Containerization

By being able to easily create a "snapshot" of our application and all
its dependencies, we were able to greatly reduce the friction between
our application and the system it's running on. As developers, we now
have much greater control on the environment our application is
running on.

Of course, this does not mean that we are the sole responsibles of
this, but now we have more **certainty** of what is the environment
our application runs on.

Still, something is missing: how our application is exposed to the
world. There is still a gap here: we provide the snapshot of our
application, but how it's exposed and operated is not up to us.

### Infrastructure as config

Kubernetes is usually referred to as *Infrastructure as code*, but in
this sense I prefer to call it *Infrastructure as config*. Now, with
Kubernetes, we have the ability to track the way our application is
deployed and managed:

* What versions of every component of our applications are bundled
  together?
* Application secrets
* Configuration
* Storage used by the application
* How the application is exposed
* Security
  * What can this application know about the platform?
  * What permissions have this application when running, at the node level?

In general, we can see that while containerizing made our snapshot of
our application broader, Kubernetes also includes how this application
is operated in its snapshot. We now have a complete, reproducible way
of deploying an exact version of our application, including **how** it
is operated.
