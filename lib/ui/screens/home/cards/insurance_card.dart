import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class InsuranceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Seguro de vida',
      Icons.card_giftcard,
      [
        Text(
          'Conheça Nubank Vida: um seguro simples que cabe no seu bolso.',
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
