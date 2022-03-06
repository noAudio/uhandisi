import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/materials_parser/components/tab_switcher.dart';
import 'package:uhandisi/widgets/materials_parser/components/text_boxes.dart';

class MaterialsParser extends StatelessWidget {
  const MaterialsParser({Key? key, required this.isCoriolis}) : super(key: key);

  final bool isCoriolis;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Flexible(
          child: FractionallySizedBox(
            widthFactor: 0.2,
          ),
        ),
        SizedBox(
          width: 350,
          child: Column(
            children: [
              TabSwitcher(isCoriolis: isCoriolis),
              TextBoxes(isCoriolis: isCoriolis),
            ],
          ),
        ),
      ],
    );
  }
}
