import 'package:flutter/material.dart';
import 'package:uhandisi/utils.dart';
import 'package:uhandisi/widgets/generated_lists/generated_lists.dart';
import 'package:uhandisi/widgets/materials_parser/materials_parser.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';
import 'package:uhandisi/widgets/previous_lists/previous_lists.dart';
import 'package:uhandisi/widgets/save_list/save_list.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // const NavArea(),
          // const MaterialsParser(isCoriolis: false),
          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth <= FormFactor.mobile) {
                  return const GeneratedLists();
                } else if (constraints.maxWidth <= FormFactor.laptop) {
                  return const GeneratedLists();
                } else if (constraints.maxWidth <= FormFactor.desktop) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      GeneratedLists(),
                    ],
                  );
                } else {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SaveList(),
                      GeneratedLists(),
                      PreviousLists(),
                    ],
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
