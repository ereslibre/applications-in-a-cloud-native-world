# Targets

A deployment target can be understood as a machine, or a set of
machines where the application is going to be deployed.

Ultimately, this machine needs to have some component listening for
incoming requests. Generally, a web server is exposed, that will in
turn talk to our application internally, e.g. using a UNIX socket.

However, it's also common to see *Application servers* (like Zend) or
even *Servlet containers* (like Tomcat), that allow you to deploy your
application on a fully fledged web server.
