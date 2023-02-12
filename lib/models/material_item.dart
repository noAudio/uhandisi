import 'dart:convert';

class MaterialItem {
  String name;
  int amount;
  int? grade;
  String? kind;
  String? section;
  bool isChecked;

  MaterialItem({
    required this.name,
    required this.amount,
    this.grade,
    this.kind,
    this.section,
    this.isChecked = false,
  });

  MaterialItem copyWith({
    String? name,
    int? amount,
    int? grade,
    String? kind,
    String? section,
    bool? isChecked,
  }) {
    return MaterialItem(
      name: name ?? this.name,
      amount: amount ?? this.amount,
      grade: grade ?? this.grade,
      kind: kind ?? this.kind,
      section: section ?? this.section,
      isChecked: isChecked ?? this.isChecked,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'amount': amount,
      'grade': grade,
      'kind': kind,
      'section': section,
      'isChecked': isChecked,
    };
  }

  factory MaterialItem.fromMap(Map<String, dynamic> map) {
    return MaterialItem(
      name: map['name'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
      grade: map['grade']?.toInt(),
      kind: map['kind'],
      section: map['section'],
      isChecked: map['isChecked'],
    );
  }

  String toJson() => json.encode(toMap());
  String materialText() => '$name: $amount';

  factory MaterialItem.fromJson(String source) =>
      MaterialItem.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MaterialItem(name: $name, amount: $amount, grade: $grade, kind: $kind, section: $section, isChecked: $isChecked)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MaterialItem &&
        other.name == name &&
        other.amount == amount &&
        other.grade == grade &&
        other.kind == kind &&
        other.section == section &&
        other.isChecked == isChecked;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        amount.hashCode ^
        grade.hashCode ^
        kind.hashCode ^
        section.hashCode ^
        isChecked.hashCode;
  }
}
