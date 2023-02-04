import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/common/logo.dart';

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
          icon: const Icon(
            Icons.info_outline,
            color: Color(0xFFBFE9FF),
          ),
          tooltip: 'Instructions on how to use this app.',
          splashRadius: 18.0,
          iconSize: 18.0,
          onPressed: () => aboutApp(context),
        ),
        IconButton(
          icon: const Icon(
            Icons.restart_alt_outlined,
            color: Color(0xFFBFE9FF),
          ),
          tooltip: 'Reset materials.',
          splashRadius: 18.0,
          iconSize: 18.0,
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.light_mode_outlined,
            color: Color(0xFFBFE9FF),
          ),
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
    applicationLegalese: '❤️ Built by Samuel Odongo',
    context: context,
    applicationIcon: const Logo(
      isMobile: true,
      linearGradient:
          LinearGradient(colors: [Color(0xFFFF6E7F), Color(0xFFBFE9FF)]),
    ),
    applicationName: 'Painless Engineering',
    applicationVersion: '0.0.1',
    children: [
      SizedBox(
        width: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Instructions:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                'Use the "Coriolis link" tab to generate and sort materials from a coriolis link. Please use the shortlink from the coriolis site.'),
            Divider(),
            Text(
                'Use the "Materials list" tab to sort materials. The materials should be in the format "Material: Amount" e.g. "Iron: 5" and should each be in their own line.'),
          ],
        ),
      ),
    ],
  );
}
