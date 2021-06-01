import 'package:flutter/material.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Conta',
      NuIcons.ic_money_coins,
      Column(
        children: [
          Text('Saldo disponível'),
          Text('R\$ $kBalance'),
        ],
      ),
    );
  }
}
