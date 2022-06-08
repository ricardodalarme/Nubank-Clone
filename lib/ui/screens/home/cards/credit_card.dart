import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/screens/credit/credit_screen.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    final viewValues = Provider.of<AppState>(context).viewValues;

    return MainCard(
      'Cartão de Crédito',
      [
        Text(
          'Fatura atual',
          style: Theme.of(context)
              .textTheme
              .subtitle2!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 13),
        if (!viewValues)
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
                style: Theme.of(context).textTheme.headline5,
              ),
              const SizedBox(height: 5),
              Text(
                'Limite disponível R\$ $kLimit',
                style: Theme.of(context)
                    .textTheme
                    .caption!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ],
          ),
      ],
      icon: NuIcons.ic_card_nu,
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
