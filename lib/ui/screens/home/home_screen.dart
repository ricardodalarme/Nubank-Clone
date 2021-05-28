import 'package:flutter/material.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';
import 'package:nubank_clone/ui/screens/home/components/numenu.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                    'Olá, $kUsername',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            NuIcons.ic_cc_balance_visible,
                            color: Colors.white,
                          )),
                      IconButton(
                        onPressed: null,
                        icon: Icon(Icons.settings, color: Colors.white),
                        splashColor: kSecondaryColor,
                        splashRadius: 50,
                      ),
                    ],
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      NuCard(
                          'Cartão de Crédito', NuIcons.ic_card_nu, Container()),
                      NuCard('Conta', NuIcons.ic_money_coins, Container()),
                      NuCard('Empréstimo', NuIcons.nuds_ic_personal_loan,
                          Container()),
                      NuCard(
                          'Seguro de vida', Icons.card_giftcard, Container()),
                      NuCard('Rewards', Icons.card_giftcard, Container()),
                      NuCard('Investimento Easynvest', NuIcons.ic_yield,
                          Container()),
                      NuCard('Google Pay', NuIcons.ic_card_nu, Container()),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NuMenu('Pix', NuIcons.rewards_ic_empty_state_other),
                    NuMenu('Pagar', NuIcons.ic_savings_global_action_pay),
                    NuMenu('Indicar amigos', NuIcons.ic_refer_friend),
                    NuMenu('Transferir',
                        NuIcons.ic_savings_global_action_transfer_out),
                    NuMenu('Depositar',
                        NuIcons.ic_savings_global_action_transfer_in),
                    NuMenu('Empréstimos', NuIcons.nuds_ic_personal_loan),
                    NuMenu('Cartão virtual', NuIcons.ic_virtual_card),
                    NuMenu('Recarga de celular', NuIcons.ic_phone),
                    NuMenu('Ajustar limite', NuIcons.cc_ic_limit_adjustment),
                    NuMenu('Bloquear cartão', NuIcons.ic_virtual_card_blocked),
                    NuMenu('Cobrar', NuIcons.nuds_ic_request_money),
                    NuMenu('Doação', NuIcons.nuds_ic_personal_loan),
                    NuMenu('Me ajuda', NuIcons.help),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
