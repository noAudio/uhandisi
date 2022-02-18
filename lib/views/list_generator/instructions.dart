import 'dart:html';

class InstructionsView {
  Element instructionsView(
          List<String> instructionsClasses,
          String title,
          List<String> titleClasses,
          String instructions,
          List<String> instructionsTextClasses) =>
      DivElement()
        ..classes = instructionsClasses
        ..children = [
          HeadingElement.h1()
            ..text = title
            ..classes = titleClasses,
          ParagraphElement()
            ..text = instructions
            ..classes = instructionsTextClasses,
        ];
}
