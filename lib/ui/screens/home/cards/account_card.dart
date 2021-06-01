import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:nubank_clone/core/constants.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Conta',
      NuIcons.ic_money_coins,
      [
        Text(
          'Saldo disponível',
          style: TextStyle(
            color: kSecondaryTextColor,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'R\$ $kBalance',
          style: TextStyle(
            color: kTextColor,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
