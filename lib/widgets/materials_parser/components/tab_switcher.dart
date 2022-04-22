import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabSwitcher extends StatelessWidget {
  const TabSwitcher({
    Key? key,
    required this.isMobile,
    required this.isCoriolis,
  }) : super(key: key);

  final bool isMobile;
  final bool isCoriolis;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabButton(
          isCoriolis: isCoriolis,
          buttonValue: 'Materials list',
          isMobile: isMobile,
        ),
        TabButton(
          isCoriolis: !isCoriolis,
          buttonValue: 'Coriolis link',
          isMobile: isMobile,
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
    required this.isMobile,
  }) : super(key: key);

  final bool isMobile;
  final bool isCoriolis;
  final String buttonValue;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // TODO: Handle button click
      onTap: () => print('Clicked $buttonValue'),
      child: Padding(
        padding: isMobile ? const EdgeInsets.all(5) : const EdgeInsets.all(10),
        child: Text(
          buttonValue,
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: isCoriolis ? Colors.grey : Colors.black,
              fontSize: isMobile ? 18 : 24,
            ),
          ),
        ),
      ),
    );
  }
}
