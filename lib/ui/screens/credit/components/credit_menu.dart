import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class CreditMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;

  CreditMenu(this.title, this.icon, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 104,
        height: 104,
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: kPrimaryColor, size: 25),
              Text(title,
                  style: Theme.of(context)
                      .textTheme
                      .button!
                      .copyWith(fontWeight: FontWeight.normal)),
            ],
          ),
        ),
      ),
    );
  }
}
