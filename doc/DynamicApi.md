# openapi.api.DynamicApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modelFilterPost**](DynamicApi.md#modelfilterpost) | **POST** /{model}/filter | Filter entities
[**modelGet**](DynamicApi.md#modelget) | **GET** /{model} | List and filter entities
[**modelIdDelete**](DynamicApi.md#modeliddelete) | **DELETE** /{model}/{id} | Delete an entity
[**modelIdGet**](DynamicApi.md#modelidget) | **GET** /{model}/{id} | Get an entity by ID
[**modelIdPut**](DynamicApi.md#modelidput) | **PUT** /{model}/{id} | Update an entity
[**modelPost**](DynamicApi.md#modelpost) | **POST** /{model} | Create a new entity


# **modelFilterPost**
> QueryFilterResponse modelFilterPost(model, filter, page, pageSize, sort)

Filter entities

Filter entities using complex conditions including field expressions, logical operations, and relationship filtering

### Example
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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| Model name | 
 **filter** | [**QueryQueryFilter**](QueryQueryFilter.md)| Filter conditions | 
 **page** | **int**| Page number | [optional] [default to 1]
 **pageSize** | **int**| Items per page | [optional] [default to 10]
 **sort** | **String**| Sort field and direction (e.g., name:asc,age:desc) | [optional] 

### Return type

[**QueryFilterResponse**](QueryFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelGet**
> QueryFilterResponse modelGet(model, page, pageSize, sort)

List and filter entities

Get a list of entities. Use query parameters for simple filtering or POST to /filter for complex conditions

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DynamicApi();
final model = model_example; // String | Model Name
final page = 56; // int | Page number
final pageSize = 56; // int | Items per page
final sort = sort_example; // String | Sort field and direction (e.g., name:asc)

try {
    final result = api_instance.modelGet(model, page, pageSize, sort);
    print(result);
} catch (e) {
    print('Exception when calling DynamicApi->modelGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| Model Name | 
 **page** | **int**| Page number | [optional] 
 **pageSize** | **int**| Items per page | [optional] 
 **sort** | **String**| Sort field and direction (e.g., name:asc) | [optional] 

### Return type

[**QueryFilterResponse**](QueryFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelIdDelete**
> ApiErrorResponse modelIdDelete(model, id)

Delete an entity

Delete an entity by its ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DynamicApi();
final model = model_example; // String | Model Name
final id = id_example; // String | Entity ID

try {
    final result = api_instance.modelIdDelete(model, id);
    print(result);
} catch (e) {
    print('Exception when calling DynamicApi->modelIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| Model Name | 
 **id** | **String**| Entity ID | 

### Return type

[**ApiErrorResponse**](ApiErrorResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelIdGet**
> QueryFilterResponse modelIdGet(model, id)

Get an entity by ID

Retrieve a single entity by its ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DynamicApi();
final model = model_example; // String | Model Name
final id = id_example; // String | Entity ID

try {
    final result = api_instance.modelIdGet(model, id);
    print(result);
} catch (e) {
    print('Exception when calling DynamicApi->modelIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| Model Name | 
 **id** | **String**| Entity ID | 

### Return type

[**QueryFilterResponse**](QueryFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelIdPut**
> QueryFilterResponse modelIdPut(model, id, entity)

Update an entity

Update an existing entity by its ID

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DynamicApi();
final model = model_example; // String | Model Name
final id = id_example; // String | Entity ID
final entity = QueryEntityWithRelations(); // QueryEntityWithRelations | Entity Data

try {
    final result = api_instance.modelIdPut(model, id, entity);
    print(result);
} catch (e) {
    print('Exception when calling DynamicApi->modelIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| Model Name | 
 **id** | **String**| Entity ID | 
 **entity** | [**QueryEntityWithRelations**](QueryEntityWithRelations.md)| Entity Data | 

### Return type

[**QueryFilterResponse**](QueryFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modelPost**
> QueryFilterResponse modelPost(model, entity)

Create a new entity

Create a new entity of the specified model type

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DynamicApi();
final model = model_example; // String | Model Name
final entity = QueryEntityWithRelations(); // QueryEntityWithRelations | Entity Data

try {
    final result = api_instance.modelPost(model, entity);
    print(result);
} catch (e) {
    print('Exception when calling DynamicApi->modelPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| Model Name | 
 **entity** | [**QueryEntityWithRelations**](QueryEntityWithRelations.md)| Entity Data | 

### Return type

[**QueryFilterResponse**](QueryFilterResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

