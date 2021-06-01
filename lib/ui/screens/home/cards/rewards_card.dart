import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';

class RewardsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Rewards',
      Icons.card_giftcard,
      Column(
        children: [
          Text('Apague compras com pontos que nunca expiram.'),
        ],
      ),
    );
  }
}
