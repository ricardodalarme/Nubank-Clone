import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';

class FilledChip extends StatelessWidget {
  final String value;

  const FilledChip(
    this.value, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: AppColors.primary,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 11),
      label: Text(
        value,
        style: Theme.of(context)
            .textTheme
            .bodyMedium
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
      ),
    );
  }
}
