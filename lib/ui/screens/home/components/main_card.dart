import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class MainCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> body;
  final bool highlight;
  final Function()? onTap;

  MainCard(this.title, this.icon, this.body,
      {this.highlight = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            color: Colors.white),
        margin: EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: kSecondaryTextColor),
                  SizedBox(width: 16),
                  Text(title,
                      style: highlight
                          ? TextStyle(
                              fontSize: 20,
                              color: kPrimaryColor,
                            )
                          : Theme.of(context).textTheme.bodyText2),
                ],
              ),
              SizedBox(height: 16),
              ...body,
            ],
          ),
        ),
      ),
    );
  }
}
