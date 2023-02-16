import 'package:uhandisi/data/processed_items.dart';
import 'package:uhandisi/enums/selected_input.dart';

class FormFactor {
  static double desktop = 1400;
  static double laptop = 900;
  static double tablet = 600;
  static double mobile = 300;
}

String validateInput(String input, SelectedInput selectedInput) {
  // User input validation logic
  RegExp linkRegex = RegExp(r'^(https:\/\/)?s\.orbis\.zone\/[a-zA-Z0-9]{4}$');
  RegExp materialsRegex = RegExp(r'^[a-zA-Z\s]+[a-zA-Z]+: \d+$');
  if (selectedInput == SelectedInput.coriolisLink) {
    if (!linkRegex.hasMatch(input)) {
      return 'Enter a valid coriolis shortlink i.e. "s.orbis.zone/..."';
    } else {
      return '';
    }
  } else if (selectedInput == SelectedInput.materialList) {
    List<String> materials = input.split('\n');
    List<String> invalidInputs = [];

    for (int i = 0; i < materials.length; i++) {
      if (!materialsRegex.hasMatch(materials[i])) {
        invalidInputs.add(materials[i]);
      } else {
        String materialName = materials[i].split(':')[0];
        if (!checkIfActualMaterial(materialName)) {
          invalidInputs.add(materials[i]);
        }
      }
    }
    if (invalidInputs.isNotEmpty) {
      if (invalidInputs.length == 1 && invalidInputs[0] == '') {
        return 'Please type in a list of materials.';
      }
      String invalidInputsAsStrings = invalidInputs.reduce(
          (value, element) => '$value${element != "\n" ? ", \n$element" : ""}');
      return 'The item${invalidInputs.length > 1 ? "s" : ""} \n$invalidInputsAsStrings \ndo${invalidInputs.length > 1 ? "" : "es"} not follow the format "Material: Amount"\nor is not a valid material!';
    } else {
      return '';
    }
  } else {
    return '';
  }
}

bool checkIfActualMaterial(String materialName) {
  bool isMaterial = false;

  for (var mat in processedMaterialItems) {
    if (materialName == mat.name) {
      isMaterial = true;
    }
  }

  return isMaterial;
}
