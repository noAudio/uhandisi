import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/index.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/widgets/common/logo.dart';

class SettingsButtons extends StatelessWidget {
  const SettingsButtons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (context, state) {
        IconData iconData = state.themeMode == ThemeMode.dark
            ? Icons.light_mode
            : Icons.dark_mode;
        String hoverText = state.themeMode == ThemeMode.dark
            ? 'Switch to light mode.'
            : 'Switch to dark mode.';
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: const Icon(
                Icons.info_outline,
              ),
              tooltip: 'Instructions on how to use this app.',
              splashRadius: 18.0,
              iconSize: 18.0,
              onPressed: () => aboutApp(context),
            ),
            IconButton(
              icon: const Icon(
                Icons.restart_alt_outlined,
              ),
              tooltip: 'Reset materials.',
              splashRadius: 18.0,
              iconSize: 18.0,
              onPressed: () {
                StoreProvider.of<AppState>(context)
                    .dispatch(ResetMaterialsAction());
              },
            ),
            IconButton(
              icon: Icon(
                iconData,
              ),
              tooltip: hoverText,
              splashRadius: 18.0,
              iconSize: 18.0,
              onPressed: () {
                StoreProvider.of<AppState>(context)
                    .dispatch(ChangeThemeAction());
              },
            ),
          ],
        );
      },
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
