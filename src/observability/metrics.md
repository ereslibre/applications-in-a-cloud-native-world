# Metrics

## Resource metrics

The resource metrics pipeline allows components like the *Horizontal
Pod Autoscaler* to take decisions on a small set of metrics; these
metrics are collected by an in-memory
[metrics-server](https://github.com/kubernetes-sigs/metrics-server). The
*Kubelets* are the ones providing the information on pod resource
usage, and uses [`cAdvisor`](https://github.com/google/cadvisor) to
collect this information.

## Full metrics
