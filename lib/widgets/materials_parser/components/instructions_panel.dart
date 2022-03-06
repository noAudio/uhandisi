import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionsPanel extends StatelessWidget {
  const InstructionsPanel({Key? key, required this.instructionsText})
      : super(key: key);

  final String instructionsText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: SizedBox(
        width: 1000,
        child: Column(
          children: [
            Text(
              'Instructions',
              style: GoogleFonts.poppins(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              instructionsText,
              style: GoogleFonts.poppins(
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
