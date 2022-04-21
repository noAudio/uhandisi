import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/widgets/generated_lists/components/processed_material.dart';

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
      padding: const EdgeInsets.all(2.0),
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
