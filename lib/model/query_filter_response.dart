//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryFilterResponse {
  /// Returns a new [QueryFilterResponse] instance.
  QueryFilterResponse({
    this.data,
    this.page,
    this.pageSize,
    this.total,
    this.totalPages,
  });

  /// @Description Array of entities matching the filter conditions @Description For relationship queries, includes related entities based on the filter
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? data;

  /// @Description Current page number (1-based indexing) @Description Example: page=2 returns the second page of results
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  /// @Description Number of items per page (default may vary) @Description Example: page_size=20 returns 20 items per page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageSize;

  /// @Description Total number of records matching the filter conditions @Description Used for calculating pagination metadata
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// @Description Total number of pages based on total records and page size @Description Calculated as ceil(total/page_size)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryFilterResponse &&
    other.data == data &&
    other.page == page &&
    other.pageSize == pageSize &&
    other.total == total &&
    other.totalPages == totalPages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (pageSize == null ? 0 : pageSize!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (totalPages == null ? 0 : totalPages!.hashCode);

  @override
  String toString() => 'QueryFilterResponse[data=$data, page=$page, pageSize=$pageSize, total=$total, totalPages=$totalPages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.pageSize != null) {
      json[r'page_size'] = this.pageSize;
    } else {
      json[r'page_size'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.totalPages != null) {
      json[r'total_pages'] = this.totalPages;
    } else {
      json[r'total_pages'] = null;
    }
    return json;
  }

  /// Returns a new [QueryFilterResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryFilterResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryFilterResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryFilterResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryFilterResponse(
        data: mapValueOfType<Object>(json, r'data'),
        page: mapValueOfType<int>(json, r'page'),
        pageSize: mapValueOfType<int>(json, r'page_size'),
        total: mapValueOfType<int>(json, r'total'),
        totalPages: mapValueOfType<int>(json, r'total_pages'),
      );
    }
    return null;
  }

  static List<QueryFilterResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryFilterResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryFilterResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryFilterResponse> mapFromJson(dynamic json) {
    final map = <String, QueryFilterResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryFilterResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryFilterResponse-objects as value to a dart map
  static Map<String, List<QueryFilterResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryFilterResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryFilterResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

