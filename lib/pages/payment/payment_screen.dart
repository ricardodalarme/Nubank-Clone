import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/pages/payment/widgets/payment_menu.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';

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
            onPressed: () => context.pop(),
            icon: const Icon(NuIcons.close, color: AppColors.secondaryText),
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
                Container(height: 1, color: AppColors.unview),
                const PaymentMenu(
                  'Pagar fatura do cartão',
                  'Libera o limite do seu Cartão de Crédito.',
                  NuIcons.ic_savings_global_action_pay,
                ),
                Container(height: 1, color: AppColors.unview),
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
