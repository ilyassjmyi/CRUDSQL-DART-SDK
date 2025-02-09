# openapi
A powerful dynamic CRUD API engine that automatically generates RESTful endpoints for your data models
CrudSQL provides automatic CRUD operations, filtering, pagination, and sorting capabilities for any data model.
Features:
- Automatic REST API generation
- Dynamic model support
- Complex filtering and querying
- Pagination and sorting
- Swagger documentation
- Multiple database support (SQL & NoSQL)

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Generator version: 7.11.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://github.com/mobixdev/crudsql](https://github.com/mobixdev/crudsql)

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  openapi:
    path: /path/to/openapi
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:openapi/api.dart';


final api_instance = DynamicApi();
final model = model_example; // String | Model name
final filter = QueryQueryFilter(); // QueryQueryFilter | Filter conditions
final page = 56; // int | Page number
final pageSize = 56; // int | Items per page
final sort = sort_example; // String | Sort field and direction (e.g., name:asc,age:desc)

try {
    final result = api_instance.modelFilterPost(model, filter, page, pageSize, sort);
    print(result);
} catch (e) {
    print('Exception when calling DynamicApi->modelFilterPost: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to */api*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*DynamicApi* | [**modelFilterPost**](doc//DynamicApi.md#modelfilterpost) | **POST** /{model}/filter | Filter entities
*DynamicApi* | [**modelGet**](doc//DynamicApi.md#modelget) | **GET** /{model} | List and filter entities
*DynamicApi* | [**modelIdDelete**](doc//DynamicApi.md#modeliddelete) | **DELETE** /{model}/{id} | Delete an entity
*DynamicApi* | [**modelIdGet**](doc//DynamicApi.md#modelidget) | **GET** /{model}/{id} | Get an entity by ID
*DynamicApi* | [**modelIdPut**](doc//DynamicApi.md#modelidput) | **PUT** /{model}/{id} | Update an entity
*DynamicApi* | [**modelPost**](doc//DynamicApi.md#modelpost) | **POST** /{model} | Create a new entity
*SchemaApi* | [**modelSchemaGet**](doc//SchemaApi.md#modelschemaget) | **GET** /{model}/schema | Get model schema


## Documentation For Models

 - [ApiErrorResponse](doc//ApiErrorResponse.md)
 - [ApiFieldSchema](doc//ApiFieldSchema.md)
 - [ApiModelSchema](doc//ApiModelSchema.md)
 - [ApiRelationshipSchema](doc//ApiRelationshipSchema.md)
 - [QueryEntityWithRelations](doc//QueryEntityWithRelations.md)
 - [QueryFilterResponse](doc//QueryFilterResponse.md)
 - [QueryQueryFilter](doc//QueryQueryFilter.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### BasicAuth

- **Type**: HTTP Basic authentication

### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header

### BearerAuth

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header


## Author

taqi@mobix.biz

