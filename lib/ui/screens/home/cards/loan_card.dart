import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/screens/loan/loan_screen.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:page_transition/page_transition.dart';

class LoanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Empréstimo',
      NuIcons.nuds_ic_personal_loan,
      [
        SizedBox(height: 12),
        Text(
          'Valor disponível de até',
          style: Theme.of(context).textTheme.bodyText2!,
        ),
        SizedBox(height: 5),
        Text(
          'R\$ $kLoan',
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 15),
        NuOutlinedButton('Simular empréstimo'),
      ],
      onTap: () => Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 400),
              child: LoanScreen())),
    );
  }
}
