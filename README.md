![log4j1-ntdll](https://github.com/garydgregory/log4j1-ntdll/raw/master/src/site/resources/images/logo-text.png "log4j1-ntdll")

This project publishes and maintains the Apache 
[Log4j 1.2](https://logging.apache.org/log4j/1.2/) 
Windows 
[NTEventLogAppender](https://logging.apache.org/log4j/1.2/apidocs/org/apache/log4j/nt/NTEventLogAppender.html) 
code and DLL.

While the Log4j 1 branch has reached 
[end-of-life](https://blogs.apache.org/foundation/entry/apache_logging_services_project_announces), 
this project seeks to  maintain the `NTEventLogAppender` code and DLL until the 
transition to Log4j 2 is complete for the projects I work on.

In addition, the Log4j 1 project never published the DLL files to Maven Central. 
This project publishes the `NTEventLogAppender` DLLs to Maven Central under the
`com.garygregory.log4j1` group ID.

The project provides the following files:

* `NTEventLogAppender.amd64_x86.dll`
* `NTEventLogAppender.amd64.dll`
* `NTEventLogAppender.x86_amd64.dll`
* `NTEventLogAppender.x86.dll`

## Integrating a DLL into your application
By default build tools like Apache Maven include the artifact version into the
file name it downloads. Log4j 1 on the other hand, MUST not have the version in 
the file name. You Maven build must handle this discrepancy.

If you use Apache Ivy, you have control over file names and can skip using the 
version in the file name Ivy creates. 

## NTEventLogAppender.amd64_x86.dll

```xml
<dependency>
  <groupId>com.garygregory.log4j1</groupId>
  <artifactId>NTEventLogAppender.amd64_x86</artifactId>
  <version>1.0</version>
  <type>dll</type>
</dependency>
```

## NTEventLogAppender.amd64.dll

```xml
<dependency>
  <groupId>com.garygregory.log4j1</groupId>
  <artifactId>NTEventLogAppender.amd64</artifactId>
  <version>1.0</version>
  <type>dll</type>
</dependency>
```

## NTEventLogAppender.x86_amd64.dll

```xml
<dependency>
  <groupId>com.garygregory.log4j1</groupId>
  <artifactId>NTEventLogAppender.x86_amd64</artifactId>
  <version>1.0</version>
  <type>dll</type>
</dependency>
```

## NTEventLogAppender.x86.dll

```xml
<dependency>
  <groupId>com.garygregory.log4j1</groupId>
  <artifactId>NTEventLogAppender.x86</artifactId>
  <version>1.0</version>
  <type>dll</type>
</dependency>
```

## Release History

* 2016-10-16 Version 1.0.
 
## Building DLLs
The current build uses Microsoft tools. A patch to build with MinGW would be appreciated.

The `msbuild-all` script builds the DLLs.

To install files you've built locally, run `install-all`.

## Deploying a snapshot

Run `deploy-all-snapshots`.

## Releasing

* Edit version.txt 
* Run `ms-build-all`
* Run `deploy-all-staging`
* Verify what is on Nexus
* Release from Nexus

