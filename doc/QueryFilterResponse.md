# openapi.model.QueryFilterResponse

## Load the model package
```dart
import 'package:openapi/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Object**](.md) | @Description Array of entities matching the filter conditions @Description For relationship queries, includes related entities based on the filter | [optional] 
**page** | **int** | @Description Current page number (1-based indexing) @Description Example: page=2 returns the second page of results | [optional] 
**pageSize** | **int** | @Description Number of items per page (default may vary) @Description Example: page_size=20 returns 20 items per page | [optional] 
**total** | **int** | @Description Total number of records matching the filter conditions @Description Used for calculating pagination metadata | [optional] 
**totalPages** | **int** | @Description Total number of pages based on total records and page size @Description Calculated as ceil(total/page_size) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


