import 'package:flutter/material.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/payment/components/payment_menu.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => MyRouter.popPage(context),
            icon: const Icon(NuIcons.close, color: kSecondaryTextColor),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const PaymentMenu(
                  'Pagar com Pix',
                  'Leia um QR Code ou cole o código.',
                  NuIcons.rewards_ic_empty_state_other,
                ),
                Container(height: 1, color: kUnviewColor),
                const PaymentMenu(
                  'Pagar fatura do cartão',
                  'Libera o limite do seu Cartão de Crédito.',
                  NuIcons.ic_savings_global_action_pay,
                ),
                Container(height: 1, color: kUnviewColor),
                const PaymentMenu(
                  'Pagar um boleto',
                  'Contas de luz, água, etc.',
                  NuIcons.nuds_ic_receipt,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
