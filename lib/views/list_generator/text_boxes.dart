import 'dart:html';

class TextBoxView {
  final ButtonElement submitButton = ButtonElement()
    ..text = 'Generate list'
    ..className = 'btn'
    ..onClick.listen((event) {});

  DivElement textBoxView(String placeholder, [int? rows]) {
    if (rows != null) {
      return DivElement()
        ..className = 'textbox-section'
        ..children = [
          TextAreaElement()
            ..placeholder = placeholder
            ..className = 'input textarea'
            ..rows = rows,
          submitButton,
        ];
    } else {
      return DivElement()
        ..className = 'textbox-section'
        ..children = [
          TextInputElement()
            ..placeholder = placeholder
            ..className = 'input textbox',
          submitButton,
        ];
    }
  }
}
