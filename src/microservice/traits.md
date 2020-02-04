# Traits

While there is no "official" definition of a microservice, we can
settle upon certain characteristics, based on what was described in
the previous section:

* It has its own lifecycle
* Consumed over a well defined API
* It can be independently scaled as required
* Simple enough to be easily understood
* Has its isolated and own persistence, if any; it will never access other
  microservice persistence
* Communicates with other services using their exposed API's in order
  to cross boundaries

As a result of this, and given that every component (service) in the
system exposes its functionality through a well defined (and hopefully
documented) API, then, every microservice:

* Can be implemented in the most appropriate language and framework
  for the work
* Can have its own internal rules; e.g. one core microservice might be
  formally verified in isolation
* Can evolve at its own pace, as long as the exposed API's honor the
  contract that its consumers expect
