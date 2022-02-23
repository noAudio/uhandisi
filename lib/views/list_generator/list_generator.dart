import 'dart:html';

import 'package:uhandisi/views/list_generator/components/instructions.dart';
import 'package:uhandisi/views/list_generator/components/tab_switcher.dart';
import 'package:uhandisi/views/list_generator/components/text_boxes.dart';

class ListGeneratorView {
  final appInstructions = '''
    Use the tab to switch between link mode and material list mode. In link mode, paste a coriolis link so that the app will generate a list of materials based on your build. In materials list mode, paste in the list of materials to have them sorted.
''';
  bool isCoriolis = false;

  DivElement listGeneratorView() {
    return DivElement()
      ..className = 'list-generator'
      ..children = [
        DivElement()
          ..className = 'link-section'
          ..children = [
            TabSwitcherView().tabSwitcherView(),
            isCoriolis
                ? TextBoxView().textBoxView(placeholder: 'Enter coriolis link')
                : TextBoxView().textBoxView(
                    placeholder: 'Enter list of materials i.e Material: Amount',
                    rows: 4),
          ],
        DivElement()
          ..className = 'instructions-section'
          ..children = InstructionsView().instructionsView(
            'Instructions',
            appInstructions,
          ),
      ];
  }

  void switchTabs() => !isCoriolis;
}
