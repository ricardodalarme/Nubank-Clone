import 'package:flutter/material.dart';
import 'package:nubank_clone/core/app_state.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/block/block_screen.dart';
import 'package:nubank_clone/ui/screens/charge/charge_screen.dart';
import 'package:nubank_clone/ui/screens/deposit/deposit_screen.dart';
import 'package:nubank_clone/ui/screens/loan/loan_screen.dart';
import 'package:nubank_clone/ui/screens/old_home/cards/account_card.dart';
import 'package:nubank_clone/ui/screens/old_home/cards/credit_card.dart';
import 'package:nubank_clone/ui/screens/old_home/cards/easynvest_card.dart';
import 'package:nubank_clone/ui/screens/old_home/cards/google_card.dart';
import 'package:nubank_clone/ui/screens/old_home/cards/insurance_card.dart';
import 'package:nubank_clone/ui/screens/old_home/cards/loan_card.dart';
import 'package:nubank_clone/ui/screens/old_home/cards/rewards_card.dart';
import 'package:nubank_clone/ui/screens/old_home/components/menu_button.dart';
import 'package:nubank_clone/ui/screens/payment/payment_screen.dart';
import 'package:nubank_clone/ui/screens/pix/pix_screen.dart';
import 'package:nubank_clone/ui/screens/recharge/recharge_screen.dart';
import 'package:nubank_clone/ui/screens/refer/refer_screen.dart';
import 'package:nubank_clone/ui/screens/transfer/transfer_screen.dart';
import 'package:nubank_clone/ui/shared/circle_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

class OldHomeScreen extends StatelessWidget {
  final _cards = [
    CreditCard(),
    AccountCard(),
    LoanCard(),
    InsuranceCard(),
    RewardsCard(),
    EasynvestCard(),
    GoogleCard(),
  ];

  @override
  Widget build(BuildContext context) {
    final state = Provider.of<AppState>(context);

    return Container(
      color: kPrimaryColor,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(16, 18, 16, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Olá, $kUsername',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Row(
                            children: [
                              CircleButton(
                                state.viewValues
                                    ? NuIcons.ic_cc_balance_invisible
                                    : NuIcons.ic_cc_balance_visible,
                                () {
                                  state.switchView();
                                },
                              ),
                              CircleButton(NuIcons.nuds_ic_settings, () {}),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 24),
                      Expanded(
                        child: SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(children: _cards),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, bottom: 16),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    MenuButton(
                      'Pix',
                      NuIcons.rewards_ic_empty_state_other,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, PixScreen()),
                    ),
                    MenuButton(
                      'Pagar',
                      NuIcons.ic_savings_global_action_pay,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, PaymentScreen()),
                    ),
                    MenuButton(
                      'Indicar amigos',
                      NuIcons.ic_refer_friend,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, ReferScreen()),
                    ),
                    MenuButton(
                      'Transferir',
                      NuIcons.ic_savings_global_action_transfer_out,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, TransferScreen()),
                    ),
                    MenuButton(
                      'Depositar',
                      NuIcons.ic_savings_global_action_transfer_in,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, DepositScreen()),
                    ),
                    MenuButton(
                      'Empréstimos',
                      NuIcons.nuds_ic_personal_loan,
                      onTap: () => Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 400),
                              child: LoanScreen())),
                    ),
                    MenuButton('Cartão virtual', NuIcons.ic_virtual_card),
                    MenuButton('Recarga de celular', NuIcons.ic_phone,
                        onTap: () => MyRouter.showBottomSheet(
                            context, RechargeScreen())),
                    MenuButton(
                        'Ajustar limite', NuIcons.cc_ic_limit_adjustment),
                    MenuButton(
                      'Bloquear cartão',
                      NuIcons.ic_virtual_card_blocked,
                      onTap: () => MyRouter.showBottomSheet(
                        context,
                        BlockScreen(),
                        isScrollControlled: false,
                      ),
                    ),
                    MenuButton(
                      'Cobrar',
                      NuIcons.nuds_ic_request_money,
                      onTap: () =>
                          MyRouter.showBottomSheet(context, ChargeScreen()),
                    ),
                    MenuButton('Doação', NuIcons.nuds_ic_personal_loan),
                    MenuButton('Me ajuda', NuIcons.help),
                    SizedBox(width: 8),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
