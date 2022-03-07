import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/widgets/save_list/components/reset_button.dart';

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
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  style: GoogleFonts.poppins(),
                  decoration: const InputDecoration(
                    hintText: 'Name your list',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Save list'),
                  ),
                ),
              ],
            ),
            const ResetButton()
          ],
        ),
      ),
    );
  }
}
