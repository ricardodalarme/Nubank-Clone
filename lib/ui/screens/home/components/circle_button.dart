import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Function() onTap;

  CircleButton(this.icon, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 48,
        margin: EdgeInsets.only(left: 8),
        decoration:
            BoxDecoration(color: kSecondaryColor, shape: BoxShape.circle),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
