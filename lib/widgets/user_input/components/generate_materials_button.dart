import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/index.dart';
import 'package:uhandisi/enums/selected_input.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/styles/text_styles.dart';

class GenerateMaterialsButton extends StatelessWidget {
  const GenerateMaterialsButton({
    Key? key,
    required this.controller,
    required this.onSubmit,
    required this.selectedInput,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function() onSubmit;
  final SelectedInput selectedInput;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      style: ButtonStyle(
        fixedSize: MaterialStateProperty.all<Size>(
            Size.fromWidth(TextStyles.inputWidthDesktop)),
      ),
      child: const Text('Generate list'),
      onPressed: () {
        onSubmit();
        // TODO: Add logic to handle user input
        // StoreProvider.of<AppState>(context)
        //     .dispatch(MaterialComputationAction(isComputing: true));
        if (selectedInput == SelectedInput.materialList) {
          StoreProvider.of<AppState>(context).dispatch(SortMaterialsAction());
        }
      },
    );
  }
}
