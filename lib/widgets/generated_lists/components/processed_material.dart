import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProcessedMaterialItem extends StatefulWidget {
  const ProcessedMaterialItem({
    Key? key,
    required this.materialText,
  }) : super(key: key);

  final String materialText;

  @override
  State<ProcessedMaterialItem> createState() => _ProcessedMaterialItemState();
}

class _ProcessedMaterialItemState extends State<ProcessedMaterialItem> {
  bool isHovered = false;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          onChanged: (value) {
            setState(() {
              isChecked = !isChecked;
            });
          },
        ),
        Flexible(
          child: Padding(
            padding: const EdgeInsets.only(left: 4),
            child: Text(
              widget.materialText,
              style: GoogleFonts.poppins(
                fontSize: 16,
                decoration: isChecked
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
                color: isChecked ? Colors.grey : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
