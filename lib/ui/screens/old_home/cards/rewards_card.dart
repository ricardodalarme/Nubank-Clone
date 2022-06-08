import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/old_home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';

class RewardsCard extends StatelessWidget {
  const RewardsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Rewards',
      Icons.card_giftcard,
      [
        Text(
          'Pague compras com pontos que nunca expiram.',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        const SizedBox(height: 15),
        const NuOutlinedButton('Conhecer'),
      ],
      highlight: true,
    );
  }
}
