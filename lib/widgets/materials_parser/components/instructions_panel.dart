import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/utils.dart';

class InstructionsPanel extends StatelessWidget {
  const InstructionsPanel({
    Key? key,
    required this.instructionsText,
  }) : super(key: key);

  final String instructionsText;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= FormFactor.mobile) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(
            width: 250,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Instructions',
                        style: GoogleFonts.poppins(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        instructionsText,
                        style: GoogleFonts.poppins(fontSize: 14),
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      } else if (constraints.maxWidth <= FormFactor.laptop) {
        return Padding(
          padding: const EdgeInsets.all(5),
          child: SizedBox(
            child: Row(
              children: [
                Expanded(
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
                        overflow: TextOverflow.fade,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        return Padding(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
          child: FractionallySizedBox(
            widthFactor: 0.5,
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    'Instructions',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    instructionsText,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
        );
      }
    });
  }
}
