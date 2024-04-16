import 'package:flutter/material.dart';
import 'menu_item.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            spreadRadius: 2,
            blurRadius: 4,
          )
        ],
      ),
      child: Row(
        children: <Widget>[
          const Spacer(),
          NavItem(
            title: 'Login',
            tapEvent: () {},
          ),
        ],
      ),
    );
  }
}
