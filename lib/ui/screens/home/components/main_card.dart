import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/styles.dart';

class MainCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> body;
  final bool highlight;

  MainCard(this.title, this.icon, this.body, {this.highlight = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: Colors.white),
      margin: EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(23),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: kSecondaryTextColor),
                SizedBox(width: 15),
                Text(title,
                    style: highlight
                        ? TextStyle(
                            fontSize: 20,
                            color: kPrimaryColor,
                          )
                        : kSubTitleStyle),
              ],
            ),
            SizedBox(height: 17),
            ...body,
          ],
        ),
      ),
    );
  }
}
