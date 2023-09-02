import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/home/widgets/main_card.dart';

class InsuranceCard extends StatelessWidget {
  const InsuranceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Seguro de vida',
      [
        Text(
          'Conheça Nubank Vida: um seguro simples e que cabe no bolso.',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
      ],
      onTap: () {},
      icon: MdiIcons.heartOutline,
    );
  }
}
