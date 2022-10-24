import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/theme/app_colors.dart';
import 'package:nubank_clone/widgets/nu_input_field.dart';

class TransferScreen extends StatelessWidget {
  TransferScreen({super.key});

  final valueTextController = MoneyMaskedTextController(
    leftSymbol: r'R$ ',
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 50,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close, color: AppColors.secondaryText),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.qr_code, color: AppColors.primary),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Qual é o valor da transferência?',
                style: Theme.of(context).textTheme.headline4,
              ),
              const SizedBox(height: 15),
              Text.rich(
                TextSpan(
                  text: 'Saldo disponível em conta ',
                  style: Theme.of(context).textTheme.bodyText2,
                  children: [
                    TextSpan(
                      text: 'R\$ $kBalance',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32),
              NuInputField(
                autoFocus: true,
                textInputType: TextInputType.number,
                controller: valueTextController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
