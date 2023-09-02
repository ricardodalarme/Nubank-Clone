import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/nu_icons.dart';

class PixMenu extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  const PixMenu(
    this.text,
    this.icon, {
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        color: AppColors.labelButton,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 72,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: <Widget>[
                Icon(icon, color: AppColors.secondaryText),
                const SizedBox(width: 20),
                Text(
                  text,
                  style: Theme.of(context).textTheme.labelLarge,
                ),
              ],
            ),
            const Icon(
              NuIcons.abc_ic_go_search_api_material,
              color: AppColors.secondaryText,
            ),
          ],
        ),
      ),
    );
  }
}
