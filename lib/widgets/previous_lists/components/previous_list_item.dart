import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreviousListItem extends StatelessWidget {
  const PreviousListItem({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: GoogleFonts.poppins(),
        ),
      ),
    );
  }
}
