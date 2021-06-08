import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class PixMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function()? onTap;

  const PixMenu(this.text, this.icon, {Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: kLabelButtonColor,
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                Icon(icon, color: kSecondaryTextColor),
                SizedBox(width: 20),
                Text(
                  text,
                  style: Theme.of(context).textTheme.button,
                ),
              ],
            ),
            Icon(NuIcons.nuds_ic_chevron_right, color: kSecondaryTextColor),
          ],
        ),
      ),
    );
  }
}
