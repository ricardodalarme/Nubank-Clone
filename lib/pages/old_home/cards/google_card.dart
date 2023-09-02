import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/widgets/nu_outlined_button.dart';

class GoogleCard extends StatelessWidget {
  const GoogleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Google Pay',
      NuIcons.ic_card_nu,
      [
        Text(
          'Use o Google Pay com seus cartões Nubank',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 15),
        const NuOutlinedButton('Registrar meu cartão'),
      ],
    );
  }
}
