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
      child: isMobile
          ? SizedBox(
              // width: isMobile ? 250 : 1000,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          'Instructions',
                          style: GoogleFonts.poppins(
                            fontSize: isMobile ? 17 : 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          instructionsText,
                          style: GoogleFonts.poppins(
                            fontSize: isMobile ? 14 : 20,
                          ),
                          overflow: TextOverflow.fade,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          : FractionallySizedBox(
              widthFactor: 0.5,
              child: Column(
                children: [
                  Expanded(
                    child: Text(
                      'Instructions',
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 17 : 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      instructionsText,
                      style: GoogleFonts.poppins(
                        fontSize: isMobile ? 14 : 20,
                      ),
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
