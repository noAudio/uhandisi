import 'package:flutter/material.dart';
import 'package:uhandisi/enums/selected_input.dart';
import 'package:uhandisi/models/coriolis.dart';
import 'package:uhandisi/models/material_item.dart';

class AppState {
  final ThemeMode themeMode;
  final String shipName;
  final String buildName;
  final Coriolis coriolisLink;
  final List<MaterialItem> materials;
  final SelectedInput selectedInput;

  /// These are the materials that will be manually input by
  /// the user.
  final List<String> userInput;
  final String validationError;
  final bool isComputing;
  final Map<String, List<Map<String, List<MaterialItem>>>> completedMaterials;

  AppState({
    required this.themeMode,
    required this.shipName,
    required this.buildName,
    required this.coriolisLink,
    required this.materials,
    required this.userInput,
    required this.validationError,
    required this.isComputing,
    required this.completedMaterials,
    required this.selectedInput,
  });

  factory AppState.initial() => AppState(
        themeMode: ThemeMode.dark,
        shipName: '',
        buildName: '',
        coriolisLink: Coriolis(link: ''),
        materials: [],
        userInput: [],
        validationError: '',
        isComputing: false,
        completedMaterials: {},
        selectedInput: SelectedInput.coriolisLink,
      );
}
