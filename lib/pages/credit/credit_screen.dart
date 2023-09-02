import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/mocked_values.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/pages/account/widgets/historic_card.dart';
import 'package:nubank_clone/pages/credit/widgets/credit_menu.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';

class CreditScreen extends StatelessWidget {
  const CreditScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            NuIcons.nuds_ic_chevron_left,
            color: AppColors.secondaryText,
          ),
          onPressed: () => context.pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              NuIcons.nuds_ic_search,
              color: AppColors.secondaryText,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(NuIcons.help, color: AppColors.secondaryText),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 560,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fatura atual',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(height: 13),
                        Text(
                          'R\$ ${MockedValues.invoice}',
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall
                              ?.copyWith(color: AppColors.invoice),
                        ),
                        const SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            text: 'Limite disponível ',
                            style: Theme.of(context).textTheme.bodyMedium,
                            children: const <TextSpan>[
                              TextSpan(
                                text: 'R\$ ${MockedValues.limit}',
                                style: TextStyle(
                                  color: AppColors.limit,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 8,
                          height: 300,
                          decoration: const BoxDecoration(
                            color: AppColors.limit,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                          ),
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: 8,
                          height: 50,
                          color: AppColors.invoice,
                        ),
                        const SizedBox(height: 1),
                        Container(
                          width: 8,
                          height: 150,
                          decoration: const BoxDecoration(
                            color: AppColors.nextInvoice,
                            borderRadius: BorderRadius.vertical(
                              bottom: Radius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 35),
            Container(height: 0.3, color: AppColors.line),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CreditMenu(
                    'Pagar fatura',
                    NuIcons.ic_savings_global_action_pay,
                  ),
                  Container(width: 0.3, height: 100, color: AppColors.line),
                  const CreditMenu('Resumo de faturas', NuIcons.nuds_ic_list),
                  Container(width: 0.3, height: 100, color: AppColors.line),
                  const CreditMenu(
                    'Ajustar limites',
                    NuIcons.cc_ic_limit_adjustment,
                  ),
                  Container(width: 0.3, height: 100, color: AppColors.line),
                  const CreditMenu('Cartão virtual', NuIcons.ic_virtual_card),
                  Container(width: 0.3, height: 100, color: AppColors.line),
                  const CreditMenu(
                    'Bloquear cartão',
                    NuIcons.ic_virtual_card_blocked,
                  ),
                  Container(width: 0.3, height: 100, color: AppColors.line),
                  const CreditMenu('Indicar amigos', NuIcons.ic_refer_friend),
                ],
              ),
            ),
            Container(height: 0.3, color: AppColors.line),
            const ColoredBox(
              color: AppColors.labelButton,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  HistoricCard(
                    'Pagamento recebido',
                    r'Você pagou R$ 50,00',
                    MdiIcons.cubeSend,
                  ),
                  HistoricCard(
                    'Supermercado',
                    'Ricardo Dalarme',
                    MdiIcons.cubeSend,
                  ),
                  HistoricCard(
                    'Transferência enviada',
                    'Ricardo Dalarme',
                    MdiIcons.cubeSend,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
