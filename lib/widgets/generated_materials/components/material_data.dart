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
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: widget.material.isChecked,
          onChanged: (value) {
            setState(() {
              widget.material.isChecked = !widget.material.isChecked;
            });
          },
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              widget.material.isChecked = !widget.material.isChecked;
            });
          },
          child: Text(
            '${widget.material.name}: ${widget.material.amount}',
            style: TextStyle(
              decoration: widget.material.isChecked
                  ? TextDecoration.lineThrough
                  : TextDecoration.none,
              fontStyle: widget.material.isChecked
                  ? FontStyle.italic
                  : FontStyle.normal,
            ),
          ),
        ),
      ],
    );
  }
}
