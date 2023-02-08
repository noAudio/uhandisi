import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/index.dart';
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
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (context, state) {
        bool currentInput = state.selectedInput == SelectedInput.coriolisLink;
        int length = currentInput ? 1 : 4;

        return AnimatedSize(
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          child: TextField(
            maxLines: length,
            minLines: length,
            controller: controller,
            autofocus: true,
            textInputAction:
                length > 1 ? TextInputAction.newline : TextInputAction.done,
            decoration: InputDecoration(
              hintText: currentInput
                  ? 'Enter a coriolis shortlink.'
                  : 'Enter a list of materials.',
              errorText:
                  state.validationError == '' ? null : state.validationError,
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
            ),
            onChanged: (value) {
              if (value == '') {
                StoreProvider.of<AppState>(context).dispatch(
                    ValidationErrorInputAction(validationErrorText: ''));
              }
            },
          ),
        );
      },
    );
  }
}
