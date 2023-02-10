import 'package:flutter/material.dart';
import 'package:uhandisi/models/material_item.dart';
import 'package:uhandisi/widgets/generated_materials/components/material_data.dart';

class MinorCategory extends StatelessWidget {
  const MinorCategory({
    Key? key,
    required this.item,
  }) : super(key: key);

  final MapEntry<String, List<MaterialItem>> item;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(item.key),
              ),
              Column(
                children: [
                  for (var material in item.value)
                    MaterialData(material: material)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
