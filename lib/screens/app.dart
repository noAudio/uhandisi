import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/top_layout.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFFBFE9FF),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,
      title: 'uhandisi - Painless Engineering',
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
        body: TopLayout(),
      ),
    );
  }
}
