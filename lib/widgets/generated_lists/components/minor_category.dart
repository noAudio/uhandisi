import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MinorCategory extends StatelessWidget {
  const MinorCategory({
    Key? key,
    required this.minorCategoryTitle,
    required this.processedMaterialItems,
  }) : super(key: key);

  final String minorCategoryTitle;
  final List<ProcessedMaterialItem> processedMaterialItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            minorCategoryTitle,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Expanded(
            child: Column(
              children: processedMaterialItems,
            ),
          ),
        ],
      ),
    );
  }
}

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
            !isHovered ? const MaterialItemHoverControls() : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class MaterialItemHoverControls extends StatelessWidget {
  const MaterialItemHoverControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const [
          HoverControlButton(
            tooltipMessage: 'Reduce amount.',
            iconType: Icons.remove,
          ),
          HoverControlButton(
            tooltipMessage: 'Increase amount.',
            iconType: Icons.add,
          ),
          HoverControlButton(
            tooltipMessage: 'Remove from list.',
            iconType: Icons.delete,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class HoverControlButton extends StatelessWidget {
  const HoverControlButton({
    Key? key,
    required this.tooltipMessage,
    required this.iconType,
    this.color,
  }) : super(key: key);

  final String tooltipMessage;
  final IconData iconType;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipMessage,
      preferBelow: false,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            iconType,
            size: 10,
            color: color ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
