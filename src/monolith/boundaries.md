# Boundaries

Boundaries in monolithic applications have been extensively discussed in many
texts. In general, we can observe a vertical alignment in these systems:

<center>
<table>
<tr>
<td>

![Monolith](https://martinfowler.com/articles/microservices/images/conways-law.png)

</td>
</tr>
<tr>
<td>
<center>

[Image credit](https://martinfowler.com/articles/microservices/images/conways-law.png)

</center>
</td>
</tr>
</table>
</center>

Usually, one can observe a modular approach in order to achieve the
implementation detail isolation, where every module will only export
interfaces, meant to be consumed by other modules of the same
system. This is what the contract would be in this case.

API and ABI stability in this context is what matters the most for
other modules that are consuming a certain module. There are many
examples of this, but some would be the Qt Framework, Glib, Gtk, or
any library that we can consume.

Our application can be split in the same way, so different modules
that compose our application talk to one another using these
interfaces. However, this does not necessarily imply that different
modules will use different data or persistency accesses.
