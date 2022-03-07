import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SaveForm extends StatelessWidget {
  const SaveForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
