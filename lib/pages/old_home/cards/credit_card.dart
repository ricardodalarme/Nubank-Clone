import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/mocked_values.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/pages/credit/credit_screen.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
import 'package:provider/provider.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final viewValues = Provider.of<AppState>(context).viewValues;

    return MainCard(
      'Cartão de Crédito',
      NuIcons.ic_card_nu,
      [
        Text(
          'Fatura atual',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(height: 13),
        if (viewValues)
          Container(
            color: AppColors.unview,
            height: 51,
            width: double.infinity,
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'R\$ ${MockedValues.invoice}',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(color: AppColors.invoice),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  text: 'Limite disponível ',
                  style: Theme.of(context).textTheme.bodyMedium,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'R\$ ${MockedValues.limit}',
                      style: TextStyle(
                        color: AppColors.limit,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ],
      onTap: () => context.push(
        const CreditScreen(),
      ),
    );
  }
}
