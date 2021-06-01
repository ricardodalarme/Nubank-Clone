import 'package:flutter/material.dart';

class NuCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Widget body;
  final bool highlight = false;

  NuCard(this.title, this.icon, this.body);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: Colors.white),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon),
                Text(title),
              ],
            ),
            body,
          ],
        ),
      ),
    );
  }
}
