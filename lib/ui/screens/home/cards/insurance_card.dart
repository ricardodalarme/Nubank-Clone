import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_card.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_outlined_button.dart';

class InsuranceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Seguro de vida',
      Icons.card_giftcard,
      [
        Text('Conheça Nubank Vida: um seguro simples que cabe no seu bolso.'),
        SizedBox(height: 15),
        NuOutlinedButton('Conhecer'),
      ],
      highlight: true,
    );
  }
}
