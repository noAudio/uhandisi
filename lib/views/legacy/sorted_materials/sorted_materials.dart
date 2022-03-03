import 'dart:html';

import 'package:uhandisi/views/legacy/sorted_materials/components/major_category.dart';

class SortedMaterials {
  bool isEmpty = true;

  DivElement sortedMaterials() {
    return DivElement()
      ..className = 'sorted-section'
      ..append(
        //TODO: Change boolean to true
        !isEmpty
            ? (ParagraphElement()
              ..className = 'sorted-info'
              ..text = 'Please sort some materials above.')
            : (DivElement()
              ..className = 'categories'
              ..children.addAll([
                MajorCategory().majorCategory(id: 'manufactured'),
                MajorCategory().majorCategory(id: 'raw'),
                MajorCategory().majorCategory(id: 'encoded'),
              ])),
      );
  }
}
