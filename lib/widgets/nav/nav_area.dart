import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/common/logo.dart';
import 'package:uhandisi/widgets/nav/components/settings_buttons.dart';

class NavArea extends StatelessWidget {
  const NavArea({
    Key? key,
    required this.isMobile,
  }) : super(key: key);

  final LinearGradient linearGradient =
      const LinearGradient(colors: [Color(0xFFFF6E7F), Color(0xFFBFE9FF)]);

  final bool isMobile;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            Logo(
              linearGradient: linearGradient,
              isMobile: isMobile,
            ),
            // const ShipAndBuildTitles(
            //   shipName: 'Alliance Chieftain',
            //   buildName: 'EasyChief',
            // ),
            const SettingsButtons(),
            // !isMobile ? const SizedBox() : const Text('.'),
          ],
        ),
      ),
    );
  }
}
