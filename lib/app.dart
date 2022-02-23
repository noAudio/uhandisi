import 'dart:html';
import 'package:uhandisi/views/list_generator/list_generator.dart';
import 'package:uhandisi/views/previous_list/previous_list.dart';

class App {
  var root = querySelector('#root') as DivElement;
  App() {
    run();
  }

  void run() {
    root.children.addAll([
      DivElement()..classes = ['section', 'left'],
      DivElement()
        ..classes = ['section', 'mid']
        ..append(
          ListGeneratorView().listGeneratorView(),
        ),
      DivElement()
        ..classes = ['section', 'right']
        ..append(PreviousListView().previousListView()),
    ]);
  }
}