import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/nu_icons.dart';

class MainCard extends StatelessWidget {
  final String title;
  final IconData? icon;
  final List<Widget> body;
  final bool? hideDivider;
  final VoidCallback? onTap;

  const MainCard(
    this.title,
    this.body, {
    this.icon,
    this.onTap,
    this.hideDivider = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(visible: icon != null, child: Icon(icon)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 50),
                      const Icon(NuIcons.abc_ic_go_search_api_material),
                    ],
                  ),
                  const SizedBox(height: 5),
                  ...body,
                ],
              ),
            ),
            Visibility(
              visible: !hideDivider!,
              child: const Divider(height: 2, thickness: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
