import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/pages/easyinvest/easyinvest_screen.dart';
import 'package:nubank_clone/pages/old_home/widgets/main_card.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
import 'package:nubank_clone/widgets/nu_outlined_button.dart';

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
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: 15),
        const NuOutlinedButton('Conhecer'),
      ],
      onTap: () => context.push(
        const EasyInvestScreen(),
      ),
    );
  }
}
