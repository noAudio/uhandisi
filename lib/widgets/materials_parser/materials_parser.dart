import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/materials_parser/components/text_boxes.dart';

class MaterialsParser extends StatelessWidget {
  const MaterialsParser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Flexible(
          child: FractionallySizedBox(
            widthFactor: 0.2,
          ),
        ),
        TextBoxes(
          isCoriolis: false,
        ),
      ],
    );
  }
}
