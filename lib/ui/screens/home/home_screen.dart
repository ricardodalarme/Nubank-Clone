import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/charge/charge_screen.dart';
import 'package:nubank_clone/ui/screens/deposit/deposit_screen.dart';
import 'package:nubank_clone/ui/screens/home/cards/account_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/credit_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/insurance_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/investments_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/loan_card.dart';
import 'package:nubank_clone/ui/screens/home/components/discover_card.dart';
import 'package:nubank_clone/ui/screens/home/components/text_card.dart';
import 'package:nubank_clone/ui/screens/loan/loan_screen.dart';
import 'package:nubank_clone/ui/screens/payment/payment_screen.dart';
import 'package:nubank_clone/ui/screens/pix/pix_screen.dart';
import 'package:nubank_clone/ui/screens/recharge/recharge_screen.dart';
import 'package:nubank_clone/ui/screens/refer/refer_screen.dart';
import 'package:nubank_clone/ui/screens/transfer/transfer_screen.dart';
import 'package:nubank_clone/ui/shared/circle_button.dart';
import 'package:nubank_clone/ui/shared/label_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';
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
          colors: [kPrimaryColor, Colors.white],
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
      color: kPrimaryColor,
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
                    onPressed: () =>
                        MyRouter.showBottomSheet(context, const ReferScreen()),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 30),
          Text(
            'Ol??, $kUsername',
            style: Theme.of(context)
                .textTheme
                .subtitle1!
                .copyWith(color: Colors.white, fontWeight: FontWeight.w600),
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
                  onPressed: () =>
                      MyRouter.showBottomSheet(context, const PixScreen()),
                ),
                LabelButton(
                  'Pagar',
                  NuIcons.ic_savings_global_action_pay,
                  onPressed: () =>
                      MyRouter.showBottomSheet(context, const PaymentScreen()),
                ),
                LabelButton(
                  'Transferir',
                  NuIcons.ic_savings_global_action_transfer_out,
                  onPressed: () =>
                      MyRouter.showBottomSheet(context, TransferScreen()),
                ),
                LabelButton(
                  'Depositar',
                  NuIcons.ic_savings_global_action_transfer_in,
                  onPressed: () =>
                      MyRouter.showBottomSheet(context, const DepositScreen()),
                ),
                LabelButton(
                  'Empr??stimos',
                  NuIcons.nuds_ic_personal_loan,
                  onPressed: () => Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 400),
                      child: const LoanScreen(),
                    ),
                  ),
                ),
                LabelButton(
                  'Recarga de celular',
                  NuIcons.ic_phone,
                  onPressed: () =>
                      MyRouter.showBottomSheet(context, RechargeScreen()),
                ),
                LabelButton(
                  'Cobrar',
                  NuIcons.nuds_ic_request_money,
                  onPressed: () =>
                      MyRouter.showBottomSheet(context, ChargeScreen()),
                ),
                LabelButton(
                  'Doa????o',
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
                color: kLabelButtonColor,
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
                          color: kTextColor,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Meus cart??es',
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyText2!.copyWith(
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
                  text: 'Voc?? tem R\$ $kLoan dispon??veis para ',
                  highlightText: 'empr??stimo.',
                  onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      duration: const Duration(milliseconds: 400),
                      child: const LoanScreen(),
                    ),
                  ),
                ),
                TextCard(
                  text: 'Conquiste planos futuros: conhe??a as op????es para ',
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
                  .headline6!
                  .copyWith(fontWeight: FontWeight.w500),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              children: [
                const SizedBox(width: 24),
                DiscoverCard(
                  title: 'WhatsApp',
                  content:
                      'Pagamentos seguros, r??pidos e sem tarifa. A experi??ncia Nubank sem nem sair da conversa.',
                  buttonText: 'Quero conhecer',
                  isNew: true,
                  onTap: () {},
                ),
                DiscoverCard(
                  title: 'Indique seus amigos',
                  content:
                      'Mostre aos seus amigos como ?? f??cil ter uma vida sem burocracia.',
                  buttonText: 'Indicar amigos',
                  onTap: () =>
                      MyRouter.showBottomSheet(context, const ReferScreen()),
                ),
                const SizedBox(width: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
