import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/deposit/deposit_screen.dart';
import 'package:nubank_clone/ui/screens/home/cards/account_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/credit_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/easynvest_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/google_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/insurance_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/loan_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/rewards_card.dart';
import 'package:nubank_clone/ui/screens/home/components/menu_button.dart';
import 'package:nubank_clone/ui/screens/refer/refer_screen.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:provider/provider.dart';
import 'components/circle_button.dart';
import 'package:nubank_clone/core/app_state.dart';

class HomeScreen extends StatelessWidget {
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
    var state = Provider.of<AppState>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Olá, Ricardo',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
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
                    SizedBox(height: 25),
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
              padding: const EdgeInsets.only(left: 15, bottom: 15),
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  MenuButton('Pix', NuIcons.rewards_ic_empty_state_other),
                  MenuButton('Pagar', NuIcons.ic_savings_global_action_pay),
                  MenuButton(
                    'Indicar amigos',
                    NuIcons.ic_refer_friend,
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          isDismissible: false,
                          context: context,
                          builder: (context) => ReferScreen());
                    },
                  ),
                  MenuButton('Transferir',
                      NuIcons.ic_savings_global_action_transfer_out),
                  MenuButton('Depositar',
                      NuIcons.ic_savings_global_action_transfer_in,
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          isDismissible: false,
                          context: context,
                          builder: (context) => DepositScreen());
                    },
                  ),
                  MenuButton('Empréstimos', NuIcons.nuds_ic_personal_loan),
                  MenuButton('Cartão virtual', NuIcons.ic_virtual_card),
                  MenuButton('Recarga de celular', NuIcons.ic_phone),
                  MenuButton('Ajustar limite', NuIcons.cc_ic_limit_adjustment),
                  MenuButton(
                      'Bloquear cartão', NuIcons.ic_virtual_card_blocked),
                  MenuButton('Cobrar', NuIcons.nuds_ic_request_money),
                  MenuButton('Doação', NuIcons.nuds_ic_personal_loan),
                  MenuButton('Me ajuda', NuIcons.help),
                  SizedBox(width: 8),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
