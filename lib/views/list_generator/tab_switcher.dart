import 'dart:html';

class TabSwitcherView {
  Element tabSwitcherView() {
    return DivElement()
      ..className = 'tab-switcher'
      ..children = [
        AnchorElement()
          ..href = '#'
          ..className = 'materials-tab'
          ..text = 'Material list',
        AnchorElement()
          ..href = '#'
          ..className = 'coriolis-tab'
          ..text = 'Coriolis link',
      ];
  }
}
