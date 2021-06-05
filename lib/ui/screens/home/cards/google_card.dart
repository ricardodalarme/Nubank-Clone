import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_outlined_button.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class GoogleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Google Pay',
      NuIcons.ic_card_nu,
      [
        Text(
          'Use o Google Pay com seus cartões Nubank',
          style: TextStyle(
            color: kTextColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 15),
        NuOutlinedButton('Regisrar meu cartão'),
      ],
    );
  }
}
