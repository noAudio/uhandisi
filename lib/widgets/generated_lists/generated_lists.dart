import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/generated_lists/components/major_category.dart';
import 'package:uhandisi/widgets/generated_lists/mock_data.dart';

class GeneratedLists extends StatelessWidget {
  const GeneratedLists({
    Key? key,
  }) : super(key: key);

  // TODO: Watch list of materials through state.
  final bool isMaterials = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1200,
      height: 700,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: isMaterials
              ? [
                  MajorCategory(
                      majorCategoryTitle: 'Manufactured Materials',
                      minorCategories: manList),
                  MajorCategory(
                      majorCategoryTitle: 'Encoded Materials',
                      minorCategories: encList),
                  MajorCategory(
                      majorCategoryTitle: 'Raw Materials',
                      minorCategories: rawList),
                ]
              : [
                  const Text(
                      'Please add a link or list of materials above to be processed'),
                ],
        ),
      ),
    );
  }
}
