import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/switch_selection_action.dart';
import 'package:uhandisi/enums/selected_input.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/styles/text_styles.dart';

class UserSelectionButton extends StatelessWidget {
  const UserSelectionButton({
    Key? key,
    required this.text,
    required this.inputType,
    required this.controller,
  }) : super(key: key);

  final String text;
  final SelectedInput inputType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SelectedInput>(
      converter: (store) => store.state.selectedInput,
      builder: (context, selectedInput) {
        bool isSelected = inputType == selectedInput;

        return TextButton(
          onPressed: () {
            StoreProvider.of<AppState>(context)
                .dispatch(SwitchSelectionAction(selectedInput: inputType));
            controller.text = '';
          },
          child: Text(
            text,
            style: isSelected
                ? TextStyles.selectionButtonSelected
                : TextStyles.selectionButtonUnselected,
          ),
        );
      },
    );
  }
}
