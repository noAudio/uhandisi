import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'uhandisi - Painless Engineering',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            const NavArea(isMobile: false),
            Row(
              children: const [
                Text('Hi'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
