import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/screens/home/cards/account_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/credit_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/easynvest_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/google_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/insurance_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/loan_card.dart';
import 'package:nubank_clone/ui/screens/home/cards/rewards_card.dart';
import 'package:nubank_clone/ui/screens/home/components/nu_menu.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

import 'components/circle_button.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _menu = [
    NuMenu('Pix', NuIcons.rewards_ic_empty_state_other),
    NuMenu('Pagar', NuIcons.ic_savings_global_action_pay),
    NuMenu('Indicar amigos', NuIcons.ic_refer_friend),
    NuMenu('Transferir', NuIcons.ic_savings_global_action_transfer_out),
    NuMenu('Depositar', NuIcons.ic_savings_global_action_transfer_in),
    NuMenu('Empréstimos', NuIcons.nuds_ic_personal_loan),
    NuMenu('Cartão virtual', NuIcons.ic_virtual_card),
    NuMenu('Recarga de celular', NuIcons.ic_phone),
    NuMenu('Ajustar limite', NuIcons.cc_ic_limit_adjustment),
    NuMenu('Bloquear cartão', NuIcons.ic_virtual_card_blocked),
    NuMenu('Cobrar', NuIcons.nuds_ic_request_money),
    NuMenu('Doação', NuIcons.nuds_ic_personal_loan),
    NuMenu('Me ajuda', NuIcons.help),
  ];

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Olá, Ricardo',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      CircleButton(NuIcons.ic_cc_balance_visible),
                      CircleButton(Icons.settings),
                    ],
                  )
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(children: _cards),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: _menu),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
