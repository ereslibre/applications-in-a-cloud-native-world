# Container image registry

Once that all our tests have passed, our *Continuous integration*
pipeline can push a new version of our container image to our
registry. Ideally, these container images should have a univocally
determined tag that can help us understand what exact version of the
container image is running on all our services.

For example, it's not a good practice to once all our tests have
passed, push a container image with a `latest` tag to our registry and
use it on our deployment manifests. We will have poor control over
what exact version of the container image is running at a given time.

We can leverage a hosted third party container image repository, such
as the [Docker Hub](https://hub.docker.com/), or
[quay.io](https://quay.io) -- along with many others, however, for
greater control, it's better if we own our container image registry
(or even several instances, for example for different environments or
groups within our organization).

Several options exist for in-premises container image registry:

* [Docker registry](https://docs.docker.com/registry/)
* [quay](https://github.com/quay/quay)

Ideally, you can even deploy these registries inside your Kubernetes
clusters.
