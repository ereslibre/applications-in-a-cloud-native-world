# Continuous integration

Continuous integration, as defined by
[ThoughtWorks](https://www.thoughtworks.com/continuous-integration):

> Continuous Integration (CI) is a development practice that requires
> developers to integrate code into a shared repository several times
> a day. Each check-in is then verified by an automated build,
> allowing teams to detect problems early.
>
> By integrating regularly, you can detect errors quickly, and locate
> them more easily.

The idea behind continuous integration is to have better certainties
when it comes to deploying an evolution of an application.

By having this constant feedback with small code iterations, we can
be more certain if:

* A proposed change to the codebase is breaking a certain existing
  functionality.

* A proposed change to the codebase is not fullfilling a certain new
  functionality.

* A proposed change to the codebase is not including bug regressions.

* A combination of changes to the codebase is breaking existing or new
  functionality, when both in isolation looked fine.

* A third party change in our dependencies is breaking existing
  functionality.


In general, it's a safety net before we deploy our application, so we
can have a higher level of certainty that based on the different tests
we provided, all of them are reporting success. Of course, there is
always a huge negative space -- functionalities and regressions not
covered by our tests, but anyhow we are in a much better position than
if our negative space was the whole space.
