import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onPressed;

  LabelButton(this.label, this.icon, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => onPressed,
          style: ElevatedButton.styleFrom(
            primary: kLabelButtonColor,
            shape: CircleBorder(),
            fixedSize: Size(70, 70),
            elevation: 0,
          ),
          child: Icon(
            icon,
            color: kTextColor,
          ),
        ),
        SizedBox(height: 12),
        Text(label, style: Theme.of(context).textTheme.button),
      ],
    );
  }
}
