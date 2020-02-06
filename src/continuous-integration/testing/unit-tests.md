# Unit tests

Unit tests allow us to test very close to the logic of the
application. These tests primary goal is to ensure that the
implementation of our functions and methods work as expected, and they
usually test corner and regular cases.

These tests should be very fast to execute, and they should be
executed very often.

If we are following [Test Driven Development
(TDD)](https://en.wikipedia.org/wiki/Test-driven_development),
best practices recommend:

* Write a unit test
* Run all tests; confirm the test failure
* Implement the code
* Run all tests; confirm the test success
* Refactor the code
* Repeat
