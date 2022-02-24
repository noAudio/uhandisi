import 'dart:html';

class MinorCategory {
  DivElement minorCategory({
    required String categoryName,
    /* required Map<String, int> materials*/
  }) {
    var mats = {
      'Grid Resistors': 20,
      'Modified Embedded Firmware': 20,
      'Precipitated Alloys': 20,
      'Tin': 20,
      'Core Dynamic Composites': 20,
    };
    return DivElement()
      ..className = 'min-category'
      ..id = '${categoryName.replaceAll(' ', '-')}-container'
      ..children.addAll([
        HeadingElement.h4()..text = categoryName,
        DivElement()
          ..className = 'sdd'
          ..children.addAll([
            for (MapEntry mat in mats.entries)
              matMaker(name: mat.key, number: mat.value)
          ])
      ]);
  }

  DivElement matMaker({required String name, required int number}) =>
      DivElement()
        ..className = 'material'
        ..children.addAll([
          CheckboxInputElement()..id = '$name-check',
          LabelElement()
            ..htmlFor = '#$name-check'
            ..className = 'material-text'
            ..text = '$name: $number'
        ]);
}
