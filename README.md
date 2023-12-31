# yascribe-jcl-demo

A Java demo project of test automation with [yascribe](https://yascribe.com/).

This project use the [yascribe Java client](https://yascribe.com/index.php/java-client/) to remotely run test scenarios on [yascribe](https://yascribe.com/) servers.

## Prerequisites 

Java 17 or higher is required.

## Setup

The dependency to `com.yascribe:yascribe-java-client` is declared in the pom.xml file :

```xml
<dependency>
    <groupId>com.yascribe</groupId>
    <artifactId>yascribe-java-client</artifactId>
    <version>1.0.1</version>
    <scope>test</scope>
</dependency>
```

Maven plugins [Surefire](https://maven.apache.org/surefire/maven-surefire-plugin/) and [Failsafe](https://maven.apache.org/surefire/maven-failsafe-plugin/)
are also declared : 

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-surefire-plugin</artifactId>
    <version>3.1.2</version>
    <configuration>
        <includes>
            <include>ScribeStarter.java</include>
        </includes>
    </configuration>
</plugin>
```

```xml
<plugin>
    <groupId>org.apache.maven.plugins</groupId>
    <artifactId>maven-failsafe-plugin</artifactId>
    <version>3.1.2</version>
    <executions>
        <execution>
            <goals>
                <goal>integration-test</goal>
                <goal>verify</goal>
            </goals>
            <configuration>
                <includes>
                    <include>ScribeStarter.java</include>
                </includes>
            </configuration>
        </execution>
    </executions>
</plugin>
```

## Test environment configuration

The `yascribe.config.properties` file is configured to use the [yascribe](https://yascribe.com/) evaluation server.

The scenario folder is set to `./yascribe/scribes`.

```properties
## Scribe server configuration
# the server name
com.yascribe.server.name=eval.yascribe.com
# the server port
com.yascribe.server.port=9090

## Project configuration
# Project directory
com.yascribe.project.dir=./
# Scribe directory
com.yascribe.project.scribeDir=yascribe/scribes
# Report directory
com.yascribe.project.reportDir=yascribe/reports

## Test configuration
# Browser name : Chrome, Firefox, Edge. Use a ',' as separator if testing on multiple browsers : "Chrome,Firefox".
com.yascribe.browser.name=Chrome
# Browser width
com.yascribe.browser.width=1280
# Browser height
com.yascribe.browser.height=1080
# Browser language : if empty or not specified then the default language is used
com.yascribe.browser.language=en
# Taking a screenshot on test failure : true or false
com.yascribe.screenshotOnFailure=false
```

**When `com.yascribe.screenshotOnFailure` is set to `true` the report files may be large.**

## Scenarios

Scenarios are saved in `./yascribe/scribes` by categories `actions`, `assertions`, `elements` and `self-learning`.

To run all scenarios, annotate the class `ScribeStarter` with `@ScribeTest` (without any argument).

To run some specific scenarios, specify them as arguments of `@ScribeTest`, for example : 
`@ScribeTest(files = {"self-learning/demo-self-learning.feature", "elements/demo-group.feature"})`

For further information, please read the documentation on [yascribe site](https://yascribe.com/index.php/documentation/).