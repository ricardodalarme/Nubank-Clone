import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;

  MenuButton(this.title, this.icon, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
              Text(
                title,
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
