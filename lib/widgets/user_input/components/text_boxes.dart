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
    return StoreConnector<AppState, SelectedInput>(
      converter: (store) => store.state.selectedInput,
      builder: (context, selectedInput) {
        bool currentInput = selectedInput == SelectedInput.coriolisLink;

        return currentInput
            ? DynamicTextField(
                length: 1,
                text: 'Enter a coriolis link',
                controller: controller,
              )
            : DynamicTextField(
                length: 5,
                text: 'Enter a list of materials',
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
      decoration: InputDecoration(
        hintText: text,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
