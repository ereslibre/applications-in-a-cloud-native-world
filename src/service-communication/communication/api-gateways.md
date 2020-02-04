# API Gateways

An API Gateway is a building block in this context. It allows us to
aggregate a number of services, so it's exposed as a single unit to
the outer world.

As you can imagine, there are many functionalities that will be
repeated on every service:

* Authentication
  * Who am I?
* Authorization
  * What can I do?
* Request limits
  * How many requests can I submit?
  * What is my current quota of requests in the current window?
  * I exceeded my quota this window; how long should I wait to retry?
* Circuit breaking
  * Upon failure happening above a given threshold, make sure the
    faulty instance does not receive any more requests, until it's
    safe to restore the circuit

API Gateways allows us to stop repeating ourselves, and let them
manage this logic, so our application don't have to.

Examples of API Gateways are [Kong](https://konghq.com/kong/),
[Ambassador](https://www.getambassador.io/), or [Gloo](https://docs.solo.io/gloo/latest/).
