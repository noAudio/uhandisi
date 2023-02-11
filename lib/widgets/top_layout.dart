import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:uhandisi/enums/material_kind.dart';
import 'package:uhandisi/models/app_state.dart';
import 'package:uhandisi/models/material_item.dart';
import 'package:uhandisi/widgets/generated_materials/generated_materials.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';
import 'package:uhandisi/widgets/user_input/user_input.dart';

class TopLayout extends StatefulWidget {
  const TopLayout({Key? key}) : super(key: key);

  @override
  State<TopLayout> createState() => _TopLayoutState();
}

class _TopLayoutState extends State<TopLayout> {
  MaterialKind materialKind = MaterialKind.raw;
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

        if (rawMaterials != null) availableMaterials.add(MaterialKind.raw);
        if (encodedMaterials != null)
          availableMaterials.add(MaterialKind.encoded);
        if (manufacturedMaterials != null)
          availableMaterials.add(MaterialKind.manufactured);

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (rawMaterials != null)
                        TextButton(
                          onPressed: () {
                            setState(() {
                              materialKind = MaterialKind.raw;
                            });
                          },
                          child: Text(
                            'Raw',
                            style: TextStyle(
                              fontWeight: materialKind == MaterialKind.raw
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      if (encodedMaterials != null)
                        TextButton(
                          onPressed: () {
                            setState(() {
                              materialKind = MaterialKind.encoded;
                            });
                          },
                          child: Text(
                            'Encoded',
                            style: TextStyle(
                              fontWeight: materialKind == MaterialKind.encoded
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      if (manufacturedMaterials != null)
                        TextButton(
                          onPressed: () {
                            setState(() {
                              materialKind = MaterialKind.manufactured;
                            });
                          },
                          child: Text(
                            'Manufactured',
                            style: TextStyle(
                              fontWeight:
                                  materialKind == MaterialKind.manufactured
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                            ),
                          ),
                        ),
                    ],
                  ),
                  GeneratedMaterials(
                      materials: materialKind == MaterialKind.raw
                          ? rawMaterials!
                          : materialKind == MaterialKind.encoded
                              ? encodedMaterials!
                              : manufacturedMaterials!),
                ],
              ),
          ],
        );
      },
    );
  }
}
