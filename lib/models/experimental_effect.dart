import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:uhandisi/models/material_item.dart';

class ExperimentalEffect {
  String name;
  Set<MaterialItem> materials;
  ExperimentalEffect({
    required this.name,
    required this.materials,
  });

  ExperimentalEffect copyWith({
    String? name,
    Set<MaterialItem>? materials,
  }) {
    return ExperimentalEffect(
      name: name ?? this.name,
      materials: materials ?? this.materials,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'materials': materials.map((x) => x.toMap()).toList(),
    };
  }

  factory ExperimentalEffect.fromMap(Map<String, dynamic> map) {
    return ExperimentalEffect(
      name: map['name'] ?? '',
      materials: Set<MaterialItem>.from(
          map['materials']?.map((x) => MaterialItem.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ExperimentalEffect.fromJson(String source) =>
      ExperimentalEffect.fromMap(json.decode(source));

  @override
  String toString() => 'ExperimentalEffect(name: $name, materials: $materials)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final setEquals = const DeepCollectionEquality().equals;

    return other is ExperimentalEffect &&
        other.name == name &&
        setEquals(other.materials, materials);
  }

  @override
  int get hashCode => name.hashCode ^ materials.hashCode;
}
