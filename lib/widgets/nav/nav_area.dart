import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/nav/components/logo.dart';

class NavArea extends StatelessWidget {
  const NavArea({
    Key? key,
  }) : super(key: key);

  final LinearGradient linearGradient =
      const LinearGradient(colors: [Color(0xFFFF6E7F), Color(0xFFBFE9FF)]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Logo(linearGradient: linearGradient),
          const SizedBox(),
        ],
      ),
    );
  }
}
