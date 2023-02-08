import 'package:flutter/material.dart';
import 'package:uhandisi/actions/index.dart';
import 'package:uhandisi/data/processed_items.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/models/material_item.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is SwitchSelectionAction) {
    return AppState(
        themeMode: state.themeMode,
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: state.coriolisLink,
        materials: state.materials,
        userInput: state.userInput,
        validationError: '',
        isComputing: state.isComputing,
        completedMaterials: state.completedMaterials,
        selectedInput: action.selectedInput);
  } else if (action is GetUserInputAction) {
    return AppState(
      themeMode: state.themeMode,
      shipName: state.shipName,
      buildName: state.buildName,
      coriolisLink: state.coriolisLink,
      materials: state.materials,
      userInput: action.input,
      validationError: state.validationError,
      isComputing: state.isComputing,
      completedMaterials: state.completedMaterials,
      selectedInput: state.selectedInput,
    );
  } else if (action is ValidationErrorInputAction) {
    return AppState(
        themeMode: state.themeMode,
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: state.coriolisLink,
        materials: state.materials,
        userInput: state.userInput,
        validationError: action.validationErrorText,
        isComputing: state.isComputing,
        completedMaterials: state.completedMaterials,
        selectedInput: state.selectedInput);
  } else if (action is AddCoriolisLinkAction) {
    return AppState(
        themeMode: state.themeMode,
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: action.coriolisLink,
        materials: state.materials,
        userInput: state.userInput,
        validationError: '',
        isComputing: state.isComputing,
        completedMaterials: state.completedMaterials,
        selectedInput: state.selectedInput);
  } else if (action is MaterialComputationAction) {
    return AppState(
        themeMode: state.themeMode,
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: state.coriolisLink,
        materials: state.materials,
        userInput: state.userInput,
        validationError: state.validationError,
        isComputing: action.isComputing,
        completedMaterials: state.completedMaterials,
        selectedInput: state.selectedInput);
  } else if (action is ConvertUserInputAction) {
    var userInput = state.userInput;
    List<MaterialItem> userMaterials = [];

    for (int i = 0; i < userInput.length; i++) {
      var item = userInput[i];
      var splitItem = item.split(':');
      var materialItem =
          MaterialItem(name: splitItem[0], amount: int.parse(splitItem[1]));
      userMaterials.add(materialItem);
    }

    return AppState(
      themeMode: state.themeMode,
      shipName: state.shipName,
      buildName: state.buildName,
      coriolisLink: state.coriolisLink,
      materials: userMaterials,
      userInput: state.userInput,
      validationError: state.validationError,
      isComputing: state.isComputing,
      completedMaterials: state.completedMaterials,
      selectedInput: state.selectedInput,
    );
  } else if (action is SortMaterialsAction) {
    List<MaterialItem> sorted = [];
    var materials = state.materials;
    // print(materials);

    for (MaterialItem mat in materials) {
      for (MaterialItem comparisonMat in processedMaterialItems) {
        if (mat.name == comparisonMat.name) {
          comparisonMat.amount = mat.amount;
          sorted.add(comparisonMat);
        }
      }
    }

    sorted.sort(
      (a, b) => a.grade!.compareTo(b.grade!),
    );

    Map<String, List<Map<String, List<MaterialItem>>>> categorised = {};

    for (MaterialItem item in sorted) {
      if (categorised.containsKey(item.kind)) {
        var kind = categorised['${item.kind}']!;
        for (Map<String, List<MaterialItem>> section in kind) {
          if (section.containsKey('${item.section}')) {
            section['${item.section}']!.add(item);
          } else {
            section['${item.section}'] = [item];
          }
        }
      } else {
        categorised['${item.kind}'] = [
          {
            '${item.section}': [item]
          }
        ];
      }
    }
    return AppState(
      themeMode: state.themeMode,
      shipName: state.shipName,
      buildName: state.buildName,
      coriolisLink: state.coriolisLink,
      materials: state.materials,
      userInput: state.userInput,
      validationError: state.validationError,
      isComputing: state.isComputing,
      completedMaterials: categorised,
      selectedInput: state.selectedInput,
    );
  } else if (action is ResetMaterialsAction) {
    return AppState(
        themeMode: state.themeMode,
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: state.coriolisLink,
        materials: state.materials,
        userInput: state.userInput,
        validationError: state.validationError,
        isComputing: state.isComputing,
        completedMaterials: {},
        selectedInput: state.selectedInput);
  } else if (action is ChangeThemeAction) {
    var theme =
        state.themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    return AppState(
      themeMode: theme,
      shipName: state.shipName,
      buildName: state.buildName,
      coriolisLink: state.coriolisLink,
      materials: state.materials,
      userInput: state.userInput,
      validationError: state.validationError,
      isComputing: state.isComputing,
      completedMaterials: state.completedMaterials,
      selectedInput: state.selectedInput,
    );
  }

  return state;
}
