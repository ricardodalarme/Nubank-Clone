import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/easyinvest/easyinvest_screen.dart';
import 'package:nubank_clone/ui/screens/old_home/components/main_card.dart';
import 'package:nubank_clone/ui/shared/nu_outlined_button.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';

class EasynvestCard extends StatelessWidget {
  const EasynvestCard({super.key});

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
        const SizedBox(height: 15),
        const NuOutlinedButton('Conhecer'),
      ],
      onTap: () => Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.rightToLeft,
          duration: const Duration(milliseconds: 400),
          child: const EasyInvestScreen(),
        ),
      ),
    );
  }
}
