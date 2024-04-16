import 'package:flutter/material.dart';

import 'package:test_task/components/header.dart';
import 'package:test_task/components/section.dart';
import 'package:test_task/components/toggle.dart';

import 'package:test_task/responsive.dart';

import '../../components/hero_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, kToolbarHeight + 20),
        child: Header(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(minHeight: size.height),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const HeroSection(),
                _segmentedSection(context),
                const NewSection(
                  sectionNum: "1.",
                  heading: "Hello world",
                  right: false,
                  photoUrl: "assets/images/main_1.png",
                ),
                const NewSection(
                  sectionNum: "2.",
                  heading: "Hello world",
                  right: true,
                  enableColor: true,
                  photoUrl: "assets/images/main_1.png",
                ),
                const NewSection(
                  sectionNum: "3.",
                  heading: "Hello world",
                  right: false,
                  photoUrl: "assets/images/main_1.png",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _segmentedSection(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        width:
            !isMobile(context) ? MediaQuery.of(context).size.width * 0.8 : null,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomSegmentedControl(),
            const SizedBox(height: 15),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: isDesktop(context) ? 54 : 32,
                fontWeight: FontWeight.w800,
                color: Colors
                    .black, // Update this if you have a specific color in mind
              ),
            ),
          ],
        ),
      ),
    );
  }
}
