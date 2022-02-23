import 'dart:html';

class UserControls {
  DivElement userControls() {
    return DivElement()
      ..className = 'user-controls'
      ..children = [
        DivElement()
          ..className = 'save-section'
          ..children.addAll([
            HeadingElement.h4()..text = 'Save list',
            InputElement()
              ..className = 'save-textbox'
              ..placeholder = 'Name',
            ButtonElement()
              ..className = 'save-button'
              ..text = 'Save list',
          ]),
        ButtonElement()
          ..className = 'reset-button'
          ..text = 'RESET',
      ];
  }
}
