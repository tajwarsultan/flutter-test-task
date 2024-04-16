// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:test_task/responsive.dart';

import '../constants.dart';

class NewSection extends StatelessWidget {
  final String sectionNum;
  final String heading;
  final String photoUrl;
  final bool right;
  final bool enableColor;
  const NewSection(
      {super.key,
      required this.sectionNum,
      required this.heading,
      required this.photoUrl,
      this.enableColor = false,
      this.right = true});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
        padding: (!isMobile(context))
            ? const EdgeInsets.symmetric(horizontal: 80, vertical: 30)
            : const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        color: enableColor ? sectionBackgroundColor : null,
        child: Row(
          children: <Widget>[
            if ((isDesktop(context) || isTab(context)) && !right)
              Expanded(
                  child: Image.asset(
                photoUrl,
                height: size.height * 0.7,
              )),
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
                      photoUrl,
                      height: size.height * 0.3,
                    ),
                  RichText(
                      textAlign: !isMobile(context)
                          ? TextAlign.start
                          : TextAlign.center,
                      text: TextSpan(children: [
                        TextSpan(
                            text: sectionNum,
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 72 : 32,
                                fontWeight: FontWeight.w800,
                                color: kSectionTextColor)),
                        TextSpan(
                            text: heading,
                            style: TextStyle(
                                fontSize: isDesktop(context) ? 28 : 18,
                                color: kSectionTextColor)),
                      ])),
                  const SizedBox(height: 16),
                ],
              ),
            )),
            if ((isDesktop(context) || isTab(context)) && right)
              Expanded(
                  child: Image.asset(
                photoUrl,
                height: size.height * 0.7,
              ))
          ],
        ));
  }
}
