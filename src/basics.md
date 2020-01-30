# Basics

## Services

A *service* as described by the [Cambridge
Dictionary](https://dictionary.cambridge.org/dictionary/english/service),
by taking one of its meanings:

> *service*: a system or organization that provides something
> important that the public needs.

This meaning is also very accurate for the computing world. Moreover, a
service will not necessarily only be consumed by *people*, but could
also be consumed by other *systems*.

## Servers

A *server*, as described by the [Wikipedia](https://en.wikipedia.org/wiki/Server_(computing)):

> A *server* is a computer program or a device that provides
> functionality for other programs or devices, called "clients".

It goes further, and also expand to reach a *service* definition:

> Servers can provide various functionalities, often called "services", such
> as sharing data or resources among multiple clients, or performing
> computation for a client.

## Processes

A *process*, as described by the [Wikipedia](https://en.wikipedia.org/wiki/Process_(computing)):

> A *process* is the instance of a computer program that is being
> executed by one or many threads. It contains the program code and
> its activity.

This definition is very tied to what we know about Operating Systems,
by referring to the `thread` term, but you get the idea.

## Application

An *application*, again, as described by the [Wikipedia](https://en.wikipedia.org/wiki/Application_software):

> *Application software* [...] is a program or group of programs
> designed for end users.

And [*system software*](https://en.wikipedia.org/wiki/System_software):

> *System software* is software designed to provide a platform for
> other software.

# Common ground

As developers, we create *programs*; they can be either *application
software* or *system software*. These programs serve a purpose,
whether it is for end users directly, or for other *systems* to consume.

*Application software* usually is meant to be consumed directly
by end users, and so, interaction with the system will be UX driven,
no matter what kind of UX (e.g. terminal, graphical...)

*System software*, however, is going to be consumed by other software,
and as such, this creates friction on both systems. We can ask ourselves
some questions at this point:

* How can both evolve and still make sure that they complying with the
  contract they signed?

* What happens to one service if the other is not responsive, and the
  former depends on the latter?

We will explore this and other complexities throughout this book.
