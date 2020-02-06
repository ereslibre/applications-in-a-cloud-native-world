# CI driven

As we have discussed previously, we have now two levels of composition
when deploying our application:

* A set of container images, representing all our services, that
  ultimately together comprise our application.

* The configuration needed to deploy them inside a Kubernetes cluster.

Both are very tied, and while we are now in a much better position,
being able to replicate all our services along with the configuration,
there is still room for failure.

Our development cycle could involve several steps, let's imagine the
following:

* Build and push a new version of a given service, as a container
  image into our container image registry -- for this to happen, all
  our tests should have passed.

This leaves the open question: who or what updates the deployment
manifests and all the configuration that goes along with it? When is
this done?

We could argue that all changes, both to the service and the
deployment manifests are done together, and so if they passed, it
should be safe to redeploy with the deployment manifests that were
merged.

However, it's not as simple as it looks.

Again, there is friction when it comes to certain deployment objects:

* Secrets that should only be in production, never sitting on a
  developers machine.

* Persistent volumes that access datastores that are only used in
  production, and that the *Continuous Integration* should never have
  access to.

* Access to third party services that require production secrets and
  that we don't want near our *Continuous Integration* pipeline, not
  even pointing to the production endpoints.

And so, we can see that there is still room for differences between
what our CI pipeline has tested, and what will actually run in
production. Again, room for failure.

Also, when we are submitting a change to our application, provided
that deployment manifests are alongside it, what tag should we place
in the manifest, so our latest version of the service is deployed in
the test pipeline? This can be overcomed with CI specific logic, but
is worth noting.

*Continuous Integration* systems are not meant to deploy and observe
the application after it has been deployed, this is why we need
something else to perform *Continuous Delivery* in a safer way.

It is a great tool to perform all kinds of tests on the evolution of
our application, and push some artifacts that can later be used to
perform the real delivery of our application.
