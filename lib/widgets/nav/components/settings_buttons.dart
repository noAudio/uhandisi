import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsButtons extends StatelessWidget {
  const SettingsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: const Icon(Icons.info_outline),
          tooltip: 'Instructions on how to use this app.',
          splashRadius: 18.0,
          iconSize: 18.0,
          onPressed: () => aboutApp(context),
        ),
        IconButton(
          icon: const Icon(Icons.restart_alt_outlined),
          tooltip: 'Reset materials.',
          splashRadius: 18.0,
          iconSize: 18.0,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.light_mode_outlined),
          tooltip: 'Current: Light Mode',
          splashRadius: 18.0,
          iconSize: 18.0,
          onPressed: () {},
        ),
      ],
    );
  }
}

void aboutApp(BuildContext context) {
  return showAboutDialog(
    context: context,
    applicationIcon: ShaderMask(
      shaderCallback: ((Rect bounds) =>
          const LinearGradient(colors: [Color(0xFFFF6E7F), Color(0xFFBFE9FF)])
              .createShader(Offset.zero & bounds.size)),
      child: Text(
        'uhandisi',
        style: GoogleFonts.josefinSans(
          textStyle: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    ),
    applicationName: 'Painless Engineering',
    applicationVersion: '0.0.1',
    children: [
      const Text(
        'Instructions:',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      const Text(
          'Use the "Coriolis link" tab to generate and sort materials from a coriolis link. Please use the shortlink from the coriolis site.'),
      const Divider(),
      const Text(
          'Use the "Materials list" tab to sort materials. The materials should be in the format "Material: Amount" e.g. "Iron: 5" and should each be in their own line.'),
    ],
  );
}
