import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.linearGradient,
  }) : super(key: key);

  final LinearGradient linearGradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: ((Rect bounds) =>
          linearGradient.createShader(Offset.zero & bounds.size)),
      child: Text(
        'uhandisi',
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            fontSize: 59,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
