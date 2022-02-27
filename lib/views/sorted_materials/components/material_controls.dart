import 'dart:html';

class MaterialControls {
  DivElement materialControls() {
    return DivElement()
      ..className = 'controls-container'
      ..children = [
        // TODO: Add event listeners
        DivElement()
          ..className = 'controls'
          ..title = 'Decrease by one.'
          ..appendHtml(
              '<span class="material-icons-outlined control-icon">&#xe15b;</span>'),
        DivElement()
          ..className = 'controls'
          ..title = 'Increase by one.'
          ..appendHtml(
              '<span class="material-icons-outlined control-icon">&#xe145;</span>'),
        DivElement()
          ..className = 'controls'
          ..title = 'Remove from list.'
          ..appendHtml(
              '<span class="material-icons-outlined control-icon">&#xe872;</span>')
          ..style.color = 'red',
      ];
  }
}
