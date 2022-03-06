import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBoxes extends StatelessWidget {
  const TextBoxes({Key? key, required this.isCoriolis}) : super(key: key);
  final bool isCoriolis;

  @override
  Widget build(BuildContext context) {
    return isCoriolis
        ? const CoriolisTextInput(
            placeholder: 'Enter coriolis link',
          )
        : const CoriolisTextInput(
            placeholder: 'Enter list of materials.',
            maximumLines: 5,
            minimumLines: 5,
          );
  }
}

class CoriolisTextInput extends StatelessWidget {
  const CoriolisTextInput({
    Key? key,
    this.minimumLines,
    this.maximumLines,
    required this.placeholder,
  }) : super(key: key);

  final int? minimumLines;
  final int? maximumLines;
  final String placeholder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: minimumLines ?? 1,
      maxLines: maximumLines ?? 1,
      style: GoogleFonts.poppins(),
      decoration: InputDecoration(
        hintText: placeholder,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ),
    );
  }
}
