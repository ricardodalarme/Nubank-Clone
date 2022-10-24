import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/pages/account/account_screen.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/theme/app_colors.dart';
import 'package:nubank_clone/theme/icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    final viewValues = Provider.of<AppState>(context).viewValues;

    return MainCard(
      'Conta',
      NuIcons.ic_money_coins,
      [
        Text(
          'Saldo disponível',
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(height: 13),
        if (viewValues)
          Container(
            color: AppColors.unview,
            height: 29,
            width: double.infinity,
          )
        else
          Text('R\$ $kBalance', style: Theme.of(context).textTheme.headline5),
      ],
      onTap: () => Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 400),
          child: const AccountScreen(),
        ),
      ),
    );
  }
}
