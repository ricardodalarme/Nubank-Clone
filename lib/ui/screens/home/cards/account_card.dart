import 'package:flutter/material.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/account/account_screen.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
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
          style: Theme.of(context).textTheme.caption,
        ),
        SizedBox(height: 10),
        Text(
          'R\$ $kBalance',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
      onTap: () => MyRouter.pushPage(context, AccountScreen()),
    );
  }
}
