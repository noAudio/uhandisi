import 'dart:html';

class MajorCategory {
  DivElement majorCategory({required String id}) {
    return DivElement()
      ..className = 'maj-category'
      ..id = id
      ..children.addAll([
        HeadingElement.h3()
          ..className = 'maj-category-title'
          ..text = '${id.toUpperCase()} MATERIALS',
      ]);
  }
}
