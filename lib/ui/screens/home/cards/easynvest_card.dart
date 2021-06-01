import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class EasynvestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Investimento Easynvest',
      NuIcons.ic_yield,
      Column(
        children: [
          Text(
              'Conheça a Easynvest e invista com taxa zero de corretagem e sem burocracias!'),
        ],
      ),
    );
  }
}
