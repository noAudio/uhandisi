import 'dart:convert';

class Material {
  String name;
  int amount;

  Material({
    required this.name,
    required this.amount,
  });

  Material copyWith({
    String? name,
    int? amount,
  }) {
    return Material(
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

  factory Material.fromMap(Map<String, dynamic> map) {
    return Material(
      name: map['name'] ?? '',
      amount: map['amount']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Material.fromJson(String source) =>
      Material.fromMap(json.decode(source));

  @override
  String toString() => '$name: $amount';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Material && other.name == name && other.amount == amount;
  }

  @override
  int get hashCode => name.hashCode ^ amount.hashCode;
}
