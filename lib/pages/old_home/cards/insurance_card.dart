import 'package:flutter/material.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/widgets/nu_outlined_button.dart';

class InsuranceCard extends StatelessWidget {
  const InsuranceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Seguro de vida',
      Icons.card_giftcard,
      [
        Text(
          'Conheça Nubank Vida: um seguro simples que cabe no seu bolso.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 15),
        const NuOutlinedButton('Conhecer'),
      ],
      highlight: true,
    );
  }
}
