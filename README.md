Apimap.io API Helm Charts
===

🎉 **Welcome** 🎉

This is the home of the Apimap.io project, a freestanding solution to keep track of all functionality a company
provides through an API. It is a push based system, connected with your build pipeline or manually updated using our CLI.

> **Application programming interface (API)**: Point of functional integration between two or more systems connected
> through commonly known standards

**Why is this project useful?** Lost track of all the API functionality provided inside your organization? Don't want
to be tied to an API proxy or management solution? The Apimap.io project uploads, indexes and enables discoverability of all
your organizations APIs. We care about the source code, removing the limitation of where the API is hosted and how your
network is constructed.


## Table of Contents

* [Project Components](#project-components)
* [Build and Run](#build-and-run)
* [Contributing](#contributing)

I want to know more of the technical details and implementation guides: [DEVELOPER.md](DEVELOPER.md)

## Project Components
___
This is a complete software solution consisting of a collection of freestanding components. Use only the components you
find useful, create the rest to custom fit your organization.

- A **Developer Portal** with wizards and implementation information
- A **Discovery Portal** to display APIs and filter search results
- An **API** to accommodate all the information
- A **Jenkins plugin** to automate information parsing and upload
- A **CLI** to enable manual information uploads

## Build and Run
___

This library contains the rest client that the Jenkins plugin and CLI uses to communicate with the service API. 

#### Build JAR

Based on Java the easiest way to build the artifact is using **build**

> gradlew build

#### Requirements

Java version 8 or newer. 

## Contributing
___

Read [howto contribute](CONTRIBUTING.md) to this project.