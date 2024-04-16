import 'package:flutter/material.dart';

import '../constants.dart';

class NavItem extends StatefulWidget {
  const NavItem({super.key, required this.title, required this.tapEvent});

  final String title;
  final GestureTapCallback tapEvent;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool underlined = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: InkWell(
        onTap: widget.tapEvent,
        hoverColor: kTextColor,
        onHover: (value) {
          setState(() {
            underlined = true;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            widget.title,
            style: TextStyle(
              color: kTextColor,
              fontWeight: FontWeight.w300,
              decoration: underlined ? TextDecoration.underline : null,
              decorationColor: kTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
