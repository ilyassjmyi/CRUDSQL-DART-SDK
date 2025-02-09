//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class QueryEntityWithRelations {
  /// Returns a new [QueryEntityWithRelations] instance.
  QueryEntityWithRelations({
    this.mainEntity,
    this.relations = const {},
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? mainEntity;

  Map<String, List<Object>> relations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryEntityWithRelations &&
    other.mainEntity == mainEntity &&
    _deepEquality.equals(other.relations, relations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mainEntity == null ? 0 : mainEntity!.hashCode) +
    (relations.hashCode);

  @override
  String toString() => 'QueryEntityWithRelations[mainEntity=$mainEntity, relations=$relations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mainEntity != null) {
      json[r'mainEntity'] = this.mainEntity;
    } else {
      json[r'mainEntity'] = null;
    }
      json[r'relations'] = this.relations;
    return json;
  }

  /// Returns a new [QueryEntityWithRelations] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryEntityWithRelations? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryEntityWithRelations[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryEntityWithRelations[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryEntityWithRelations(
        mainEntity: mapValueOfType<Object>(json, r'mainEntity'),
        relations: json[r'relations'] == null
          ? const {}
            : QueryFilterResponse.mapListFromJson(json[r'relations']),
      );
    }
    return null;
  }

  static List<QueryEntityWithRelations> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryEntityWithRelations>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryEntityWithRelations.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryEntityWithRelations> mapFromJson(dynamic json) {
    final map = <String, QueryEntityWithRelations>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryEntityWithRelations.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryEntityWithRelations-objects as value to a dart map
  static Map<String, List<QueryEntityWithRelations>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryEntityWithRelations>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryEntityWithRelations.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

