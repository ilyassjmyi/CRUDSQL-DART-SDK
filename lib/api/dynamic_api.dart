//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DynamicApi {
  DynamicApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  void listen(
    String model,
    String eventType,
    void Function(String event, String model, dynamic data) callback,
  ) {
    final auth = apiClient.authentication as HttpBearerAuth;
    final authToken = auth.accessToken is String
        ? auth.accessToken
        : (auth.accessToken as HttpBearerAuthProvider)();
    final baseUrl = apiClient.basePath;
    final wsProtocol = baseUrl.startsWith('https') ? 'wss' : 'ws';
    final url =
        '$wsProtocol://${baseUrl.replaceFirst(RegExp(r'^https?://'), '')}/ws/$model/$eventType';

    final channel = IOWebSocketChannel.connect(
      Uri.parse(url),
      headers: {
        'Authorization': 'Bearer $authToken',
      },
    );

    channel.stream.listen(
      (message) {
        final decodedMessage = jsonDecode(message);
        final event = decodedMessage['event'];
        final model = decodedMessage['model'];
        final data = decodedMessage['data'];
        callback(event, model, data);
      },
      onDone: () {
        channel.sink.close(status.goingAway);
      },
      onError: (error) {
        print('WebSocket error: $error');
      },
    );
  }

  /// Delete multiple entities
  ///
  /// Delete multiple entities that match the provided query expression
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [QueryQueryFilter] filter (required):
  ///   Filter conditions
  Future<Response> modelFilterDeleteWithHttpInfo(
    String model,
    QueryQueryFilter filter,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/{model}/filter'.replaceAll('{model}', model);

    // ignore: prefer_final_locals
    Object? postBody = filter;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete multiple entities
  ///
  /// Delete multiple entities that match the provided query expression
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [QueryQueryFilter] filter (required):
  ///   Filter conditions
  Future<Map<String, Object>?> DeleteWhere(
    String model,
    QueryQueryFilter filter,
  ) async {
    final response = await modelFilterDeleteWithHttpInfo(
      model,
      filter,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(
        await apiClient.deserializeAsync(
            await _decodeBodyBytes(response), 'Map<String, Object>'),
      );
    }
    return null;
  }

  /// Update multiple entities
  ///
  /// Update multiple entities that match the provided query expression
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [QueryEntityWithRelations] entity (required):
  ///   Entity Data
  Future<Response> modelFilterPutWithHttpInfo(String model,
      QueryEntityWithRelations entity, QueryQueryFilter filter) async {
    // ignore: prefer_const_declarations
    final path = r'/{model}/filter'.replaceAll('{model}', model);

    // ignore: prefer_final_locals
    Object? postBody = {
      "MainEntity": entity.mainEntity,
      "Relations": entity.relations,
      "Expressions": filter.expressions
    };

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update multiple entities
  ///
  /// Update multiple entities that match the provided query expression
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [QueryEntityWithRelations] entity (required):
  ///   Entity Data
  Future<Map<String, Object>?> UpdateWhere(
    String model,
    QueryEntityWithRelations entity,
    QueryQueryFilter filter,
  ) async {
    final response = await modelFilterPutWithHttpInfo(model, entity, filter);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return Map<String, Object>.from(
        await apiClient.deserializeAsync(
            await _decodeBodyBytes(response), 'Map<String, Object>'),
      );
    }
    return null;
  }

  /// Filter entities
  ///
  /// Filter entities using complex conditions including field expressions, logical operations, and relationship filtering
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model name
  ///
  /// * [QueryQueryFilter] filter (required):
  ///   Filter conditions
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] pageSize:
  ///   Items per page
  ///
  /// * [String] sort:
  ///   Sort field and direction (e.g., name:asc,age:desc)
  Future<Response> modelFilterPostWithHttpInfo(
    String model,
    QueryQueryFilter filter, {
    int? page,
    int? pageSize,
    String? sort,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/{model}/filter'.replaceAll('{model}', model);

    // ignore: prefer_final_locals
    Object? postBody = filter;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Filter entities
  ///
  /// Filter entities using complex conditions including field expressions, logical operations, and relationship filtering
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model name
  ///
  /// * [QueryQueryFilter] filter (required):
  ///   Filter conditions
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] pageSize:
  ///   Items per page
  ///
  /// * [String] sort:
  ///   Sort field and direction (e.g., name:asc,age:desc)
  Future<QueryFilterResponse?> GetWhere(
    String model,
    QueryQueryFilter filter, {
    int? page,
    int? pageSize,
    String? sort,
  }) async {
    final response = await modelFilterPostWithHttpInfo(
      model,
      filter,
      page: page,
      pageSize: pageSize,
      sort: sort,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'QueryFilterResponse',
      ) as QueryFilterResponse;
    }
    return null;
  }

  /// List and filter entities
  ///
  /// Get a list of entities. Use query parameters for simple filtering or POST to /filter for complex conditions
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] pageSize:
  ///   Items per page
  ///
  /// * [String] sort:
  ///   Sort field and direction (e.g., name:asc)
  Future<Response> modelGetWithHttpInfo(
    String model, {
    int? page,
    int? pageSize,
    String? sort,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/{model}'.replaceAll('{model}', model);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (pageSize != null) {
      queryParams.addAll(_queryParams('', 'pageSize', pageSize));
    }
    if (sort != null) {
      queryParams.addAll(_queryParams('', 'sort', sort));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// List and filter entities
  ///
  /// Get a list of entities. Use query parameters for simple filtering or POST to /filter for complex conditions
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [int] page:
  ///   Page number
  ///
  /// * [int] pageSize:
  ///   Items per page
  ///
  /// * [String] sort:
  ///   Sort field and direction (e.g., name:asc)
  Future<QueryFilterResponse?> GetAll(
    String model, {
    int? page,
    int? pageSize,
    String? sort,
  }) async {
    final response = await modelGetWithHttpInfo(
      model,
      page: page,
      pageSize: pageSize,
      sort: sort,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'QueryFilterResponse',
      ) as QueryFilterResponse;
    }
    return null;
  }

  /// Delete an entity
  ///
  /// Delete an entity by its ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [String] id (required):
  ///   Entity ID
  Future<Response> modelIdDeleteWithHttpInfo(
    String model,
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/{model}/{id}'.replaceAll('{model}', model).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete an entity
  ///
  /// Delete an entity by its ID
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [String] id (required):
  ///   Entity ID
  Future<ApiErrorResponse?> DeleteById(
    String model,
    String id,
  ) async {
    final response = await modelIdDeleteWithHttpInfo(
      model,
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'ApiErrorResponse',
      ) as ApiErrorResponse;
    }
    return null;
  }

  /// Get an entity by ID
  ///
  /// Retrieve a single entity by its ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [String] id (required):
  ///   Entity ID
  Future<Response> modelIdGetWithHttpInfo(
    String model,
    String id,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/{model}/{id}'.replaceAll('{model}', model).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get an entity by ID
  ///
  /// Retrieve a single entity by its ID
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [String] id (required):
  ///   Entity ID
  Future<QueryFilterResponse?> GetById(
    String model,
    String id,
  ) async {
    final response = await modelIdGetWithHttpInfo(
      model,
      id,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'QueryFilterResponse',
      ) as QueryFilterResponse;
    }
    return null;
  }

  /// Update an entity
  ///
  /// Update an existing entity by its ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [String] id (required):
  ///   Entity ID
  ///
  /// * [QueryEntityWithRelations] entity (required):
  ///   Entity Data
  Future<Response> modelIdPutWithHttpInfo(
    String model,
    String id,
    QueryEntityWithRelations entity,
  ) async {
    // ignore: prefer_const_declarations
    final path =
        r'/{model}/{id}'.replaceAll('{model}', model).replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = entity;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an entity
  ///
  /// Update an existing entity by its ID
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [String] id (required):
  ///   Entity ID
  ///
  /// * [QueryEntityWithRelations] entity (required):
  ///   Entity Data
  Future<QueryFilterResponse?> UpdateById(
    String model,
    String id,
    QueryEntityWithRelations entity,
  ) async {
    final response = await modelIdPutWithHttpInfo(
      model,
      id,
      entity,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'QueryFilterResponse',
      ) as QueryFilterResponse;
    }
    return null;
  }

  /// Create a new entity
  ///
  /// Create a new entity of the specified model type
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [QueryEntityWithRelations] entity (required):
  ///   Entity Data
  Future<Response> modelPostWithHttpInfo(
    String model,
    QueryEntityWithRelations entity,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/{model}'.replaceAll('{model}', model);

    // ignore: prefer_final_locals
    Object? postBody = entity;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Create a new entity
  ///
  /// Create a new entity of the specified model type
  ///
  /// Parameters:
  ///
  /// * [String] model (required):
  ///   Model Name
  ///
  /// * [QueryEntityWithRelations] entity (required):
  ///   Entity Data
  Future<QueryFilterResponse?> Create(
    String model,
    QueryEntityWithRelations entity,
  ) async {
    final response = await modelPostWithHttpInfo(
      model,
      entity,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'QueryFilterResponse',
      ) as QueryFilterResponse;
    }
    return null;
  }
}
