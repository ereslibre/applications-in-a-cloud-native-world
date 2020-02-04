# Boundaries

Boundaries in microservices, as [Martin
Fowler](https://martinfowler.com/articles/microservices.html)
describes, are organized around business capabilities:

> The microservice approach to division is different, splitting up
> into services organized around business capability.
>
> Such services take a broad-stack implementation of software for that
> business area, including user-interface, persistant storage, and any
> external collaborations. Consequently the teams are
> cross-functional, including the full range of skills required for
> the development: user-experience, database, and project management.

<center>
<table>
<tr>
<td>

![Microservices](https://martinfowler.com/articles/microservices/images/PreferFunctionalStaffOrganization.png)

</td>
</tr>
<tr>
<td>
<center>

[Image credit](https://martinfowler.com/articles/microservices/images/PreferFunctionalStaffOrganization.png)

</center>
</td>
</tr>
</table>
</center>

Given a small set of microservices, everyone on the team managing
those microservices is closer to the whole functionality a service
provides, and become a cross functional team; because they are able to
understand the whole service from end to end.

And ultimately, how both look, when put side by side:

<center>
<table>
<tr>
<td>

![Decentralized data](https://martinfowler.com/articles/microservices/images/decentralised-data.png)

</td>
</tr>
<tr>
<td>
<center>

[Image credit](https://martinfowler.com/articles/microservices/images/decentralised-data.png)

</center>
</td>
</tr>
</table>
</center>

On the previous diagram is clear how in general terms, a monolith uses
a single database, whereas a set of microservices use their own
storage, reponsibility of different teams, and how a microservice can
at any moment in time be formed by one or more instances, depending on
the load, and on the decisions taken by the administrators and/or the
orchestrator.
