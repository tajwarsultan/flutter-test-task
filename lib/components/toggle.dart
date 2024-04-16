import 'package:flutter/material.dart';
import 'package:test_task/constants.dart';

class CustomSegmentedControl extends StatefulWidget {
  const CustomSegmentedControl({super.key});

  @override
  _CustomSegmentedControlState createState() => _CustomSegmentedControlState();
}

class _CustomSegmentedControlState extends State<CustomSegmentedControl> {
  List<bool> isSelected = [true, false, false];
  int? hoverIndex;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => hoverIndex = null);
      },
      onExit: (_) {
        setState(() => hoverIndex = null);
      },
      child: ToggleButtons(
        isSelected: isSelected,
        onPressed: (index) {
          setState(() {
            for (int i = 0; i < isSelected.length; i++) {
              isSelected[i] = i == index;
            }
          });
        },
        fillColor: selectedColor,
        hoverColor: hoverColor,
        borderRadius: BorderRadius.circular(25),
        children: List.generate(isSelected.length, (index) {
          final bool isHovering = hoverIndex == index;
          final Color bgColor = isSelected[index]
              ? selectedColor
              : (isHovering ? hoverColor : defaultColor);
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              'Hello world ${index + 1}',
              style: TextStyle(
                color: bgColor == selectedColor ? Colors.white : null,
              ),
            ),
          );
        }),
      ),
    );
  }
}
