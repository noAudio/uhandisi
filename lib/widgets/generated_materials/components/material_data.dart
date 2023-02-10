import 'package:flutter/material.dart';
import 'package:uhandisi/models/material_item.dart';

class MaterialData extends StatelessWidget {
  const MaterialData({
    Key? key,
    required this.material,
  }) : super(key: key);

  final MaterialItem material;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text('${material.name}: '),
        Text('${material.amount}')
      ],
    );
  }
}
