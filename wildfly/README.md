# WildFly

A minimalistic Docker image for [WildFly](http://wildfly.org/) running on Alpine Linux and OpenJDK JRE 7.

## Building the image

Clone this repository, change into the source directory and run:

```
docker build .
```

## Running WildFly

To start WildFly in standalone mode with ports 8080 and 9990 published do:

```
docker run -ti -p 8080:8080 -p 9990:9990 jamesnetherton/wildfly
```

Or to run a specific WildFly version, add on the appropriate tag:

```
docker run -ti -p 8080:8080 -p 9990:9990 jamesnetherton/wildfly:8.2.0.Final
```

You'll should then be able to hit http://localhost:8080 and view the WildFly welcome page. Similarly you can hit http://localhost:9990 to access the administration console (see notes on configuring admin users below).

## Setting Up Admin Users

To configure admin users you can either:

1. Extend this image and configure users as part of the image build. E.g by adding a `RUN` directive to launch the WildFly [add-user.sh](https://docs.jboss.org/author/display/WFLY8/add-user+utility) script.

2. Use `docker exec` to run add-user.sh.

```
docker exec -ti <container name or id> /opt/wildfly/bin/add-user.sh -u admin -p admin
```

## Deploying Applications

If you have set up an admin user to access the administration console, one option is to use this to deploy applications. Browse to the 'Deployments' tab and click the 'Add' button.

Another method to add custom deployments is to extend this image and add the deployment to your own image by using the `ADD` or `COPY` directives so that deployments are added to `/opt/wildfly/standalone/deployments`.

Alternatively you can make use of the WildFly deployment scanner and mount the `standalone/deployments` directory. Copy your deployments into this directory from the host and they'll be hot deployed.

```
docker run -ti \
           -p 8080:8080 \
           -p 9990:9990 \
           -v /my/deploy/directory/:/opt/wildfly/standalone/deployments/ \
           jamesnetherton/wildfly
```

If that's not enough, check out some [other methods](https://docs.jboss.org/author/display/WFLY8/Application+deployment).
