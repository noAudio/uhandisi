import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Click to clear list and start over.',
      child: TextButton(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFFFFE3E3)),
          foregroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFFFF0000)),
          minimumSize:
              MaterialStateProperty.all<Size>(const Size.fromHeight(30)),
        ),
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'RESET',
            style: GoogleFonts.poppins(),
          ),
        ),
      ),
    );
  }
}
