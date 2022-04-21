import 'package:flutter/material.dart';
import 'package:uhandisi/utils.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= FormFactor.mobile) {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: isMaterials
                    ? [
                        MajorCategory(
                          majorCategoryTitle: 'Manufactured Materials',
                          minorCategories: manList,
                          formFactorWidth: FormFactor.mobile,
                        ),
                        MajorCategory(
                          majorCategoryTitle: 'Encoded Materials',
                          minorCategories: encList,
                          formFactorWidth: FormFactor.mobile,
                        ),
                        MajorCategory(
                          majorCategoryTitle: 'Raw Materials',
                          minorCategories: rawList,
                          formFactorWidth: FormFactor.mobile,
                        ),
                      ]
                    : [
                        const Text(
                            'Please paste a link or list of materials into the material parser to be processed'),
                      ],
              ),
            ),
          );
        } else if (constraints.maxWidth <= FormFactor.laptop) {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isMaterials
                    ? [
                        MajorCategory(
                          majorCategoryTitle: 'Manufactured Materials',
                          minorCategories: manList,
                          formFactorWidth: FormFactor.tablet,
                        ),
                        MajorCategory(
                          majorCategoryTitle: 'Encoded Materials',
                          minorCategories: encList,
                          formFactorWidth: FormFactor.tablet,
                        ),
                        MajorCategory(
                          majorCategoryTitle: 'Raw Materials',
                          minorCategories: rawList,
                          formFactorWidth: FormFactor.tablet,
                        ),
                      ]
                    : [
                        const Text(
                            'Please add a link or list of materials above to be processed'),
                      ],
              ),
            ),
          );
        } else {
          return SizedBox(
            width: 900,
            height: 700,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: isMaterials
                    ? [
                        MajorCategory(
                          majorCategoryTitle: 'Manufactured Materials',
                          minorCategories: manList,
                          formFactorWidth: FormFactor.laptop,
                        ),
                        MajorCategory(
                          majorCategoryTitle: 'Encoded Materials',
                          minorCategories: encList,
                          formFactorWidth: FormFactor.laptop,
                        ),
                        MajorCategory(
                          majorCategoryTitle: 'Raw Materials',
                          minorCategories: rawList,
                          formFactorWidth: FormFactor.laptop,
                        ),
                      ]
                    : [
                        const Text(
                            'Please add a link or list of materials above to be processed'),
                      ],
              ),
            ),
          );
        }
      },
    );
  }
}
