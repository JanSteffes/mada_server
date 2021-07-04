//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Structure {
  /// Returns a new [Structure] instance.
  Structure({
    this.name,
    this.description,
    this.version,
    this.category,
  });

  /// name of this structure
  String name;

  /// (Usage-)description for this structure
  String description;

  /// versioncode of this structure
  String version;

  /// to which category this structure belongs
  String category;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Structure &&
     other.name == name &&
     other.description == description &&
     other.version == version &&
     other.category == category;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (category == null ? 0 : category.hashCode);

  @override
  String toString() => 'Structure[name=$name, description=$description, version=$version, category=$category]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (category != null) {
      json[r'category'] = category;
    }
    return json;
  }

  /// Returns a new [Structure] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Structure fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Structure(
        name: json[r'name'],
        description: json[r'description'],
        version: json[r'version'],
        category: json[r'category'],
    );

  static List<Structure> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Structure>[]
      : json.map((v) => Structure.fromJson(v)).toList(growable: true == growable);

  static Map<String, Structure> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Structure>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Structure.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Structure-objects as value to a dart map
  static Map<String, List<Structure>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Structure>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Structure.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

