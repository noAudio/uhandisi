import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    required this.linearGradient,
    required this.isMobile,
  }) : super(key: key);

  final LinearGradient linearGradient;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: ((Rect bounds) =>
          linearGradient.createShader(Offset.zero & bounds.size)),
      child: Text(
        'uhandisi',
        style: GoogleFonts.josefinSans(
          textStyle: TextStyle(
            fontSize: isMobile ? 30 : 59,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
