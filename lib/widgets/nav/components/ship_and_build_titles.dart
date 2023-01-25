import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShipAndBuildTitles extends StatefulWidget {
  const ShipAndBuildTitles({
    Key? key,
    this.buildName,
    required this.shipName,
  }) : super(key: key);

  final String? buildName;
  final String shipName;

  @override
  State<ShipAndBuildTitles> createState() => _ShipAndBuildTitlesState();
}

class _ShipAndBuildTitlesState extends State<ShipAndBuildTitles> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final finalBuildName = widget.buildName;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Title(
          title: widget.shipName.toUpperCase(),
          isBuild: false,
        ),
        const SizedBox(width: 5.0),
        if (finalBuildName != null)
          Row(
            children: [
              Title(
                title: finalBuildName,
                isBuild: true,
              ),
              if (!isClicked)
                IconButton(
                  splashRadius: 14,
                  iconSize: 14,
                  onPressed: () {
                    // TODO: Add logic to handle clipboard
                    setState(() {
                      isClicked = true;
                    });
                  },
                  icon: const Icon(Icons.copy),
                  tooltip: 'Click to copy build name.',
                ),
              AnimatedOpacity(
                opacity: isClicked ? 1.0 : 0.0,
                onEnd: () {
                  setState(() {
                    isClicked = false;
                  });
                },
                duration: const Duration(milliseconds: 500),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.done,
                        color: Colors.green,
                        size: 14,
                      ),
                      Text('Copied to clipboard!'),
                    ],
                  ),
                ),
              ),
            ],
          ),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
    required this.title,
    required this.isBuild,
  }) : super(key: key);

  final String title;
  final bool isBuild;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: GoogleFonts.josefinSans(
        fontSize: 18,
        fontStyle: isBuild ? FontStyle.italic : FontStyle.normal,
        fontWeight: isBuild ? FontWeight.normal : FontWeight.bold,
      ),
    );
  }
}
