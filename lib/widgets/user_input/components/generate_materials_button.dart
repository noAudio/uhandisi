import 'package:flutter/material.dart';
import 'package:uhandisi/styles/text_styles.dart';

class GenerateMaterialsButton extends StatelessWidget {
  const GenerateMaterialsButton({
    Key? key,
    required this.controller,
    required this.onSubmit,
  }) : super(key: key);

  final TextEditingController controller;
  final void Function() onSubmit;

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
      },
    );
  }
}
