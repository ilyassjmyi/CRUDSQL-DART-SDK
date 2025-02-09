# openapi.api.SchemaApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api*

Method | HTTP request | Description
------------- | ------------- | -------------
[**modelSchemaGet**](SchemaApi.md#modelschemaget) | **GET** /{model}/schema | Get model schema


# **modelSchemaGet**
> ApiModelSchema modelSchemaGet(model)

Get model schema

Returns the schema information for a specific model including fields and relationships

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SchemaApi();
final model = model_example; // String | Model name

try {
    final result = api_instance.modelSchemaGet(model);
    print(result);
} catch (e) {
    print('Exception when calling SchemaApi->modelSchemaGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **model** | **String**| Model name | 

### Return type

[**ApiModelSchema**](ApiModelSchema.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

