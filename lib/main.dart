import 'package:flutter/material.dart';
import 'package:uhandisi/screens/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'uhandisi - Painless Engineering',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
