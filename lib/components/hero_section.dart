import 'package:flutter/material.dart';
import 'package:test_task/components/main_button.dart';
import 'package:test_task/responsive.dart';

import '../constants.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: (!isMobile(context))
            ? const EdgeInsets.symmetric(horizontal: 80, vertical: 30)
            : const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        color: sectionBackgroundColor,
        child: Row(
          children: <Widget>[
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  if (isMobile(context))
                    Image.asset(
                      'assets/images/main_1.png',
                      height: size.height * 0.3,
                    ),
                  Text(
                    'Deine Job Website',
                    textAlign:
                        !isMobile(context) ? TextAlign.start : TextAlign.center,
                    style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 16),
                  Wrap(
                    runSpacing: 10,
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      MainButton(
                        title: 'Kostenlos Registrieren',
                        color: kSecondaryColor,
                        tapEvent: () {},
                      )
                    ],
                  )
                ],
              ),
            )),
            if (isDesktop(context) || isTab(context))
              Expanded(
                  child: Image.asset(
                'assets/images/main_3.jpg',
                height: size.height * 0.7,
              ))
          ],
        ));
  }
}
