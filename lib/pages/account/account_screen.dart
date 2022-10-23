import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/pages/account/widgets/account_menu.dart';
import 'package:nubank_clone/pages/account/widgets/historic_card.dart';
import 'package:nubank_clone/pages/charge/charge_screen.dart';
import 'package:nubank_clone/pages/deposit/deposit_screen.dart';
import 'package:nubank_clone/pages/loan/loan_screen.dart';
import 'package:nubank_clone/pages/payment/payment_screen.dart';
import 'package:nubank_clone/pages/transfer/transfer_screen.dart';
import 'package:nubank_clone/theme/colors.dart';
import 'package:nubank_clone/theme/icons.dart';
import 'package:nubank_clone/widgets/label_button.dart';
import 'package:page_transition/page_transition.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

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
            color: kSecondaryTextColor,
          ),
          onPressed: () => MyRouter.popPage(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Mdi.helpCircleOutline, color: kSecondaryTextColor),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    'Saldo disponível',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2
                        ?.copyWith(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 7),
                  Text(
                    'R\$ $kBalance',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                  const SizedBox(height: 50),
                  AccountMenu(
                    'Dinheiro guardado',
                    Text(
                      'R\$ $kSaved',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          ?.copyWith(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    BootstrapIcons.piggy_bank,
                  ),
                  const SizedBox(height: 38),
                  AccountMenu(
                    'Rendimento total da conta',
                    RichText(
                      text: TextSpan(
                        text: '+R\$ $kIcome',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                              color: kLimitColor,
                              fontWeight: FontWeight.w500,
                            ),
                        children: const <TextSpan>[
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
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelButton(
                      'Depositar',
                      BootstrapIcons.cash,
                      onPressed: () => MyRouter.showBottomSheet(
                        context,
                        const DepositScreen(),
                      ),
                    ),
                    LabelButton(
                      'Pagar',
                      Mdi.barcode,
                      onPressed: () => MyRouter.showBottomSheet(
                        context,
                        const PaymentScreen(),
                      ),
                    ),
                    LabelButton(
                      'Transferir',
                      Mdi.cubeSend,
                      onPressed: () =>
                          MyRouter.showBottomSheet(context, TransferScreen()),
                    ),
                    LabelButton(
                      'Empréstimos',
                      BootstrapIcons.bank,
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
                      'Cobrar',
                      Mdi.messageAlertOutline,
                      onPressed: () =>
                          MyRouter.showBottomSheet(context, ChargeScreen()),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(height: 1, color: kLineColor),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Histórico',
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 30),
            const HistoricCard(
              'Transferência enviada',
              'Ricardo Dalarme de Oliveira Filho',
              Mdi.cubeSend,
            ),
            const HistoricCard(
              'Transferência enviada',
              'Ricardo Dalarme',
              Mdi.cubeSend,
            ),
            const HistoricCard(
              'Transferência enviada',
              'Ricardo Dalarme',
              Mdi.cubeSend,
            ),
          ],
        ),
      ),
    );
  }
}
