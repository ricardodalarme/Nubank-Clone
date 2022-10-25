import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final Function() onTap;

  const CircleButton(
    this.icon,
    this.onTap, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48,
        width: 48,
        margin: const EdgeInsets.only(left: 8),
        decoration: const BoxDecoration(
          color: AppColors.secondary,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
