import 'package:flutter/material.dart';
import 'package:uhandisi/models/material_item.dart';

class MaterialData extends StatefulWidget {
  const MaterialData({
    Key? key,
    required this.material,
  }) : super(key: key);

  final MaterialItem material;

  @override
  State<MaterialData> createState() => _MaterialDataState();
}

class _MaterialDataState extends State<MaterialData> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isChecked = !isChecked;
            });
          },
          child: Text(
            '${widget.material.name}: ${widget.material.amount}',
            style: TextStyle(
              decoration:
                  isChecked ? TextDecoration.lineThrough : TextDecoration.none,
              fontStyle: isChecked ? FontStyle.italic : FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
