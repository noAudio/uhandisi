import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/widgets/generated_lists/components/minor_category.dart';
import 'package:uhandisi/widgets/generated_lists/components/processed_material.dart';

class MajorCategory extends StatelessWidget {
  const MajorCategory({
    Key? key,
    required this.majorCategoryTitle,
    required this.minorCategories,
  }) : super(key: key);

  final String majorCategoryTitle;
  final List<ProcessedMaterialItem> minorCategories;

  @override
  Widget build(BuildContext context) {
    List<MinorCategory> minCategories = [
      MinorCategory(
        minorCategoryTitle: '1 Capacitors',
        processedMaterialItems: minorCategories,
      ),
      MinorCategory(
        minorCategoryTitle: '2 Capacitors',
        processedMaterialItems: minorCategories,
      ),
      MinorCategory(
        minorCategoryTitle: '3 Capacitors',
        processedMaterialItems: minorCategories,
      ),
    ];

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            majorCategoryTitle,
            style: GoogleFonts.poppins(
              fontSize: 24,
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: ScrollController(),
              itemCount: minCategories.length,
              itemBuilder: (context, index) {
                return minCategories[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}
