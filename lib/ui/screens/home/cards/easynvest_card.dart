import 'package:flutter/material.dart';
import 'package:nubank_clone/core/constants.dart';
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
          Text('Fatura atual'),
          Text('R\$ $kInvoce'),
          Text('Limite disponível $kLimit', style: TextStyle(fontWeight: FontWeight.normal),),
        ],
      ),
    );
  }
}
