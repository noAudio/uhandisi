import 'dart:html';

class TabSwitcherView {
  Element tabSwitcherView() {
    return DivElement()
      ..className = 'tab-switcher'
      ..children = [
        AnchorElement()
          ..href = '#'
          ..classes = ['tab', 'materials-tab']
          ..text = 'Material list'
          ..style.color = 'black'
          ..style.fontWeight = 'bold',
        AnchorElement()
          ..href = '#'
          ..classes = ['tab', 'coriolis-tab']
          ..text = 'Coriolis link'
          ..style.color = 'grey',
      ];
  }
}
