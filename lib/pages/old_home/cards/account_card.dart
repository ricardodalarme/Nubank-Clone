import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/mocked_values.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/pages/account/account_screen.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
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
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 13),
        if (viewValues)
          Container(
            color: AppColors.unview,
            height: 29,
            width: double.infinity,
          )
        else
          Text(
            'R\$ ${MockedValues.balance}',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
      ],
      onTap: () => context.push(
        const AccountScreen(),
      ),
    );
  }
}
