import 'package:flutter/material.dart';

class MaterialItemHoverControls extends StatelessWidget {
  const MaterialItemHoverControls({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: const [
          HoverControlButton(
            tooltipMessage: 'Reduce amount.',
            iconType: Icons.remove,
          ),
          HoverControlButton(
            tooltipMessage: 'Increase amount.',
            iconType: Icons.add,
          ),
          HoverControlButton(
            tooltipMessage: 'Remove from list.',
            iconType: Icons.delete,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}

class HoverControlButton extends StatelessWidget {
  const HoverControlButton({
    Key? key,
    required this.tooltipMessage,
    required this.iconType,
    this.color,
  }) : super(key: key);

  final String tooltipMessage;
  final IconData iconType;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltipMessage,
      preferBelow: false,
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            iconType,
            size: 10,
            color: color ?? Colors.black,
          ),
        ),
      ),
    );
  }
}
