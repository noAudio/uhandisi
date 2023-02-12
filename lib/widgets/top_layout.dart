import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/actions/filter_material_kind_action.dart';
import 'package:uhandisi/enums/material_kind.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/models/material_item.dart';
import 'package:uhandisi/widgets/generated_materials/generated_materials.dart';
import 'package:uhandisi/widgets/user_input/user_input.dart';

// class TopLayout extends StatefulWidget {
//   const TopLayout({Key? key}) : super(key: key);

//   @override
//   State<TopLayout> createState() => _TopLayoutState();
// }

class TopLayout extends StatelessWidget {
  const TopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, dynamic>(
      converter: (store) => store.state,
      builder: (context, state) {
        Map<String, List<Map<String, List<MaterialItem>>>> completedMaterials =
            state.completedMaterials;

        List<Map<String, List<MaterialItem>>>? rawMaterials,
            encodedMaterials,
            manufacturedMaterials;

        if (completedMaterials.isNotEmpty) {
          rawMaterials = completedMaterials['Raw'];
          encodedMaterials = completedMaterials['Encoded'];
          manufacturedMaterials = completedMaterials['Manufactured'];
        }

        List<MaterialKind> availableMaterials = [];

        if (rawMaterials != null) {
          availableMaterials.add(MaterialKind.raw);
        }
        if (encodedMaterials != null) {
          availableMaterials.add(MaterialKind.encoded);
        }
        if (manufacturedMaterials != null) {
          availableMaterials.add(MaterialKind.manufactured);
        }

        MaterialKind materialKind = state.materialKind;

        if (availableMaterials.isNotEmpty) {
          if (!availableMaterials.contains(materialKind)) {
            materialKind = availableMaterials[0];
          }
        }

        return Column(
          children: [
            if (completedMaterials.isEmpty)
              const Center(
                child: UserInput(),
              ),
            if (completedMaterials.isNotEmpty)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (MaterialKind kind in availableMaterials)
                    TextButton(
                      onPressed: () {
                        StoreProvider.of<AppState>(context).dispatch(
                            FilterMaterialKindAction(materialKind: kind));
                      },
                      child: Text(
                        kind == MaterialKind.raw
                            ? 'Raw'
                            : kind == MaterialKind.encoded
                                ? 'Encoded'
                                : 'Manufactured',
                        style: TextStyle(
                          fontWeight: materialKind == kind
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      ),
                    ),
                ],
              ),
            if (completedMaterials.isNotEmpty)
              GeneratedMaterials(
                materials: materialKind == MaterialKind.raw
                    ? rawMaterials!
                    : materialKind == MaterialKind.encoded
                        ? encodedMaterials!
                        : manufacturedMaterials!,
              ),
          ],
        );
      },
    );
  }
}
