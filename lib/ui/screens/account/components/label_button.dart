import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onPressed;

  LabelButton(this.label, this.icon, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: Column(
        children: [
          ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              shape: CircleBorder(),
              primary: kSecondaryTextColor,
              fixedSize: Size(60, 60),
              elevation: 0,
            ),
            child: Icon(
              icon,
              color: kTextColor,
            ),
          ),
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          ),
        ],
      ),
    );
  }
}
