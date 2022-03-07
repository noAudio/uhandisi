import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/widgets/save_list/components/reset_button.dart';
import 'package:uhandisi/widgets/save_list/components/save_form.dart';

class SaveList extends StatelessWidget {
  const SaveList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(100.0),
      child: SizedBox(
        width: 170,
        child: Column(
          children: [
            Text(
              'Save',
              style: GoogleFonts.poppins(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SaveForm(),
            const SizedBox(height: 10),
            const ResetButton()
          ],
        ),
      ),
    );
  }
}
