import 'package:flutter/material.dart';

class NuMenu extends StatelessWidget {
  final String title;
  final IconData icon;

  NuMenu(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 70,
      color: Colors.purple,
      margin: EdgeInsets.all(5),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon),
                Text(title),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
