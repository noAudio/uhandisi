import 'dart:convert';

class Coriolis {
  String link;
  Coriolis({
    required this.link,
  });

  Coriolis copyWith({
    String? link,
  }) {
    return Coriolis(
      link: link ?? this.link,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'link': link,
    };
  }

  factory Coriolis.fromMap(Map<String, dynamic> map) {
    return Coriolis(
      link: map['link'] ?? '',
    );
  }

  Uri toUri() => Uri.parse(link);

  String toJson() => json.encode(toMap());

  factory Coriolis.fromJson(String source) =>
      Coriolis.fromMap(json.decode(source));

  @override
  String toString() => 'Coriolis(link: $link)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Coriolis && other.link == link;
  }

  @override
  int get hashCode => link.hashCode;
}
