import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;

  CircleButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: kSecondaryColor,
        fixedSize: Size(50, 50),
        elevation: 0,
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}
