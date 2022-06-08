import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class EasyInvestScreen extends StatelessWidget {
  const EasyInvestScreen({super.key});

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
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        elevation: 0,
        backgroundColor: kPrimaryColor,
        child: Icon(Mdi.arrowRight),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/easyinvest.jpg',
                  height: 118,
                ),
                const SizedBox(height: 47),
                Text(
                  r'É fácil juntar: R$ 1 = 1 ponto',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 10),
                Text(
                  'Acumule pontos que não expiram sempre que você usar seu cartão de crédito.',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(height: 1.35, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 25),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/easyinvest.jpg',
                  height: 118,
                ),
                const SizedBox(height: 47),
                Text(
                  'Viaje pra onde você quiser',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 10),
                Text(
                  'Resgate passagens aéreas c ompradas em qualquer site.',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(height: 1.35, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 25),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/easyinvest.jpg',
                  height: 118,
                ),
                const SizedBox(height: 47),
                Text(
                  'Ganha recompensas',
                  style: Theme.of(context).textTheme.headline4,
                ),
                const SizedBox(height: 10),
                Text(
                  'Compre nos parceiros e depois use seus pontos para tirar esses gastos da sua fatura.',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(height: 1.35, fontWeight: FontWeight.w300),
                ),
                const SizedBox(height: 25),
              ],
            ),
            SizedBox(
              height: 80,
              child: Text(
                'Experimente por 30 dias grátis'.toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .bodyText2!
                    .copyWith(color: kPrimaryColor),
              ),
            )
          ],
        ),
      ),
    );
  }
}
