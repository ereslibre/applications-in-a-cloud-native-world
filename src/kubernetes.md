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

Let's get more into the details.
