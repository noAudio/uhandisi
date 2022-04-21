import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/utils.dart';
import 'package:uhandisi/widgets/generated_lists/components/minor_category.dart';
import 'package:uhandisi/widgets/generated_lists/components/processed_material.dart';

class MajorCategory extends StatelessWidget {
  const MajorCategory({
    Key? key,
    required this.majorCategoryTitle,
    required this.minorCategories,
    required this.formFactorWidth,
  }) : super(key: key);

  final String majorCategoryTitle;
  final List<ProcessedMaterialItem> minorCategories;
  final double formFactorWidth;

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
              fontSize: formFactorWidth == FormFactor.mobile
                  ? 18
                  : formFactorWidth == FormFactor.tablet
                      ? 20
                      : 24,
              fontWeight: FontWeight.bold,
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
