import 'package:flutter/material.dart';
import 'package:nubank_clone/theme/app_colors.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;

  const MenuButton(
    this.title,
    this.icon, {
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 88,
        height: 96,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: AppColors.secondary,
        ),
        margin: const EdgeInsets.only(right: 8, top: 15),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(icon, color: Colors.white),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .caption
                    ?.copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
