import 'dart:html';

class UserControls {
  bool isSaved = false;

  DivElement userControls() {
    return DivElement()
      ..classes = ['user-controls', 'flex-col']
      ..children = [
        DivElement()
          ..classes = ['save-section', 'flex-col']
          ..children.addAll([
            HeadingElement.h4()..text = 'Save list',
            InputElement()
              ..classes = ['input', 'save-textbox']
              ..placeholder = 'Name',
            !isSaved
                ? (ButtonElement()
                  ..className = 'save-button'
                  ..text = 'Save list')
                : (ParagraphElement()
                  ..className = 'saved-info'
                  ..text = 'Saved!'),
          ]),
        ButtonElement()
          ..className = 'reset-button'
          ..text = 'RESET'
          ..title = 'Click to clear list.',
      ];
  }

  void saveList(Event event) => !isSaved;
}
