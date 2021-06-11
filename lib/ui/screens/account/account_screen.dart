import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/account/components/account_menu.dart';
import 'package:nubank_clone/ui/screens/account/components/historic_card.dart';
import 'package:nubank_clone/ui/shared/label_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class AccountScreen extends StatelessWidget {
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
            icon: Icon(Mdi.helpCircleOutline, color: kSecondaryTextColor),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Saldo disponível',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 7),
                  Text(
                    'R\$ $kBalance',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  SizedBox(height: 50),
                  AccountMenu(
                    'Dinheiro guardado',
                    Text(
                      'R\$ $kSaved',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2!
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    BootstrapIcons.piggy_bank,
                  ),
                  SizedBox(height: 38),
                  AccountMenu(
                    'Rendimento total da conta',
                    RichText(
                      text: TextSpan(
                        text: '+R\$ $kIcome',
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                              color: kLimitColor,
                              fontWeight: FontWeight.w500,
                            ),
                        children: <TextSpan>[
                          TextSpan(
                            text: ' este mês',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: kTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Mdi.signal,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelButton('Depositar', BootstrapIcons.cash),
                    LabelButton('Pagar', Mdi.barcode),
                    LabelButton('Transferir', Mdi.cubeSend),
                    LabelButton('Empréstimos', BootstrapIcons.bank),
                    LabelButton('Cobrar', Mdi.messageAlertOutline),
                    SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(height: 1, color: kLineColor),
            SizedBox(height: 50),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text('Histórico',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontWeight: FontWeight.w500)),
            ),
            SizedBox(height: 30),
            HistoricCard('Transferência enviada',
                'Ricardo Dalarme de Oliveira Filho', Mdi.cubeSend),
            HistoricCard(
                'Transferência enviada', 'Ricardo Dalarme', Mdi.cubeSend),
            HistoricCard(
                'Transferência enviada', 'Ricardo Dalarme', Mdi.cubeSend),
          ],
        ),
      ),
    );
  }
}
