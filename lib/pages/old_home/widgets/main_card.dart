import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';

class MainCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final List<Widget> body;
  final bool highlight;
  final VoidCallback? onTap;

  const MainCard(
    this.title,
    this.icon,
    this.body, {
    this.highlight = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(3)),
          color: Colors.white,
        ),
        margin: const EdgeInsets.only(bottom: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 23, horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: AppColors.secondaryText),
                  const SizedBox(width: 16),
                  Text(
                    title,
                    style: highlight
                        ? Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(color: AppColors.primary)
                        : Theme.of(context).textTheme.titleSmall!,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ...body,
            ],
          ),
        ),
      ),
    );
  }
}
