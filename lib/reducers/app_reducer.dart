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
        completedMaterials: state.completedMaterials,
        selectedInput: action.selectedInput);
  } else if (action is GetUserInputAction) {
    return AppState(
      shipName: state.shipName,
      buildName: state.buildName,
      coriolisLink: state.coriolisLink,
      materials: state.materials,
      userInput: action.input,
      completedMaterials: state.completedMaterials,
      selectedInput: state.selectedInput,
    );
  }

  return state;
}
