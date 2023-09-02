import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/mocked_values.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/pages/home/widgets/main_card.dart';
import 'package:nubank_clone/pages/loan/loan_screen.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
import 'package:provider/provider.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    final viewValues = Provider.of<AppState>(context).viewValues;

    return MainCard(
      'Empréstimo',
      [
        if (!viewValues)
          Container(
            color: AppColors.unview,
            height: 39,
            width: double.infinity,
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Valor disponível de até',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 5),
              Text(
                'R\$ ${MockedValues.loan}',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
      ],
      icon: NuIcons.nuds_ic_personal_loan,
      onTap: () => context.push(
        const LoanScreen(),
      ),
    );
  }
}
