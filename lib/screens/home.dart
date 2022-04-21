import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= FormFactor.mobile) {
          return Scaffold(
            appBar: AppBar(
              title: const NavArea(
                isMobile: true,
              ),
              backgroundColor: Colors.white,
            ),
            bottomNavigationBar: BottomNavigationBar(items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.saved_search), label: 'One'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.saved_search), label: 'One'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.saved_search), label: 'One'),
            ]),
            backgroundColor: Colors.white,
            body: Column(
              children: const [
                Expanded(
                  child: GeneratedLists(),
                ),
              ],
            ),
          );
        } else if (constraints.maxWidth <= FormFactor.laptop) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: const [
                Expanded(
                  child: GeneratedLists(),
                ),
              ],
            ),
          );
        } else {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                const NavArea(
                  isMobile: false,
                ),
                const MaterialsParser(isCoriolis: false),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      SaveList(),
                      GeneratedLists(),
                      PreviousLists(),
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

// Scaffold(
//             backgroundColor: Colors.white,
//             body: Column(
//               children: [
//                 // const NavArea(),
//                 // const MaterialsParser(isCoriolis: false),
//                 Expanded(
//                   child: LayoutBuilder(
//                     builder:
//                         (BuildContext context, BoxConstraints constraints) {
//                       if (constraints.maxWidth <= FormFactor.mobile) {
//                         return const GeneratedLists();
//                       } else if (constraints.maxWidth <= FormFactor.laptop) {
//                         return const GeneratedLists();
//                       } else if (constraints.maxWidth <= FormFactor.desktop) {
//                         return Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const [
//                             GeneratedLists(),
//                           ],
//                         );
//                       } else {
//                         return Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const [
//                             SaveList(),
//                             GeneratedLists(),
//                             PreviousLists(),
//                           ],
//                         );
//                       }
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           );