import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/easyinvest/easyinvest_screen.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';

class EasynvestCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Investimento Easynvest',
      NuIcons.ic_yield,
      [
        Text(
          'Conheça a Easynvest e invista com taxa zero de corretagem e sem burocracias!',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(height: 15),
        NuOutlinedButton('Conhecer'),
      ],
      onTap: () => Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 400),
              child: EasyInvestScreen())),
    );
  }
}
