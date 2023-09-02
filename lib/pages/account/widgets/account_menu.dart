import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/nu_icons.dart';

class AccountMenu extends StatelessWidget {
  final String title;
  final Widget information;
  final IconData icon;
  final VoidCallback? onTap;

  const AccountMenu(
    this.title,
    this.information,
    this.icon, {
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: <Widget>[
              Icon(icon),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 7),
                  information,
                ],
              ),
            ],
          ),
          GestureDetector(
            child: const Icon(
              NuIcons.abc_ic_go_search_api_material,
              color: AppColors.secondaryText,
            ),
          ),
        ],
      ),
    );
  }
}
