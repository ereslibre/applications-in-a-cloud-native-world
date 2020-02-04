# Traits

A *monolithic application* has a number of traits:

* Contains the whole or a big amount of business logic
* Accesses persistency services
  * Databases
  * Caches
  * Assets

In general terms, a *monolith* could be internally structured in a
number of modules, which encapsulates code and data that implement a particular
functionality.

For the purpose of further analysis, let's assume that a *monolith*
has all the business logic and data access logic combined in one. This
doesn't mean that the *monolithic application* includes the
persistency services, but that it merely consumes them.
