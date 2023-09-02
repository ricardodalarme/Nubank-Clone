import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/pages/easyinvest/easyinvest_screen.dart';
import 'package:nubank_clone/pages/home/widgets/main_card.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
import 'package:nubank_clone/widgets/filled_chip.dart';

class InvestmentsCard extends StatelessWidget {
  const InvestmentsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Investimentos',
      [
        Text(
          'A revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital.',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(fontWeight: FontWeight.w500),
        ),
        const SizedBox(height: 15),
        const FilledChip('Conhecer'),
      ],
      icon: MdiIcons.signal,
      onTap: () => context.push(
        const EasyInvestScreen(),
      ),
    );
  }
}
