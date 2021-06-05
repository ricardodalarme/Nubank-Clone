import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class RewardsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Rewards',
      Icons.card_giftcard,
      [
        Text('Apague compras com pontos que nunca expiram.',
          style: TextStyle(
            color: kTextColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 15),
        NuOutlinedButton('Conhecer'),
      ],
      highlight: true,
    );
  }
}
