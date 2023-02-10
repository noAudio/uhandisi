import 'package:flutter/material.dart';
import 'package:uhandisi/models/material_item.dart';
import 'package:uhandisi/widgets/generated_materials/components/minor_category.dart';

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
        physics: const ScrollPhysics(),
        children: [
          for (var subCategory in materials)
            for (var item in subCategory.entries) MinorCategory(item: item),
        ],
      ),
    );
  }
}
