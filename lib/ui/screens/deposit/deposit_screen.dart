import 'package:flutter/material.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/deposit/components/deposit_menu.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class DepositScreen extends StatelessWidget {
  const DepositScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => MyRouter.popPage(context),
            icon: const Icon(NuIcons.close, color: kSecondaryTextColor),
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Como você quer depositar na sua conta do Nubank',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          const SizedBox(height: 10),
          const DepositMenu(
            'Pix',
            'Sem custo e cai na hora, mesmo de madrugada e fim de semana.',
            NuIcons.rewards_ic_empty_state_other,
          ),
          const DepositMenu(
            'Boleto',
            'Sem custo e pode levar 3 dias úteis para o dinheiro cair.',
            NuIcons.ic_savings_global_action_pay,
          ),
          const DepositMenu(
            'TED/DOC',
            'Pode ter custo e cai somente em horário comercial de dias úteis.',
            NuIcons.nuds_ic_receipt,
          ),
          const DepositMenu(
            'Trazer seu salário',
            'Receba todo mês direto aqui na sua conta, sem custo.',
            NuIcons.ic_savings_global_action_transfer_in,
          ),
        ],
      ),
    );
  }
}
