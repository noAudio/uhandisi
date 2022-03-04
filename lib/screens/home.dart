import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          NavArea(),
        ],
      ),
    );
  }
}
