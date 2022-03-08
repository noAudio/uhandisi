import 'dart:convert';

class MaterialItem {
  String name;
  int amount;
  int? grade;
  String? kind;
  String? section;

  MaterialItem({
    required this.name,
    required this.amount,
    this.grade,
    this.kind,
    this.section,
  });

  MaterialItem copyWith({
    String? name,
    int? amount,
    int? grade,
    String? kind,
    String? section,
  }) {
    return MaterialItem(
      name: name ?? this.name,
      amount: amount ?? this.amount,
      grade: grade ?? this.grade,
      kind: kind ?? this.kind,
      section: section ?? this.section,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'amount': amount,
      'grade': grade,
      'kind': kind,
      'section': section,
    };
  }

  factory MaterialItem.fromMap(Map<String, dynamic> map) {
    return MaterialItem(
      name: map['name'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      grade: map['grade']?.toInt(),
      kind: map['kind'],
      section: map['section'],
    );
  }

  String toJson() => json.encode(toMap());
  String materialText() => '$name: $amount';

  factory MaterialItem.fromJson(String source) =>
      MaterialItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MaterialItem(name: $name, amount: $amount, grade: $grade, kind: $kind, section: $section)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MaterialItem &&
        other.name == name &&
        other.amount == amount &&
        other.grade == grade &&
        other.kind == kind &&
        other.section == section;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        amount.hashCode ^
        grade.hashCode ^
        kind.hashCode ^
        section.hashCode;
  }
}
