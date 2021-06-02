import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_outlined_button.dart';
import 'package:nubank_clone/core/constants.dart';

class LoanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Empréstimo',
      NuIcons.nuds_ic_personal_loan,
      [
        SizedBox(height: 10),
        Text(
          'Valor disponível de até',
          style: TextStyle(
            color: kTextColor,
            fontSize: 15,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'R\$ $kLoan',
          style: TextStyle(
            color: kTextColor,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        NuOutlinedButton('Simular empréstimo'),
      ],
    );
  }
}
