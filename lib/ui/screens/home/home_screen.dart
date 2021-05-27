import 'package:flutter/material.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/screens/home/components/nucard.dart';
import 'package:nubank_clone/ui/screens/home/components/numenu.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

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
          padding: EdgeInsets.all(10),
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
                            Icons.remove_red_eye,
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
                      NuCard('Cartão de Crédito', Icons.card_giftcard,
                          Container()),
                      NuCard('Conta', Icons.card_giftcard, Container()),
                      NuCard('Empréstimo', Icons.card_giftcard, Container()),
                      NuCard(
                          'Seguro de vida', Icons.card_giftcard, Container()),
                      NuCard('Rewards', Icons.card_giftcard, Container()),
                      NuCard('Investimento Easynvest', Icons.card_giftcard,
                          Container()),
                      NuCard('Google Pay', Icons.card_giftcard, Container()),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NuMenu('Pix', Icons.card_giftcard),
                    NuMenu('Pagar', Icons.card_giftcard),
                    NuMenu('Indicar amigos', Icons.card_giftcard),
                    NuMenu('Transferir', Icons.card_giftcard),
                    NuMenu('Depositar', Icons.card_giftcard),
                    NuMenu('Empréstimos', Icons.card_giftcard),
                    NuMenu('Cartão virtual', Icons.card_giftcard),
                    NuMenu('Recarga de celular', Icons.card_giftcard),
                    NuMenu('Ajustar limite', Icons.card_giftcard),
                    NuMenu('Bloquear cartão', Icons.card_giftcard),
                    NuMenu('Cobrar', Icons.card_giftcard),
                    NuMenu('Doação', Icons.card_giftcard),
                    NuMenu('Me ajuda', Icons.card_giftcard),
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
