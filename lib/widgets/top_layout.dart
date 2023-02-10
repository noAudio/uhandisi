import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/models/material_item.dart';
import 'package:uhandisi/widgets/generated_materials/generated_materials.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';
import 'package:uhandisi/widgets/user_input/user_input.dart';

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
          encodedMaterials = completedMaterials['Encoded'];
          rawMaterials = completedMaterials['Raw'];
          manufacturedMaterials = completedMaterials['Manufactured'];
        }
        return Column(
          children: [
            const Center(child: NavArea(isMobile: false)),
            if (completedMaterials.isEmpty)
              const Center(
                child: UserInput(),
              ),
            if (completedMaterials.isNotEmpty)
              Column(
                children: [
                  if (rawMaterials != null)
                    GeneratedMaterials(materials: rawMaterials),
                  if (encodedMaterials != null)
                    for (var subCategory in encodedMaterials)
                      Text('$subCategory'),
                  if (manufacturedMaterials != null)
                    for (var subCategory in manufacturedMaterials)
                      Text('$subCategory'),
                ],
              ),
          ],
        );
      },
    );
  }
}
