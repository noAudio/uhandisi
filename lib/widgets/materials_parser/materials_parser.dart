import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/materials_parser/components/instructions_panel.dart';
import 'package:uhandisi/widgets/materials_parser/components/submit_button.dart';
import 'package:uhandisi/widgets/materials_parser/components/tab_switcher.dart';
import 'package:uhandisi/widgets/materials_parser/components/text_boxes.dart';

class MaterialsParser extends StatelessWidget {
  const MaterialsParser({Key? key, required this.isCoriolis}) : super(key: key);

  final bool isCoriolis;
  final String appInstructions =
      '''Use the tab to switch between link mode and material list mode. In link mode, paste a coriolis link so that the app will generate a list of materials based on your build. In materials list mode, paste in the list of materials to have them sorted.''';

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          width: 320,
        ),
        SizedBox(
          width: 350,
          child: Column(
            children: [
              TabSwitcher(isCoriolis: isCoriolis),
              const SizedBox(height: 5),
              TextBoxes(isCoriolis: isCoriolis),
              const SizedBox(height: 5),
              const SubmitButton(),
            ],
          ),
        ),
        InstructionsPanel(
          instructionsText: appInstructions,
        ),
      ],
    );
  }
}
