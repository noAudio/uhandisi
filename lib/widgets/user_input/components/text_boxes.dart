import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/enums/selected_input.dart';
import 'package:uhandisi/models/app_state.dart';

class TextBoxes extends StatelessWidget {
  const TextBoxes({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    String? validateInput(String? input) {
      RegExp regex = RegExp(r'^(https:\/\/)?s\.orbis\.zone\/[a-zA-Z0-9]{4}$');

      if (input != null) {
        if (!regex.hasMatch(input)) {
          return 'Enter a valid coriolis link e.g. "https://s.orbis.zone/lqh4"';
        }
        // TODO: Add regex for list of materials
      }
      return null;
    }

    return StoreConnector<AppState, SelectedInput>(
      converter: (store) => store.state.selectedInput,
      builder: (context, selectedInput) {
        bool currentInput = selectedInput == SelectedInput.coriolisLink;

        return DynamicTextField(
          length: currentInput ? 1 : 4,
          text: currentInput
              ? 'Enter a coriolis shortlink.'
              : 'Enter a list of materials.',
          controller: controller,
        );
      },
    );
  }
}

class DynamicTextField extends StatelessWidget {
  final TextEditingController controller;

  const DynamicTextField({
    Key? key,
    required this.length,
    required this.text,
    required this.controller,
  }) : super(key: key);

  final int length;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: length,
      minLines: length,
      controller: controller,
      autofocus: true,
      textInputAction:
          length > 1 ? TextInputAction.newline : TextInputAction.done,
      decoration: InputDecoration(
        hintText: text,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
