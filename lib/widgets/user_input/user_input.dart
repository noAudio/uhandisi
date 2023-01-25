import 'package:flutter/material.dart';
import 'package:uhandisi/enums/selected_input.dart';
import 'package:uhandisi/widgets/user_input/components/generate_materials_button.dart';
import 'package:uhandisi/widgets/user_input/components/text_boxes.dart';
import 'package:uhandisi/widgets/user_input/components/user_selection_button.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  final controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        width: 280,
        height: 400,
        child: Column(
          children: [
            Row(
              children: const [
                UserSelectionButton(
                  text: 'Coriolis link',
                  inputType: SelectedInput.coriolisLink,
                ),
                UserSelectionButton(
                  text: 'Materials list',
                  inputType: SelectedInput.materialList,
                ),
              ],
            ),
            TextBoxes(controller: controller),
            const SizedBox(
              height: 5,
            ),
            GenerateMaterialsButton(controller: controller),
          ],
        ),
      ),
    );
  }
}
