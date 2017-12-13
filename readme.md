# Spring PetClinic Sample Application - [Docker Compose](https://docs.docker.com/compose/overview/) setup

## Understanding the Spring Petclinic application with a few diagrams
<a href="https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application">See the presentation here</a>

## Running petclinic locally - first time
We are using [docker-compose.yml](https://github.com/flypunk/spring-petclinic/blob/master/docker-compose.yml) file to start petclinic in 4 containers:  
2 copies of the app, database and load balancer  
You have to have the latest versions of [docker](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/) and [docker-compose](https://docs.docker.com/compose/install/#install-compose)
```
	git clone git@github.com:flypunk/spring-petclinic.git
	cd spring-petclinic
	sudo ./deploy.sh
```
This will build the docker image and compile the app  
Wait for the logs to stop  
You can then access petclinic here: http://localhost

## Running petclinic after initial install

Start cluster - `sudo docker-compose start`  
Stop cluster - `sudo docker-compose stop`  
Get logs - `sudo docker-compose logs --follow`  

Read docker-compose [documentation](https://docs.docker.com/compose/reference/) for more info and usage examples.

<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">

## In case you find a bug/suggested improvement for Spring Petclinic
Our issue tracker is available here: https://github.com/spring-projects/spring-petclinic/issues


## Database configuration

In this configuration Petclinic uses mysql for data persistensy  
Mysql runs in a docker container and uses `db/sql_data` as its data directory

## Working with Petclinic in Eclipse/STS

### prerequisites
The following items should be installed in your system:
* Maven 3 (http://www.sonatype.com/books/mvnref-book/reference/installation.html)
* git command line tool (https://help.github.com/articles/set-up-git)
* Eclipse with the m2e plugin (m2e is installed by default when using the STS (http://www.springsource.org/sts) distribution of Eclipse)

Note: when m2e is available, there is an m2 icon in Help -> About dialog.
If m2e is not there, just follow the install process here: http://eclipse.org/m2e/download/


### Steps:

1) In the command line
```
git clone https://github.com/spring-projects/spring-petclinic.git
```
2) Inside Eclipse
```
File -> Import -> Maven -> Existing Maven project
```


## Looking for something in particular?

|Spring Boot Configuration | Class or Java property files  |
|--------------------------|---|
|The Main Class | [PetClinicApplication](https://github.com/spring-projects/spring-petclinic/blob/master/src/main/java/org/springframework/samples/petclinic/PetClinicApplication.java) |
|Properties Files | [application.properties](https://github.com/spring-projects/spring-petclinic/blob/master/src/main/resources) |
|Caching | [CacheConfig](https://github.com/spring-projects/spring-petclinic/blob/master/src/main/java/org/springframework/samples/petclinic/system/CacheConfig.java) |

## Interesting Spring Petclinic branches and forks

The Spring Petclinic master branch in the main
[spring-projects](https://github.com/spring-projects/spring-petclinic)
GitHub org is the "canonical" implementation, currently based on
Spring Boot and Thymeleaf. There are quite a few forks in a special
GitHub org [spring-petclinic](https://github.com/spring-petclinic). If
you have a special interest in a different technology stack that could
be used to implement the Pet Clinic then please join the community
there.

| Link                               | Main technologies |
|------------------------------------|-------------------|
| [spring-framework-petclinic][]     | Spring Framework XML configuration, JSP pages, 3 persistence layers: JDBC, JPA and Spring Data JPA |
| [javaconfig branch][]              | Same frameworks as the [spring-framework-petclinic][] but with Java Configuration instead of XML |
| [spring-petclinic-angularjs][]     | AngularJS 1.x, Spring Boot and Spring Data JPA |
| [spring-petclinic-angular][]       | Angular 4 front-end of the Petclinic REST API [spring-petclinic-rest][] |
| [spring-petclinic-microservices][] | Distributed version of Spring Petclinic built with Spring Cloud |
| [spring-petclinic-reactjs][]       | ReactJS (with TypeScript) and Spring Boot |
| [spring-petclinic-graphql][]       | GraphQL version based on React Appolo, TypeScript and GraphQL Spring boot starter |
| [spring-petclinic-kotlin][]        | Kotlin version of [spring-petclinic][] |


## Interaction with other open source projects

One of the best parts about working on the Spring Petclinic application is that we have the opportunity to work in direct contact with many Open Source projects. We found some bugs/suggested improvements on various topics such as Spring, Spring Data, Bean Validation and even Eclipse! In many cases, they've been fixed/implemented in just a few days.
Here is a list of them:

| Name | Issue |
|------|-------|
| Spring JDBC: simplify usage of NamedParameterJdbcTemplate | [SPR-10256](https://jira.springsource.org/browse/SPR-10256) and [SPR-10257](https://jira.springsource.org/browse/SPR-10257) |
| Bean Validation / Hibernate Validator: simplify Maven dependencies and backward compatibility |[HV-790](https://hibernate.atlassian.net/browse/HV-790) and [HV-792](https://hibernate.atlassian.net/browse/HV-792) |
| Spring Data: provide more flexibility when working with JPQL queries | [DATAJPA-292](https://jira.springsource.org/browse/DATAJPA-292) |


# Contributing

The [issue tracker](https://github.com/spring-projects/spring-petclinic/issues) is the preferred channel for bug reports, features requests and submitting pull requests.

For pull requests, editor preferences are available in the [editor config](.editorconfig) for easy use in common text editors. Read more and download plugins at <http://editorconfig.org>. If you have not previously done so, please fill out and submit the https://cla.pivotal.io/sign/spring[Contributor License Agreement].

# License

The Spring PetClinic sample application is released under version 2.0 of the [Apache License](http://www.apache.org/licenses/LICENSE-2.0).

[spring-petclinic]: https://github.com/spring-projects/spring-petclinic
[spring-framework-petclinic]: https://github.com/spring-petclinic/spring-framework-petclinic
[spring-petclinic-angularjs]: https://github.com/spring-petclinic/spring-petclinic-angularjs 
[javaconfig branch]: https://github.com/spring-petclinic/spring-framework-petclinic/tree/javaconfig
[spring-petclinic-angular]: https://github.com/spring-petclinic/spring-petclinic-angular
[spring-petclinic-microservices]: https://github.com/spring-petclinic/spring-petclinic-microservices
[spring-petclinic-reactjs]: https://github.com/spring-petclinic/spring-petclinic-reactjs
[spring-petclinic-graphql]: https://github.com/spring-petclinic/spring-petclinic-graphql
[spring-petclinic-kotlin]: https://github.com/spring-petclinic/spring-petclinic-kotlin
