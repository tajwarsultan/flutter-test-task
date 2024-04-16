import 'package:flutter/material.dart';
import 'package:test_task/constants.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    required this.title,
    required this.tapEvent,
    required this.color,
  });

  final String title;
  final GestureTapCallback tapEvent;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient:
              const LinearGradient(colors: [kGradentColor1, kGradentColor2])),
      child: TextButton(
        onPressed: tapEvent,
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.transparent),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 35, vertical: 25))),
        child: Text(
          title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
