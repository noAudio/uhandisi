import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabSwitcher extends StatelessWidget {
  const TabSwitcher({Key? key, required this.isCoriolis}) : super(key: key);

  final bool isCoriolis;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabButton(
          isCoriolis: isCoriolis,
          buttonValue: 'Materials list',
        ),
        TabButton(
          isCoriolis: !isCoriolis,
          buttonValue: 'Coriolis link',
        )
      ],
    );
  }
}

class TabButton extends StatelessWidget {
  const TabButton({
    Key? key,
    required this.isCoriolis,
    required this.buttonValue,
  }) : super(key: key);

  final bool isCoriolis;
  final String buttonValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // TODO: Handle button click
      onTap: () => print('Clicked $buttonValue'),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Text(
          buttonValue,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: isCoriolis ? Colors.grey : Colors.black,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
