import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:nubank_clone/core/constants.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Cartão de Crédito',
      NuIcons.ic_card_nu,
      [
        Text(
          'Fatura atual',
          style: TextStyle(
            color: kSecondaryTextColor,
            fontSize: 13,
          ),
        ),
        SizedBox(height: 10),
        Text(
          'R\$ $kInvoce',
          style: TextStyle(
            color: kInvoiceColor,
            fontSize: 26,
            fontWeight: FontWeight.w800,
          ),
        ),
        SizedBox(height: 5),
        RichText(
          text: TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Limite disponível ',
                style: TextStyle(color: kTextColor),
              ),
              TextSpan(
                text: 'R\$ $kLimit',
                style:
                    TextStyle(color: kLimitColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
