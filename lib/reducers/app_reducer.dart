import 'package:uhandisi/actions/index.dart';
import 'package:uhandisi/models/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  if (action is SwitchSelectionAction) {
    return AppState(
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
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: action.coriolisLink,
        materials: state.materials,
        userInput: state.userInput,
        validationError: '',
        isComputing: state.isComputing,
        completedMaterials: state.completedMaterials,
        selectedInput: state.selectedInput);
  } else if (action is AddUserMaterialsAction) {
    return AppState(
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: state.coriolisLink,
        materials: state.materials,
        userInput: action.userMaterials,
        validationError: '',
        isComputing: state.isComputing,
        completedMaterials: state.completedMaterials,
        selectedInput: state.selectedInput);
  } else if (action is MaterialComputationAction) {
    return AppState(
        shipName: state.shipName,
        buildName: state.buildName,
        coriolisLink: state.coriolisLink,
        materials: state.materials,
        userInput: state.userInput,
        validationError: state.validationError,
        isComputing: action.isComputing,
        completedMaterials: state.completedMaterials,
        selectedInput: state.selectedInput);
  }

  return state;
}
