import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/get_user_input_action.dart';
import 'package:uhandisi/models/app_state.dart';

class GenerateMaterialsButton extends StatelessWidget {
  const GenerateMaterialsButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (store) => store.state,
      builder: (context, state) {
        return FilledButton(
          child: const Text('Generate list'),
          onPressed: () {
            StoreProvider.of<AppState>(context)
                .dispatch(GetUserInputAction(input: controller.text));
            controller.clear();
          },
        );
      },
    );
  }
}
