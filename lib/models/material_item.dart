import 'dart:convert';

class MaterialItem {
  String name;
  int amount;

  MaterialItem({
    required this.name,
    required this.amount,
  });

  MaterialItem copyWith({
    String? name,
    int? amount,
  }) {
    return MaterialItem(
      name: name ?? this.name,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'amount': amount,
    };
  }

  factory MaterialItem.fromMap(Map<String, dynamic> map) {
    return MaterialItem(
      name: map['name'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory MaterialItem.fromJson(String source) =>
      MaterialItem.fromMap(json.decode(source));

  @override
  String toString() => '$name: $amount';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MaterialItem &&
        other.name == name &&
        other.amount == amount;
  }

  @override
  int get hashCode => name.hashCode ^ amount.hashCode;
}
