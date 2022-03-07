import 'package:flutter/material.dart';
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
          const NavArea(),
          const MaterialsParser(
            isCoriolis: false,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SaveList(),
              GeneratedLists(),
              PreviousLists(),
            ],
          ),
        ],
      ),
    );
  }
}

class GeneratedLists extends StatelessWidget {
  const GeneratedLists({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
