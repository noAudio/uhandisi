import 'package:flutter/material.dart';
import 'package:uhandisi/widgets/generated_lists/components/major_category.dart';

class GeneratedLists extends StatelessWidget {
  const GeneratedLists({
    Key? key,
  }) : super(key: key);

  // TODO: Watch list of materials through state.
  final bool isMaterials = true;

  final manList = const <Widget>[
    Text('Galvanised Alloys'),
    Text('Grid Resistors'),
    Text('Focus Crystals'),
    Text('Core Dynamic Composites'),
    Text('Pharmaceutical Isolators'),
    Text('Pharmaceutical Isolators'),
    Text('Pharmaceutical Isolators'),
    Text('Pharmaceutical Isolators'),
    Text('Pharmaceutical Isolators'),
    Text('Pharmaceutical Isolators'),
    Text('Pharmaceutical Isolators'),
    Text('Pharmaceutical Isolators'),
  ];
  final encList = const <Widget>[
    Text('Modified Embedded Firmware'),
    Text('Datamined Wake Exceptions'),
    Text('Untypical Shield Scans'),
    Text('Disrupted Wake Echoes'),
    Text('Cracked Industrial Firmware'),
    Text('Cracked Industrial Firmware'),
    Text('Cracked Industrial Firmware'),
    Text('Cracked Industrial Firmware'),
    Text('Cracked Industrial Firmware'),
    Text('Cracked Industrial Firmware'),
    Text('Cracked Industrial Firmware'),
    Text('Cracked Industrial Firmware'),
  ];
  final rawList = const <Widget>[
    Text('Tin'),
    Text('Selenium'),
    Text('Vanadium'),
    Text('Polonium'),
    Text('Iron'),
    Text('Iron'),
    Text('Iron'),
    Text('Iron'),
    Text('Iron'),
    Text('Iron'),
    Text('Iron'),
    Text('Iron'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1150,
      height: 700,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
