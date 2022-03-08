import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/widgets/generated_lists/components/hover_controls.dart';

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

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHovered = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHovered = false;
          });
        },
        child: Row(
          children: [
            Checkbox(value: false, onChanged: (value) {}),
            Text(widget.materialText, style: GoogleFonts.poppins(fontSize: 16)),
            isHovered ? const MaterialItemHoverControls() : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
