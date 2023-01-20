import 'package:flutter/material.dart';

class SettingsButtons extends StatelessWidget {
  const SettingsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.info_outline),
          tooltip: 'Instructions on how to use this app.',
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.restart_alt_outlined),
          tooltip: 'Reset materials.',
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.light_mode_outlined),
          tooltip: 'Current: Light Mode',
        ),
      ],
    );
  }
}
