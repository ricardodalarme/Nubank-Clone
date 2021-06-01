import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class GoogleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Google Pay',
      NuIcons.ic_card_nu,
      Column(
        children: [
          Text('Use o Google Pay com seus cartões Nubank'),
        ],
      ),
    );
  }
}
