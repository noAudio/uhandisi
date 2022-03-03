import 'dart:html';

class InstructionsView {
  List<Element> instructionsView(String title, String instructions) => [
        HeadingElement.h2()
          ..text = title
          ..className = 'instructions-title',
        ParagraphElement()
          ..text = instructions
          ..className = 'instructions-text',
      ];
}
