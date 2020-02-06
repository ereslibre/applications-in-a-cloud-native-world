# Gitops

As we have seen, our *Continous Integration* pipelines are not the
best place to perform a rollout of our application.

*Gitops* is a term [coined by
WeaveWorks](https://www.weave.works/technologies/gitops/), so let's
see what is their definition:

> GitOps is a way to do Kubernetes cluster management and application
> delivery.  It works by using Git as a single source of truth for
> declarative infrastructure and applications. With Git at the center
> of your delivery pipelines, developers can make pull requests to
> accelerate and simplify application deployments and operations tasks
> to Kubernetes.

Let's list the principles they name:

1. The entire system described declaratively
2. The canonical desired system state versioned in Git
3. Approved changes can be automatically applied to the system
4. Software agents to ensure correctness and alert on divergence

While we are very used to 1-3, 4 is something that sounds new. Let's
see that one more in detail:

> Once the state of your system is declared and kept under version
> control, software agents can inform you whenever reality doesn’t
> match your expectations.  The use of agents also ensures that your
> entire system is self-healing. And by self-healing, we don’t just
> mean when nodes or pods fail—those are handled by Kubernetes—but in
> a broader sense, like in the case of human error.  In this case,
> software agents act as the feedback and control loop for your
> operations.

Now, this is what feels different as a Continuous Delivery
procedure. Let's replicate the workflow they claim:

1. A pull request for a new feature is pushed to GitHub for review.
2. The code is reviewed and approved by a colleague. After the code is
   revised, and re-approved it is merged to Git.
3. The Git merge triggers the CI and build pipeline, runs a series of
   tests and then eventually builds a new image and deposits to the
   new image to a registry.
4. The Weave Cloud ‘Deployment Automator’ watches the image registry,
   notices the image, pulls the new image from the registry and
   updates its YAML in the config repo.
5. The Weave Cloud ‘Deployment Synchronizer’ (installed to the
   cluster), detects that the cluster is out of date. It pulls the
   changed manifests from the config repo and deploys the new feature
   to production.

And an obligatory diagram:

<center>
<table>
<tr>
<td>

![Gitops](https://images.contentstack.io/v3/assets/blt300387d93dabf50e/blt15812c9fe056ba3b/5ce4448f32fd88a3767ee9a3/download)

</td>
</tr>
<tr>
<td>
<center>

[Image credit](https://images.contentstack.io/v3/assets/blt300387d93dabf50e/blt15812c9fe056ba3b/5ce4448f32fd88a3767ee9a3/download)

</center>
</td>
</tr>
</table>
</center>

It's very clear now that we have now a set of explicit components
**driving** the rollout phase. It is the responsibility of this
component to ensure that the deployment is driven to success, and
alert otherwise.

Solutions like [Argo CD](https://argoproj.github.io/argo-cd/) allow
for an implementation of *Continuous Delivery* pipelines as well.
