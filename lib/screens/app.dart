import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/widgets/common/logo.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';
import 'package:uhandisi/widgets/top_layout.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (context, state) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
            colorSchemeSeed: const Color(0xFFBFE9FF),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: state.themeMode,
          title: 'uhandisi - Painless Engineering',
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar(
              title: const Logo(
                  linearGradient: LinearGradient(
                      colors: [Color(0xFFFF6E7F), Color(0xFFBFE9FF)]),
                  isMobile: false),
              centerTitle: true,
            ),
            body: const TopLayout(),
          ),
        );
      },
    );
  }
}
