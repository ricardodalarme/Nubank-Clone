import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/constants/app_images.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/theme/app_colors.dart';
import 'package:nubank_clone/theme/icons.dart';

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
            color: AppColors.secondaryText,
          ),
          onPressed: () => MyRouter.popPage(context),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        elevation: 0,
        backgroundColor: AppColors.primary,
        child: Icon(Mdi.arrowRight),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              AppImages.easyinvest,
              height: 118,
            ),
            const SizedBox(height: 47),
            Text(
              'Invista sem taxas e burocracia!',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 10),
            Text(
              'Estamos convidando alguns clientes do Nubank para serem os primeiros a fazer parte desta revolução roxa nos investimentos, e você é um deles!',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(height: 1.35, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 25),
            Text(
              'Além de não pagar nada para abrir a conta, você terá taxa zero na corretagem de ações!',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(height: 1.35, fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ),
    );
  }
}
