import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:nubank_clone/core/constants.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return NuCard(
      'Cartão de Crédito',
      NuIcons.ic_card_nu,
      [
        Text(
          'Fatura atual',
          style: TextStyle(color: kSecondaryTextColor),
        ),
        SizedBox(height: 15),
        Text(
          'R\$ $kInvoce',
          style: TextStyle(
            color: kInvoiceColor,
            fontSize: 28,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Limite disponível R\$ $kLimit',
          style: TextStyle(color: kTextColor),
        ),
      ],
    );
  }
}
