import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

class NavArea extends StatelessWidget {
  const NavArea({
    Key? key,
  }) : super(key: key);

  final LinearGradient linearGradient =
      const LinearGradient(colors: [Color(0xFFFF6E7F), Color(0xFFBFE9FF)]);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ShaderMask(
            shaderCallback: ((Rect bounds) =>
                linearGradient.createShader(Offset.zero & bounds.size)),
            child: Text(
              'uhandisi',
              style: GoogleFonts.josefinSans(
                textStyle: const TextStyle(
                  fontSize: 59,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(),
        ],
      ),
    );
  }
}
