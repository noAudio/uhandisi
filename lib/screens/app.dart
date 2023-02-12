import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/index.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/widgets/common/about_app.dart';
import 'package:uhandisi/widgets/common/logo.dart';
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
          // themeMode: ThemeMode.light,
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
            floatingActionButton: Wrap(
              direction: Axis.horizontal,
              children: [
                Container(
                  margin: const EdgeInsets.all(3),
                  child: FloatingActionButton.extended(
                    // TODO: Change from an aboutDialog to modal.
                    onPressed: () => aboutApp(context),
                    label: const Text('Instructions'),
                    icon: const Icon(Icons.info_outline),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(ResetMaterialsAction());
                    },
                    label: const Text('Reset'),
                    icon: const Icon(Icons.restart_alt_outlined),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(3),
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      StoreProvider.of<AppState>(context)
                          .dispatch(ChangeThemeAction());
                    },
                    label: Text(
                        'Theme: ${state.themeMode == ThemeMode.light ? "Light" : "Dark"}'),
                    icon: Icon(state.themeMode == ThemeMode.light
                        ? Icons.light_mode_outlined
                        : Icons.dark_mode_outlined),
                  ),
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.miniCenterFloat,
          ),
        );
      },
    );
  }
}
