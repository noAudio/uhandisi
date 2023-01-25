import 'package:flutter/material.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

import 'package:uhandisi/screens/app.dart';
import 'package:uhandisi/reducers/index.dart';

void main() {
  final store = Store<AppState>(appReducer, initialState: AppState.initial());

  runApp(StoreProvider<AppState>(
    store: store,
    child: const App(),
  ));
}
