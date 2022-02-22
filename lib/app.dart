import 'dart:html';
import 'package:uhandisi/views/list_generator/list_generator.dart';
import 'package:uhandisi/views/list_generator/tab_switcher.dart';

class App {
  var root = querySelector('#root') as DivElement;
  App() {
    run();
  }

  void run() {
    // root.append(
    //   ListGeneratorView().listGeneratorView(),
    // );
    root.children.addAll([
      DivElement()..classes = ['section', 'left'],
      DivElement()
        ..classes = ['section', 'mid']
        ..children.add(
          ListGeneratorView().listGeneratorView(),
        ),
      DivElement()..classes = ['section', 'left'],
    ]);
  }
}
