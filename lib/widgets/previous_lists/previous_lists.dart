import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/widgets/previous_lists/components/previous_list_item.dart';

class PreviousLists extends StatelessWidget {
  const PreviousLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Column(
        children: [
          Text(
            'Previous Lists',
            style: GoogleFonts.poppins(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: const [
                PreviousListItem(
                  title: 'Krait MkII Explorer',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
