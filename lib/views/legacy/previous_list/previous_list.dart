import 'dart:html';

/// This view shows a list of previous sessions that have been cached
class PreviousListView {
  DivElement previousListView({List<Element>? previousLists}) {
    return DivElement()
      ..classes = ['previous-list', 'flex-col']
      ..children.addAll([
        HeadingElement.h4()
          ..text = 'Previous Lists'
          ..className = 'prev-title',
        DivElement()
          ..classes = ['lists-section', 'flex-col']
          ..children.addAll(previousLists ??
              [
                ParagraphElement()
                  ..className = 'lists-info'
                  ..text = 'No lists saved yet.'
                  ..title =
                      'You need to create and save lists for them to appear here.'
              ]),
      ]);
  }
}
