import 'package:flutter/material.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/account/account_screen.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:nubank_clone/core/constants.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Conta',
      NuIcons.ic_money_coins,
      [
        Text(
          'Saldo disponível',
          style: TextStyle(
            color: kSecondaryTextColor,
            fontSize: 13,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'R\$ $kBalance',
          style: TextStyle(
            color: kTextColor,
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
      onTap: () => MyRouter.pushPage(context, AccountScreen()),
    );
  }
}
