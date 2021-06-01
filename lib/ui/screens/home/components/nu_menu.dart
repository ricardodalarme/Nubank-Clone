import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class NuMenu extends StatelessWidget {
  final String title;
  final IconData icon;

  NuMenu(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 88,
      height: 95,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: kSecondaryColor,
      ),
      margin: EdgeInsets.only(right: 8, top: 15),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: Colors.white),
            Text(title, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
