import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/index.dart';
import 'package:uhandisi/enums/selected_input.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/models/coriolis.dart';
import 'package:uhandisi/styles/text_styles.dart';
import 'package:uhandisi/widgets/user_input/components/generate_materials_button.dart';
import 'package:uhandisi/widgets/user_input/components/text_boxes.dart';
import 'package:uhandisi/widgets/user_input/components/user_selection_button.dart';

class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (context, state) {
        String validateInput(String input) {
          // TODO: User input validation logic
          RegExp linkRegex =
              RegExp(r'^(https:\/\/)?s\.orbis\.zone\/[a-zA-Z0-9]{4}$');
          RegExp materialsRegex = RegExp(r'^[a-zA-Z\s]+[a-zA-Z]+: \d+$');
          if (state.selectedInput == SelectedInput.coriolisLink) {
            if (!linkRegex.hasMatch(input)) {
              return 'Enter a valid coriolis shortlink i.e. "s.orbis.zone/..."';
            } else {
              return '';
            }
          } else if (state.selectedInput == SelectedInput.materialList) {
            List<String> materials = input.split('\n');
            List<String> invalidInputs = [];

            for (int i = 0; i < materials.length; i++) {
              if (!materialsRegex.hasMatch(materials[i])) {
                invalidInputs.add(materials[i]);
              }
            }
            if (invalidInputs.isNotEmpty) {
              String invalidInputsAsStrings = invalidInputs.reduce(
                  (value, element) =>
                      '$value${element != "\n" ? ", \n$element" : ""}');
              return 'The item${invalidInputs.length > 1 ? "s" : ""} \n$invalidInputsAsStrings \ndo${invalidInputs.length > 1 ? "" : "es"} not follow the format "Material: Amount"!';
            } else {
              return '';
            }
          } else {
            return '';
          }
        }

        void onSubmit() {
          String inputValue = _controller.value.text;
          String validationError = validateInput(inputValue);

          if (validationError == '') {
            //Dispatch the input value to state, check if its a link or material list.
            if (state.selectedInput == SelectedInput.coriolisLink) {
              StoreProvider.of<AppState>(context).dispatch(
                  AddCoriolisLinkAction(
                      coriolisLink: Coriolis(link: inputValue)));
            } else {
              StoreProvider.of<AppState>(context)
                  .dispatch(AddUserMaterialsAction(userMaterials: inputValue));
            }
          } else {
            StoreProvider.of<AppState>(context).dispatch(
                ValidationErrorInputAction(
                    validationErrorText: validationError));
          }
        }

        return Padding(
          padding: const EdgeInsets.all(12.0),
          child: SizedBox(
            width: TextStyles.inputWidthDesktop,
            height: 400,
            child: Column(
              children: [
                Row(
                  children: [
                    UserSelectionButton(
                      text: 'Coriolis link',
                      inputType: SelectedInput.coriolisLink,
                      controller: _controller,
                    ),
                    UserSelectionButton(
                      text: 'Materials list',
                      inputType: SelectedInput.materialList,
                      controller: _controller,
                    ),
                  ],
                ),
                TextBoxes(
                  controller: _controller,
                  // onChanged: onSubmit,
                ),
                const SizedBox(
                  height: 5,
                ),
                GenerateMaterialsButton(
                  controller: _controller,
                  onSubmit: onSubmit,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
