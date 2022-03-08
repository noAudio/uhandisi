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
          Column(
            children: processedMaterialItems,
          ),
        ],
      ),
    );
  }
}

class ProcessedMaterialItem extends StatelessWidget {
  const ProcessedMaterialItem({
    Key? key,
    required this.materialText,
  }) : super(key: key);

  final String materialText;
  final bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: false, onChanged: (value) {}),
        Text(materialText, style: GoogleFonts.poppins(fontSize: 16)),
        // isHovered ? const MaterialItemHoverControls() : const SizedBox(),
      ],
    );
  }
}

class MaterialItemHoverControls extends StatelessWidget {
  const MaterialItemHoverControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.remove),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
        ),
        InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.delete, color: Colors.red),
          ),
        ),
      ],
    );
  }
}
