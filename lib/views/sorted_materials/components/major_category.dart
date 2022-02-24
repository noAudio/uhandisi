import 'dart:html';

import 'package:uhandisi/views/sorted_materials/components/minor_category.dart';

class MajorCategory {
  DivElement majorCategory({
    required String id,
    /*required Map<String, int> materials*/
  }) {
    return DivElement()
      ..className = 'maj-category'
      ..id = id
      ..children.addAll([
        HeadingElement.h3()
          ..className = 'maj-category-title'
          ..text = '${id.toUpperCase()} MATERIALS',
        DivElement()
          ..className = 'sas'
          ..children.add(
              MinorCategory().minorCategory(categoryName: 'MINOR CATEGORY')),
      ]);
  }
}
