import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';

class InsuranceCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Seguro de vida',
      Icons.card_giftcard,
      Column(
        children: [
          Text('Conheça Nubank Vida: um seguro simples que cabe no seu bolso.'),
        ],
      ),
    );
  }
}
