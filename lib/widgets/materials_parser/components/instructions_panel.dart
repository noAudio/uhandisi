import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstructionsPanel extends StatelessWidget {
  const InstructionsPanel({
    Key? key,
    required this.isMobile,
    required this.instructionsText,
  }) : super(key: key);

  final bool isMobile;
  final String instructionsText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: isMobile
          ? const EdgeInsets.all(5)
          : const EdgeInsets.fromLTRB(40, 10, 40, 10),
      child: SizedBox(
        width: isMobile ? 250 : 1000,
        child: Column(
          children: [
            Text(
              'Instructions',
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 20 : 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              instructionsText,
              style: GoogleFonts.poppins(
                fontSize: isMobile ? 17 : 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
