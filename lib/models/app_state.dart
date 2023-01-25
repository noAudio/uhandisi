import 'package:uhandisi/models/coriolis.dart';
import 'package:uhandisi/models/material_item.dart';

class AppState {
  final String shipName;
  final String buildName;
  final Coriolis coriolisLink;
  final List<MaterialItem> materials;

  /// These are the materials that will be manually input by
  /// the user.
  final String userMaterials;
  final List<MaterialItem> completedMaterials;

  AppState({
    required this.shipName,
    required this.buildName,
    required this.coriolisLink,
    required this.materials,
    required this.userMaterials,
    required this.completedMaterials,
  });

  factory AppState.initial() => AppState(
        shipName: '',
        buildName: '',
        coriolisLink: Coriolis(link: ''),
        materials: [],
        userMaterials: '',
        completedMaterials: [],
      );
}
