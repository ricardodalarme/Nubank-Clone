import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/account/components/historic_card.dart';
import 'package:nubank_clone/ui/screens/credit/components/credit_menu.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class CreditScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(NuIcons.nuds_ic_chevron_left, color: kSecondaryTextColor),
          onPressed: () => MyRouter.popPage(context),
        ),
        actions: [
          IconButton(
            icon: Icon(NuIcons.nuds_ic_search, color: kSecondaryTextColor),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(NuIcons.help, color: kSecondaryTextColor),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 560,
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Fatura atual',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(height: 13),
                        Text(
                          'R\$ $kInvoce',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(color: kInvoiceColor),
                        ),
                        SizedBox(height: 5),
                        RichText(
                          text: TextSpan(
                            text: 'Limite disponível ',
                            style: Theme.of(context).textTheme.bodyText2,
                            children: <TextSpan>[
                              TextSpan(
                                text: 'R\$ $kLimit',
                                style: TextStyle(
                                  color: kLimitColor,
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
                          decoration: BoxDecoration(
                            color: kLimitColor,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(10)),
                          ),
                        ),
                        SizedBox(height: 1),
                        Container(width: 8, height: 50, color: kInvoiceColor),
                        SizedBox(height: 1),
                        Container(
                          width: 8,
                          height: 150,
                          decoration: BoxDecoration(
                            color: kNextInvoiceColor,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 35),
            Container(height: 0.3, color: kLineColor),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CreditMenu(
                      'Pagar fatura', NuIcons.ic_savings_global_action_pay),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  CreditMenu('Resumo de faturas', NuIcons.nuds_ic_list),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  CreditMenu('Ajustar limites', NuIcons.cc_ic_limit_adjustment),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  CreditMenu('Cartão virtual', NuIcons.ic_virtual_card),
                  Container(width: 0.5, height: 100, color: kLineColor),
                  CreditMenu(
                      'Bloquear cartão', NuIcons.ic_virtual_card_blocked),
                  Container(width: 0.3, height: 100, color: kLineColor),
                  CreditMenu('Indicar amigos', NuIcons.ic_refer_friend),
                  SizedBox(width: 20),
                ],
              ),
            ),
            Container(height: 0.3, color: kLineColor),
            Container(
              color: kLabelButtonColor,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  HistoricCard('Pagamento recebido', 'Você pagou R\$ 50,00',
                      Mdi.cubeSend),
                  HistoricCard('Supermecado', 'Ricardo Dalarme', Mdi.cubeSend),
                  HistoricCard(
                      'Transferência enviada', 'Ricardo Dalarme', Mdi.cubeSend),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
