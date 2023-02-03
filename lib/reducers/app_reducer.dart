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
        completedMaterials: state.completedMaterials,
        selectedInput: state.selectedInput);
  }

  return state;
}
