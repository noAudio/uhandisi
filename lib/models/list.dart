import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

import 'package:uhandisi/models/material_item.dart';

class MaterialList {
  String? title;
  List<MaterialItem> list;
  DateTime date;
  MaterialList({
    this.title,
    required this.list,
    required this.date,
  }) {
    // If no title is given, the current date and time is used instead.
    title ??=
        "${date.day} ${DateFormat('MMM').format(date)} ${date.year} (${date.hour}:${date.minute})";
  }

  MaterialList copyWith({
    String? title,
    List<MaterialItem>? list,
    DateTime? date,
  }) {
    return MaterialList(
      title: title ?? this.title,
      list: list ?? this.list,
      date: date ?? this.date,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'list': list.map((x) => x.toMap()).toList(),
      'date': date.millisecondsSinceEpoch,
    };
  }

  factory MaterialList.fromMap(Map<String, dynamic> map) {
    return MaterialList(
      title: map['title'],
      list: List<MaterialItem>.from(
          map['list']?.map((x) => MaterialItem.fromMap(x))),
      date: DateTime.fromMillisecondsSinceEpoch(map['date']),
    );
  }

  String toJson() => json.encode(toMap());

  factory MaterialList.fromJson(String source) =>
      MaterialList.fromMap(json.decode(source));

  @override
  String toString() => 'MaterialList(title: $title, list: $list, date: $date)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is MaterialList &&
        other.title == title &&
        listEquals(other.list, list) &&
        other.date == date;
  }

  @override
  int get hashCode => title.hashCode ^ list.hashCode ^ date.hashCode;
}
