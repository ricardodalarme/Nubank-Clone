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
      margin: EdgeInsets.only(right: 10),
      width: 82,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            onPressed: () => onPressed,
            style: ElevatedButton.styleFrom(
              primary: kLabelButtonColor,
              shape: CircleBorder(),
              fixedSize: Size(72, 72),
              elevation: 0,
            ),
            child: Icon(
              icon,
              color: kTextColor,
            ),
          ),
          SizedBox(height: 12),
          Text(label,
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 13)),
        ],
      ),
    );
  }
}
