import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/screens/loan/loan_screen.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class LoanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewValues = Provider.of<AppState>(context).viewValues;

    return MainCard(
      'Empréstimo',
      NuIcons.nuds_ic_personal_loan,
      [
        SizedBox(height: 12),
        if (viewValues)
          Container(
            color: kUnviewColor,
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
              SizedBox(height: 5),
              Text(
                'R\$ $kLoan',
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
            ],
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
