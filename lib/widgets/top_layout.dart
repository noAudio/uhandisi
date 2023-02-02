import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';
import 'package:uhandisi/widgets/user_input/user_input.dart';

class TopLayout extends StatelessWidget {
  const TopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(child: NavArea(isMobile: false)),
        Center(
          child: Column(
            children: const [
              UserInput(),
            ],
          ),
        ),
      ],
    );
  }
}
