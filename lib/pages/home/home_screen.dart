import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/mocked_values.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/pages/charge/charge_screen.dart';
import 'package:nubank_clone/pages/deposit/deposit_screen.dart';
import 'package:nubank_clone/pages/home/cards/account_card.dart';
import 'package:nubank_clone/pages/home/cards/credit_card.dart';
import 'package:nubank_clone/pages/home/cards/insurance_card.dart';
import 'package:nubank_clone/pages/home/cards/investments_card.dart';
import 'package:nubank_clone/pages/home/cards/loan_card.dart';
import 'package:nubank_clone/pages/home/widgets/discover_card.dart';
import 'package:nubank_clone/pages/home/widgets/text_card.dart';
import 'package:nubank_clone/pages/loan/loan_screen.dart';
import 'package:nubank_clone/pages/payment/payment_screen.dart';
import 'package:nubank_clone/pages/pix/pix_screen.dart';
import 'package:nubank_clone/pages/recharge/recharge_screen.dart';
import 'package:nubank_clone/pages/refer/refer_screen.dart';
import 'package:nubank_clone/pages/transfer/transfer_screen.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
import 'package:nubank_clone/widgets/circle_button.dart';
import 'package:nubank_clone/widgets/label_button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _cards = [
    const CreditCard(),
    const LoanCard(),
    const InvestmentsCard(),
    const InsuranceCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [AppColors.primary, Colors.white],
          stops: [0.5, 0.5],
        ),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(context),
                _body(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _header(BuildContext context) {
    final state = Provider.of<AppState>(context);

    return Container(
      color: AppColors.primary,
      padding: const EdgeInsets.fromLTRB(18, 20, 16, 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleButton(BootstrapIcons.person, () {}),
              Row(
                children: [
                  IconButton(
                    icon: Icon(
                      state.viewValues
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.white,
                    ),
                    onPressed: state.switchView,
                  ),
                  IconButton(
                    icon: const Icon(Icons.help_outline, color: Colors.white),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.forward_to_inbox_outlined,
                      color: Colors.white,
                    ),
                    onPressed: () => context.showBottomSheet(
                      const ReferScreen(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Olá, ${MockedValues.username}',
            style: Theme.of(context)
                .textTheme
                .titleMedium
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AccountCard(),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                LabelButton(
                  'Pix',
                  NuIcons.rewards_ic_empty_state_other,
                  onPressed: () => context.showBottomSheet(const PixScreen()),
                ),
                LabelButton(
                  'Pagar',
                  NuIcons.ic_savings_global_action_pay,
                  onPressed: () => context.showBottomSheet(
                    const PaymentScreen(),
                  ),
                ),
                LabelButton(
                  'Transferir',
                  NuIcons.ic_savings_global_action_transfer_out,
                  onPressed: () => context.showBottomSheet(TransferScreen()),
                ),
                LabelButton(
                  'Depositar',
                  NuIcons.ic_savings_global_action_transfer_in,
                  onPressed: () => context.showBottomSheet(
                    const DepositScreen(),
                  ),
                ),
                LabelButton(
                  'Empréstimos',
                  NuIcons.nuds_ic_personal_loan,
                  onPressed: () => context.push(
                    const LoanScreen(),
                  ),
                ),
                LabelButton(
                  'Recarga de celular',
                  NuIcons.ic_phone,
                  onPressed: () => context.showBottomSheet(RechargeScreen()),
                ),
                LabelButton(
                  'Cobrar',
                  NuIcons.nuds_ic_request_money,
                  onPressed: () => context.showBottomSheet(ChargeScreen()),
                ),
                LabelButton(
                  'Doação',
                  NuIcons.nuds_ic_personal_loan,
                  onPressed: () {},
                ),
                LabelButton(
                  'Encontrar atalhos',
                  NuIcons.help,
                  onPressed: () {},
                  tag: 'Dica',
                ),
                const SizedBox(width: 20),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: DecoratedBox(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: AppColors.labelButton,
              ),
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      children: [
                        const Icon(
                          NuIcons.ic_card_nu,
                          color: AppColors.text,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Meus cartões',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                const SizedBox(width: 24),
                TextCard(
                  text: 'Você tem R\$ ${MockedValues.loan} disponíveis para ',
                  highlightText: 'empréstimo.',
                  onTap: () => context.push(
                    const LoanScreen(),
                  ),
                ),
                TextCard(
                  text: 'Conquiste planos futuros: conheça as opções para ',
                  highlightText: 'guardar dinheiro.',
                  onTap: () {},
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Divider(height: 2, thickness: 0.5),
          ..._cards,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Text(
              'Descubra mais',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  const SizedBox(width: 24),
                  DiscoverCard(
                    title: 'WhatsApp',
                    content:
                        'Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.',
                    buttonText: 'Quero conhecer',
                    isNew: true,
                    onTap: () {},
                  ),
                  DiscoverCard(
                    title: 'Indique seus amigos',
                    content:
                        'Mostre aos seus amigos como é fácil ter uma vida sem burocracia.',
                    buttonText: 'Indicar amigos',
                    onTap: () => context.showBottomSheet(const ReferScreen()),
                  ),
                  const SizedBox(width: 14),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
