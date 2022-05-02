import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/generated_lists/generated_lists.dart';
import 'package:uhandisi/widgets/materials_parser/materials_parser.dart';
import 'package:uhandisi/widgets/nav/nav_area.dart';
import 'package:uhandisi/widgets/previous_lists/previous_lists.dart';

class MobileUI extends StatefulWidget {
  const MobileUI({
    Key? key,
    required this.isMobile,
  }) : super(key: key);

  final bool isMobile;

  @override
  State<MobileUI> createState() => _MobileUIState();
}

class _MobileUIState extends State<MobileUI> {
  static int _selectedIndex = 0;
  bool isFAB = false;

  final List<Widget> _widgetOptions = [
    const MaterialsParser(
      isMobile: true,
      isCoriolis: false,
    ),
    Column(
      children: const [
        Expanded(
          child: GeneratedLists(),
        ),
      ],
    ),
    const PreviousLists(
      isMobile: true,
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      isFAB = index == 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const NavArea(
          isMobile: true,
        ),
        backgroundColor: Colors.white,
      ),
      floatingActionButton: isFAB
          ? FloatingActionButton.small(
              // TODO: Handle saving logic
              onPressed: () {},
              child: const Icon(Icons.save),
            )
          : null,
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box),
            label: 'Generated list',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Saved lists',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
      backgroundColor: Colors.white,
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
