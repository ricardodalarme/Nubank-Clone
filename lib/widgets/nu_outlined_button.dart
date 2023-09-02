import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';

class NuOutlinedButton extends StatelessWidget {
  final String value;

  const NuOutlinedButton(
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: null,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
        side: const BorderSide(color: AppColors.primary, width: 0.5),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      ),
      child: Text(
        value.toUpperCase(),
        style: Theme.of(context)
            .textTheme
            .bodySmall
            ?.copyWith(color: AppColors.primary, fontWeight: FontWeight.bold),
      ),
    );
  }
}
