# Narrow integration tests

*Narrow integration tests*, as described by [Martin
Fowler](https://martinfowler.com/bliki/IntegrationTest.html):

* Exercise only that portion of the code in my service that talks to a
  separate service

* Uses test doubles of those services, either in process or remote

* Thus consist of many narrowly scoped tests, often no larger in scope
  than a unit test (and usually run with the same test framework
  that's used for unit tests)

By the nature of using test doubles, these tests should be in the
orders of unit tests to set up.
