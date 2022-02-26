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
      ..id = '${categoryName.replaceAll(" ", "-").toLowerCase()}-container'
      ..children.addAll([
        HeadingElement.h4()..text = categoryName,
        DivElement()
          ..className = 'mat-list'
          ..children.addAll([
            for (MapEntry mat in mats.entries)
              matMaker(name: mat.key, number: mat.value)
          ])
      ]);
  }

  DivElement matMaker({required String name, required int number}) {
    String _name = name.replaceAll(' ', '').toLowerCase();

    return DivElement()
      ..className = 'material'
      ..id = '$_name-container'
      ..onMouseOver.listen((event) {
        var div = querySelector('#$_name-container') as DivElement;
        if (div.children.length <= 2) {
          div.append(DivElement()..text = 'hai');
        }
      })
      ..onMouseLeave.listen(
        (event) {
          var div = querySelector('#$_name-container') as DivElement;
          div.children.last.remove();
        },
      )
      ..children.addAll([
        CheckboxInputElement()
          ..id = '$_name-check'
          ..className = 'check'
          ..onClick.listen(strikeText),
        LabelElement()
          ..htmlFor = '$_name-check'
          ..className = 'material-text'
          ..id = '$_name-label'
          ..text = '$name: $number',
      ]);
  }

  void strikeText(Event event) {
    var target = event.target as CheckboxInputElement;
    var label =
        querySelector('#${target.id.split("-")[0]}-label') as LabelElement;

    if (target.checked == true && !label.classes.contains('strike-text')) {
      label.classes.add('strike-txt');
    } else {
      label.classes.remove('strike-txt');
    }
  }
}
