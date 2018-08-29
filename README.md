## CVE-2018-11776 Playground 

This repository contains everything you need to explore CVE-2018-11776 (Apache struts namespace injection vulnerability).

The playground consists of a docker container running tomcat, and vulnerable struts applications using many, many versions of struts.

The playground allows you to stand up a vulnerable struts application at an arbitrary version of struts in a single command. This is useful for testing exploits.

## Requirements

Docker.  That's it.

## Build

docker build -t struts.vuln .

## Run

./docker.sh VERSION

Example:

```
./docker.sh 2.5.15
a0f9d0e04727e88d
172.17.0.2
```
A vulnerable struts application using struts 2.5.15 is now accessible at http://172.17.0.2:8080/anything/help

## List versions

ls webapps/

## Vuln application

A vulnerable version of the showcase application will be available at $CONTAINER_IP:8080/$ANYTHIBGATALL/help
(redirected action without an explicit namespace)

