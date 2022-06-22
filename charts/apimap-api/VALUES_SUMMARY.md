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

#### Nitrite local storage
| Parameter                     | Description                                             | Default     | Required |
|-------------------------------|---------------------------------------------------------|-------------|----------|
| storage.nitrite               | Use internal NoSQL database to provide content storage  |  Object     |          |
| storage.nitrite.mountingPoint | Root folder used to store all NoSQL files               | /var/apimap |          |
| storage.nitrite.enabled       | Enable NITRITE (NoSQL) support                          | true        | Required | 
| storage.nitrite.storageClass  | Storage class to be used for the volume                 | ""          |          |
 
#### MongoDB dedicated storage
| Parameter                      | Description                                                                                                      | Default | Required |
|--------------------------------|------------------------------------------------------------------------------------------------------------------|---------|----------|
| storage.mongodb                | Use an external MongoDB NoSQL database to provide content storrage                                               | Object  |          |
| storage.mongodb.uri            | Connection string that defines the connection (and credentials) to the server                                    | Object  |          |
| storage.mongodb.uri.secretName | Name of the secret that contains the encrypted uri (e.g. mongodb://apimapUser:<password>@localhost:27017/apimap) |         |          |
| storage.mongodb.uri.secretKey  | Name of the key used to specify the uri                                                                          |         |          |
| storage.mongodb.enabled        | Enable MongoDB (NoSQL) support                                                                                   | false   | Required |
| storage.mongodb.databaseName   | Name of the database that should be used                                                                         | apimap  |          |


### Log

**Note:** This also includes statistics and health monitoring.

| Parameter | Description                                 | Default | Required |
|-----------|---------------------------------------------|---------|----------|
| log.level | Log level to be used by the service         | INFO    | Required |
| log.endpoints.statistics.enabled | Enable http(s) request logging to stdout    | false |          |
| log.endpoints.health.enabled | Enable health endpoints at /actuator/health | false |          |



### Exposure

| Parameter                         | Description                          | Default                                   | Required |
| --------------------------------- | ------------------------------------ | ----------------------------------------- | -------- |
| exposure.nodeport.enabled         | Enable the use of nodeport           | false                                     | Required |
| exposure.ingress.enabled          | Enable the use of ingress            | false                                     | Required |
| exposure.ingress.host             | Hostname / domain name that the service should respond to | ""                   | Required | 
