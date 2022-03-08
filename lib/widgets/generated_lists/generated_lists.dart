import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneratedLists extends StatelessWidget {
  const GeneratedLists({
    Key? key,
  }) : super(key: key);

  // TODO: Watch list of materials through state.
  final bool isMaterials = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: 950,
      height: 680,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8.0, 30.0, 8.0, 8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: !isMaterials
              ? [
                  Column(
                    children: [
                      Text(
                        'Manufactured Materials',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                        ),
                      ),
                      // GridView.count(
                      //   crossAxisCount: 2,
                      //   mainAxisSpacing: 5,
                      //   crossAxisSpacing: 5,
                      //   children: const [
                      //     Text('1'),
                      //     Text('2'),
                      //     Text('3'),
                      //     Text('4'),
                      //     Text('5'),
                      //   ],
                      // ),
                    ],
                  ),
                  Column(),
                  Column(),
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
