import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/pages/loan/loan_screen.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/theme/app_colors.dart';
import 'package:nubank_clone/theme/icons.dart';
import 'package:nubank_clone/widgets/nu_outlined_button.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({super.key});

  @override
  Widget build(BuildContext context) {
    final viewValues = Provider.of<AppState>(context).viewValues;

    return MainCard(
      'Empréstimo',
      NuIcons.nuds_ic_personal_loan,
      [
        const SizedBox(height: 12),
        if (viewValues)
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
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 5),
              Text(
                'R\$ $kLoan',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        const SizedBox(height: 15),
        const NuOutlinedButton('Simular empréstimo'),
      ],
      onTap: () => Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 400),
          child: const LoanScreen(),
        ),
      ),
    );
  }
}
