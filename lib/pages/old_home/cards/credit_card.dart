import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/pages/credit/credit_screen.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/theme/colors.dart';
import 'package:nubank_clone/theme/icons.dart';
import 'package:page_transition/page_transition.dart';
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
          style: Theme.of(context).textTheme.caption,
        ),
        const SizedBox(height: 13),
        if (viewValues)
          Container(
            color: kUnviewColor,
            height: 51,
            width: double.infinity,
          )
        else
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'R\$ $kInvoce',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: kInvoiceColor),
              ),
              const SizedBox(height: 5),
              RichText(
                text: TextSpan(
                  text: 'Limite disponível ',
                  style: Theme.of(context).textTheme.bodyText2,
                  children: const <TextSpan>[
                    TextSpan(
                      text: 'R\$ $kLimit',
                      style: TextStyle(
                        color: kLimitColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
      ],
      onTap: () => Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 400),
          child: const CreditScreen(),
        ),
      ),
    );
  }
}
