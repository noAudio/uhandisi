import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavArea extends StatelessWidget {
  const NavArea({
    Key? key,
  }) : super(key: key);

  final LinearGradient linearGradient =
      const LinearGradient(colors: [Color(0xFFFF6E7F), Color(0xFFBFE9FF)]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Logo(linearGradient: linearGradient),
          const SizedBox(),
        ],
      ),
    );
  }
}

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
