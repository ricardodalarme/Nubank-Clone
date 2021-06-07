import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class GoogleCard extends StatelessWidget {
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
        SizedBox(height: 15),
        NuOutlinedButton('Regisrar meu cartão'),
      ],
    );
  }
}
