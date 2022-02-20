import 'dart:html';

class InstructionsView {
  Element instructionsView(String title, String instructions) => DivElement()
    ..className = 'instructions-section'
    ..children = [
      HeadingElement.h1()
        ..text = title
        ..className = 'instructions-title',
      ParagraphElement()
        ..text = instructions
        ..className = 'instructions-text',
    ];
}
