import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/old_home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

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
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 15),
        const NuOutlinedButton('Registrar meu cartão'),
      ],
    );
  }
}
