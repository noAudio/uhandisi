import 'dart:html';

class TextBoxView {
  TextInputElement coriolisLinkInput(
          String placeholder, List<String> classes) =>
      TextInputElement()
        ..placeholder = placeholder
        ..classes = classes;

  TextAreaElement materialInput(
          String placeholder, List<String> classes, int rows) =>
      TextAreaElement()
        ..placeholder = placeholder
        ..classes = classes
        ..rows = rows;
}
