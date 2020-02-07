# Monitoring

Monitoring applies both to the infrastructure and the applications
running on top of it.

Usually, we can leverage the same tools to monitor both levels.

[Prometheus](https://prometheus.io/) and
[Grafana](https://grafana.com/) are the ubiquitous solutions to
provide this desired level of monitoring.

*Prometheus* is a time-series database used to store all the
monitoring information for all our cluster components. It ships with a
powerful query language to retrieve information.

*Grafana* is the dashboard that leverages the *Prometheus* query
language in order to show it in a graphical and more understandable
way. It is highly configurable, so you can organize dashboards at will.

At the infrastructure level, we can find the [*Node problem
detector*](https://kubernetes.io/docs/tasks/debug-application-cluster/monitor-node-health/),
that runs in form of a *DaemonSet*, reporting to the *Node* object in
the API Server node conditions and events.
