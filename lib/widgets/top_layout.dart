import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
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
  bool rawSelected = true;
  bool encodedSelected = false;
  bool manufacturedSelected = false;

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
                              rawSelected = true;
                              encodedSelected = false;
                              manufacturedSelected = false;
                            });
                          },
                          child: Text(
                            'Raw',
                            style: TextStyle(
                              fontWeight: rawSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      if (encodedMaterials != null)
                        TextButton(
                          onPressed: () {
                            setState(() {
                              encodedSelected = true;
                              rawSelected = false;
                              manufacturedSelected = false;
                            });
                          },
                          child: Text(
                            'Encoded',
                            style: TextStyle(
                              fontWeight: encodedSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                      if (manufacturedMaterials != null)
                        TextButton(
                          onPressed: () {
                            setState(() {
                              manufacturedSelected = true;
                              rawSelected = false;
                              encodedSelected = false;
                            });
                          },
                          child: Text(
                            'Manufactured',
                            style: TextStyle(
                              fontWeight: manufacturedSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                            ),
                          ),
                        ),
                    ],
                  ),
                  if (rawMaterials != null)
                    Visibility(
                      visible: rawSelected,
                      child: GeneratedMaterials(materials: rawMaterials),
                    ),
                  if (encodedMaterials != null)
                    Visibility(
                      visible: encodedSelected,
                      child: GeneratedMaterials(materials: encodedMaterials),
                    ),
                  if (manufacturedMaterials != null)
                    Visibility(
                      visible: manufacturedSelected,
                      child:
                          GeneratedMaterials(materials: manufacturedMaterials),
                    ),
                ],
              ),
          ],
        );
      },
    );
  }
}
