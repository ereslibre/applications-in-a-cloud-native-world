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

A monolithic application can be broken down in different modules, that
can reside inside of the same binary, or in shared libraries. A
monolithic application can also consume third party shared libraries
by being linked against them. This conforms a pattern on boundary
separation and code reusability.

API and ABI stability in this context is what matters the most for
other modules that are consuming a certain module from third party
libraries. There are many examples of this, but some would be the Qt
Framework, Glib or Gtk.
