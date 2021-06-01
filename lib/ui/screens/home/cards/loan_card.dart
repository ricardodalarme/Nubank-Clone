import 'package:flutter/material.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class LoanCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
     'Empréstimo',
      NuIcons.nuds_ic_personal_loan,
      Column(
        children: [
          Text('Fatura atual'),
          Text('R\$ $kInvoce'),
          Text('Limite disponível $kLimit'),
        ],
      ),
    );
  }
}
