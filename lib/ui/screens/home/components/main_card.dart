import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class MainCard extends StatelessWidget {
  final String title;
  final IconData? icon;
  final List<Widget> body;
  final bool? hideDivider;
  final Function()? onTap;

  MainCard(this.title, this.body,
      {this.icon, this.onTap, this.hideDivider = false});

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
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(visible: icon != null, child: Icon(icon)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(title,
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(fontWeight: FontWeight.w500)),
                      SizedBox(height: 50),
                      Icon(NuIcons.abc_ic_go_search_api_material)
                    ],
                  ),
                  SizedBox(height: 5),
                  ...body,
                ],
              ),
            ),
            Visibility(
              visible: !hideDivider!,
              child: Divider(height: 2, thickness: 0.5),
            ),
          ],
        ),
      ),
    );
  }
}
