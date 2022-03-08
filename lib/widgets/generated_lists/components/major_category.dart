import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uhandisi/widgets/generated_lists/components/minor_category.dart';

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
            child: GridView.count(
              crossAxisCount: 1,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              primary: false,
              children: [
                MinorCategory(
                  minorCategoryTitle: 'Capacitors',
                  processedMaterialItems: minorCategories,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
