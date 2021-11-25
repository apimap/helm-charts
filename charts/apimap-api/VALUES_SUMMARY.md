# Apimap.io : API

## Configuration

The following tables list the configurable parameters of the Apimap.io API chart and their default values.

### Metadata

| Parameter                         | Description                          | Default                                   | Required |
| --------------------------------- | ------------------------------------ | ----------------------------------------- | -------- |
| metadata.copyright                | Copyright notice on the content of the catalog | Empty | Required |
| metadata.faq                      | Very short description and URL to the place the organization has stored information about this solution, implementation and usage. | Empty | Required |
| metadata.support                  | Very short description and URL to where support for this solution is to be found. | Empty | Required |

### Openapi

| Parameter                         | Description                          | Default                                   | Required |
| --------------------------------- | ------------------------------------ | ----------------------------------------- | -------- |
| openapi.enabled                   | If enabled a openapi document is available at <base url>/documentation/openapi3 | false | Required |

### Storage

| Parameter                         | Description                          | Default                                   | Required |
| --------------------------------- | ------------------------------------ | ----------------------------------------- | -------- |
| storage.nitrite                   | Use internal NoSQL database to provide content storrage | Object |
| storage.nitrite.mountingPoint     | Root folder used to store all NoSQL files | /var/apimap |
| storage.nitrite.enabled           | Enable NITRITE (NoSQL) support | true | Required |
| storage.nitrite.storageClass      | Storage class to be used for the volume  | "" | 

### Log

| Parameter                         | Description                          | Default                                   | Required |
| --------------------------------- | ------------------------------------ | ----------------------------------------- | -------- |
| log.level                         | Log level to be used by the service  | INFO | Required

### Exposure

| Parameter                         | Description                          | Default                                   | Required |
| --------------------------------- | ------------------------------------ | ----------------------------------------- | -------- |
| exposure.nodeport.enabled         | Enable the use of nodeport           | false                                     | Required |
| exposure.ingress.enabled          | Enable the use of ingress            | false                                     | Required |
| exposure.ingress.host             | Hostname / domain name that the service should respond to | ""                   | Required | 
