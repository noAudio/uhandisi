import 'dart:html';

class TextBoxView {
  Element textBoxView(String placeholder, int? rows) {
    if (rows != null) {
      return TextAreaElement()
        ..placeholder = placeholder
        ..className = ''
        ..rows = rows;
    } else {
      return TextInputElement()
        ..placeholder = placeholder
        ..className = '';
    }
  }
}
