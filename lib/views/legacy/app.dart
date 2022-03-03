import 'dart:html';
import 'package:uhandisi/views/legacy/list_generator/list_generator.dart';
import 'package:uhandisi/views/legacy/previous_list/previous_list.dart';
import 'package:uhandisi/views/legacy/sorted_materials/sorted_materials.dart';
import 'package:uhandisi/views/legacy/user_controls/user_controls.dart';

class TApp {
  var root = querySelector('#root') as DivElement;
  TApp() {
    run();
  }

  void run() {
    root.children.addAll([
      DivElement()
        ..classes = ['section', 'left']
        ..append(
          UserControls().userControls(),
        ),
      DivElement()
        ..classes = ['section', 'mid']
        ..children.addAll([
          ListGeneratorView().listGeneratorView(),
          SortedMaterials().sortedMaterials(),
        ]),
      DivElement()
        ..classes = ['section', 'right']
        ..append(
          PreviousListView().previousListView(),
        ),
    ]);
  }
}
