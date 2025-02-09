//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiFieldSchema {
  /// Returns a new [ApiFieldSchema] instance.
  ApiFieldSchema({
    this.name,
    this.operators = const [],
    this.type,
  });

  /// Name of the field
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// List of supported operators for this field
  List<String> operators;

  /// Type of the field (e.g., string, int)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiFieldSchema &&
    other.name == name &&
    _deepEquality.equals(other.operators, operators) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (operators.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ApiFieldSchema[name=$name, operators=$operators, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'operators'] = this.operators;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ApiFieldSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiFieldSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiFieldSchema[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiFieldSchema[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiFieldSchema(
        name: mapValueOfType<String>(json, r'name'),
        operators: json[r'operators'] is Iterable
            ? (json[r'operators'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ApiFieldSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiFieldSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiFieldSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiFieldSchema> mapFromJson(dynamic json) {
    final map = <String, ApiFieldSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiFieldSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiFieldSchema-objects as value to a dart map
  static Map<String, List<ApiFieldSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiFieldSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiFieldSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

