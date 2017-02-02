# nla
Might need the following to fire it off

```sh
./mvnw clean org.mortbay.jetty:jetty-maven-plugin:run
```
(Maven in my environment had a problem resolving the jetty:: prefix.)

If the war file is giving you grief, standalone deployment should just be a matter of removing the `<scope>provided<scope>` element in `pom.xml`.

..
