import 'package:flutter/material.dart';
import 'package:uhandisi/models/material_item.dart';

class GeneratedMaterials extends StatelessWidget {
  const GeneratedMaterials({
    Key? key,
    required this.materials,
  }) : super(key: key);

  final List<Map<String, List<MaterialItem>>> materials;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 650,
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        children: [
          for (var subCategory in materials)
            for (var item in subCategory.entries)
              SizedBox(
                width: 400,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(item.key),
                        Column(
                          children: [
                            for (var material in item.value)
                              Row(
                                children: [
                                  Checkbox(
                                    value: false,
                                    onChanged: (value) {},
                                  ),
                                  Text('${material.name}: '),
                                  Text('${material.amount}')
                                ],
                              )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
        ],
      ),
    );
  }
}
