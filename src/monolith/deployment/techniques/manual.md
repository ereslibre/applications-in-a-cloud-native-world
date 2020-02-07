# Manual

A deployment could mean "upload through FTP" the new version of the
website. It could also mean, "perform a git pull" on the production
server, or some other similar way of deploying a new version of our
application.

Needless to say this was tricky, for several reasons:

* How does the system behave when in the middle of a deployment?
  * Can a request fail because it hit a codepath when the latest
    version of the application wasn't fully deployed?
* If a certain logical change requires a database migration, or
  persistency migration
  * How is it performed?
  * Is it safe to re run this migration, if run by mistake?
  * Does it require service downtime until the migration is done?
* How to check whether the newly deployed version of the application
  is performing normally?
  * What will signal us if the deployment is failing?
  * Will we notice before all our users notice?
* If proven problematic, how to rollback the deployment?
  * If database migration, or persistency migration was required, how
    to rollback this as well?
* How fast can we react upon these events, without committing more
  mistakes along the way?

Tools like [Capistrano](https://capistranorb.com/) have emerged in
order to perform a set of commands on different machines.
