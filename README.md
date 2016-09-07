# register_mvc_angular
Spring MVC e AngularJS Exemplo para Wildfly

###### Outros links

[Materializecss](http://materializecss.com/media-css.html).
[WildFly Maven Plugin](https://docs.jboss.org/wildfly/plugins/maven/latest/).
[Another builder pattern for Java](http://blog.crisp.se/2013/10/09/perlundholm/another-builder-pattern-for-java).
[Builder Pattern e Fluent Interfaces](http://luizricardo.org/2013/08/construindo-objetos-de-forma-inteligente-builder-pattern-e-fluent-interfaces/).
[Spring web application on WildFly](http://half-wit4u.blogspot.com.br/2014/05/spring-web-application-on-wildfly.html).


**Colocar o JAR do postgres na pasta `/tmp/postgresql-9.4.1209.jre7.jar` (por exemplo);**

**Com seu servidor de aplicação iniciado, iremos entrar no `jboss-cli` (Command Line Interface);**

**Execute o comando `connect`, para entrar no servidor;**

**Executar comando abaixo:**

`module add --name=org.postgresql --slot=main --resources=/tmp/postgresql-9.4.1209.jre7.jar --dependencies=javax.api,javax.transaction.api`

**Depois, comando para instalar o driver:**

`/subsystem=datasources/jdbc-driver=postgres:add(driver-name="postgres",driver-module-name="org.postgresql",driver-xa-datasource-class-name=org.postgresql.xa.PGXADataSource)`

> Após isso, o datasource pode ser adicionado pelo console do wildfly.
