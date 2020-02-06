# Broad integration tests

*Broad integration tests*, as described by [Martin
Fowler](https://martinfowler.com/bliki/IntegrationTest.html):

* Require live versions of all services, requiring substantial test
  environment and network access

* Exercise code paths through all services, not just code responsible
  for interactions

While *Broad integration tests* are still focused on the integration
between two components, they require a fair amount of work to set up,
and is at a higher level of complexity than *Narrow integration tests*
in terms of setup, because they require that components really talk to
each other, with the real versions of those services.

Besides that, the scope is bigger than with *Narrow integration
tests*, because *Broad integration tests* do not focus on the parts of
the code that interacts with other services, but more complete code paths.
